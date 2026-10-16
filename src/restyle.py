"""Restyle a sprite toward Space Corsair's original look:
pre-rendered metal, top-left light, panel seams, ambient occlusion, dark rim, muted hull + one accent colour."""
import numpy as np, cv2, colorsys
from PIL import Image

def load(path, work=512):
    im = Image.open(path).convert('RGBA')
    bb = im.getbbox(); im = im.crop(bb)
    s = work * 0.92 / max(im.size)
    im = im.resize((max(1, round(im.width * s)), max(1, round(im.height * s))), Image.LANCZOS)
    c = Image.new('RGBA', (work, work), (0, 0, 0, 0)); c.alpha_composite(im, ((work - im.width) // 2, (work - im.height) // 2))
    a = np.asarray(c).astype(np.float32) / 255.0
    return a[..., :3], a[..., 3]

def rgb_to_hsv(rgb):
    hsv = cv2.cvtColor((rgb * 255).astype(np.uint8), cv2.COLOR_RGB2HSV_FULL).astype(np.float32)
    return hsv[..., 0] / 255.0, hsv[..., 1] / 255.0, hsv[..., 2] / 255.0

def hsv_to_rgb(h, s, v):
    hsv = np.stack([h * 255, s * 255, v * 255], -1).clip(0, 255).astype(np.uint8)
    return cv2.cvtColor(hsv, cv2.COLOR_HSV2RGB_FULL).astype(np.float32) / 255.0

def panel_seams(mask, rng, size, density=1.0):
    """Mirrored kitbash plates (raised/recessed rectangles) + sparse seams + vents, like the original hulls' greebles.
    Returns (plate_height, seam_mask, vents_mask)."""
    h, w = mask.shape
    plate = np.zeros((h, w), np.float32); seam = np.zeros((h, w), np.float32); vents = np.zeros((h, w), np.float32)
    inner = cv2.erode((mask > 0.5).astype(np.uint8), np.ones((7, 7), np.uint8)) > 0
    ys, xs = np.nonzero(inner)
    if len(ys) == 0: return plate, seam, vents
    y0, y1 = ys.min(), ys.max(); cx = w // 2
    span = xs.max() - xs.min()
    for k in range(int(28 * density)):          # plates
        pw = int(size * rng.uniform(0.03, 0.11)); ph = int(size * rng.uniform(0.03, 0.14))
        px = int(rng.uniform(0.0, 0.45) * span); py = int(rng.uniform(y0, y1 - ph))
        dh = rng.choice([-1, 1]) * rng.uniform(0.04, 0.10)
        for x in (cx + px, cx - px - pw):
            plate[py:py + ph, max(0, x):max(0, x + pw)] += dh
    step = max(14, int(size * 0.09))               # sparse horizontal seams
    y = y0 + int(rng.integers(step // 2, step))
    while y < y1:
        row = np.nonzero(inner[y])[0]
        if len(row) > 6:
            half = (row.max() - row.min()) / 2
            length = int(half * rng.uniform(0.3, 0.8)); x_in = int(rng.uniform(0, half * 0.3))
            seam[y, cx + x_in:cx + length] = 1; seam[y, cx - length:cx - x_in] = 1
        y += int(step * rng.uniform(0.8, 1.8))
    for k in range(int(rng.integers(2, 6) * density)):   # vent grilles
        vx = int(rng.uniform(0.04, 0.3) * span); vy = int(rng.uniform(y0, y1))
        vw = int(size * rng.uniform(0.015, 0.03)); vh = int(size * rng.uniform(0.03, 0.06))
        for yy in range(vy, min(h - 1, vy + vh), 4):
            vents[yy:yy + 2, cx + vx:cx + vx + vw] = 1; vents[yy:yy + 2, cx - vx - vw:cx - vx] = 1
    plate *= inner; seam *= inner; vents *= inner
    return plate, seam, vents

def restyle(path, out, final=256, base_hue=None, base_sat=0.12, base_val=0.62, accent_keep=0.75, accent_hue=None,
            relight=1.0, seams=True, seed=1, work=512, darken=1.0, outline=True, flatten=0.55, density=1.0, spec_k=0.55, ambient=0.32, rim=0.07, grain_k=0.0, keep_albedo=False):
    rgb, a = load(path, work)
    mask = (a > 0.5).astype(np.float32)
    rng = np.random.default_rng(seed)
    h, s, v = rgb_to_hsv(rgb)
    # --- albedo regrade: hull -> muted metal, saturated bits -> accent
    accent = np.clip((s - 0.35) / 0.35, 0, 1) * np.clip((v - 0.25) / 0.3, 0, 1)
    hv = v.copy()
    # flatten cartoon value bands toward a mid metal tone (keeps detail but kills flat-fill look)
    hv = hv * (1 - flatten) + (0.5 + 0.5 * (hv - hv[mask > 0].mean())) * flatten
    hull_h = np.full_like(h, base_hue if base_hue is not None else 0.6)
    hull = hsv_to_rgb(hull_h, np.full_like(s, base_sat), np.clip(hv * base_val / 0.5 * 0.5, 0, 1))
    ah = h if accent_hue is None else np.full_like(h, accent_hue)
    acc = hsv_to_rgb(ah, np.clip(s * accent_keep + 0.15, 0, 1), np.clip(v * 0.95, 0, 1))
    alb = hull * (1 - accent[..., None]) + acc * accent[..., None]
    if keep_albedo:
        alb = rgb * base_val
    # --- height map: bevelled silhouette + luminance detail
    dist = cv2.distanceTransform((mask * 255).astype(np.uint8), cv2.DIST_L2, 5)
    bevel = np.clip(dist / (work * 0.035), 0, 1); bevel = np.sin(bevel * np.pi / 2)
    lum = cv2.bilateralFilter(v.astype(np.float32), 9, 0.08, 5)
    lum = cv2.bilateralFilter(lum, 9, 0.08, 5)
    detail = lum - cv2.GaussianBlur(lum, (0, 0), 6)
    detail = np.sign(detail) * np.clip(np.abs(detail) - 0.035, 0, None)   # drop low-amplitude paint texture, keep line art
    height = bevel * 1.0 + detail * 1.1 + cv2.GaussianBlur(lum, (0, 0), 14) * 0.25
    seam = vents = plate = np.zeros_like(mask)
    if seams:
        plate, seam, vents = panel_seams(mask, rng, work, density)
        height += plate * 1.6 - cv2.GaussianBlur(seam, (0, 0), 0.8) * 0.3 - vents * 0.25
    # fine brushed-metal grain
    grain = cv2.GaussianBlur(rng.standard_normal(mask.shape).astype(np.float32), (0, 0), 1.0)
    height += grain * grain_k * mask
    height = cv2.GaussianBlur(height, (0, 0), 0.9)
    gx = cv2.Sobel(height, cv2.CV_32F, 1, 0, ksize=3); gy = cv2.Sobel(height, cv2.CV_32F, 0, 1, ksize=3)
    n = np.dstack([-gx * 6, -gy * 6, np.ones_like(gx)]); n /= np.linalg.norm(n, axis=2, keepdims=True)
    L = np.array([-0.55, -0.6, 0.58]); L /= np.linalg.norm(L)   # top-left light (image y points down)
    diff = np.clip((n * L).sum(2), 0, 1)
    H = L + np.array([0, 0, 1.0]); H /= np.linalg.norm(H)
    spec = np.clip((n * H).sum(2), 0, 1) ** 28
    # ambient occlusion: edges + cavities
    ao = 1 - 0.45 * (1 - np.clip(dist / (work * 0.06), 0, 1)) * 0.6
    cav = np.clip(cv2.GaussianBlur(height, (0, 0), 4) - height, 0, None)
    ao *= np.clip(1 - cav * 2.5, 0.45, 1)
    lit = alb * (ambient + 0.95 * diff[..., None]) * ao[..., None] + spec[..., None] * np.array([0.9, 0.92, 1.0]) * spec_k
    col = rgb * (1 - relight) + lit * relight
    col *= darken
    # seam highlight line just below each seam (bevelled plate edge)
    if seams:
        hl = np.roll(seam, 1, axis=0) * (1 - seam)
        col = col * (1 - 0.35 * seam[..., None]) + 0.12 * hl[..., None]
    # accent lights glow a bit
    col = np.clip(col + acc * accent[..., None] * 0.18, 0, 1)
    out_a = a.copy()
    rgba = np.dstack([col, out_a])
    if outline:
        ring = cv2.dilate((a > 0.25).astype(np.uint8), np.ones((5, 5), np.uint8)).astype(np.float32)
        ring = cv2.GaussianBlur(ring, (0, 0), 0.8)
        under = np.dstack([np.full_like(col, rim), ring])
        alpha = out_a + ring * (1 - out_a)
        c = (rgba[..., :3] * out_a[..., None] + under[..., :3] * ring[..., None] * (1 - out_a[..., None])) / np.maximum(alpha[..., None], 1e-6)
        rgba = np.dstack([c, alpha])
    img = Image.fromarray((np.clip(rgba, 0, 1) * 255).astype(np.uint8), 'RGBA').resize((final, final), Image.LANCZOS)
    img.save(out)
    return img
