package fr.testudo.spacecorsair.mod;

/** Converts a pixel centre in 1024-pixel hull art to a ship-local offset. */
final class ModSpriteSpace {
    private ModSpriteSpace() {}

    static float local(float px, float size) {
        return ((px + 0.5f) / 1024f - 0.5f) * size;
    }
}
