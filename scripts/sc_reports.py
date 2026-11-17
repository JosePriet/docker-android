#!/usr/bin/env python3
"""Fix list 4B (owner 2026-11-17): download the lobby service's stored reports and session samples as CSV files.

Usage: python3 scripts/sc_reports.py [key_file] [out_dir]
  key_file defaults to /mnt/project-files/space-corsair/keys/dev.key (the DEV key; never in git)
  out_dir defaults to out/reports
The same data is on the owner's page: https://sc-rendezvous.spacecs-coop.workers.dev/admin
"""
import csv
import json
import os
import sys
import time
import urllib.parse
import urllib.request

SERVICE = "https://sc-rendezvous.spacecs-coop.workers.dev"
REPORT_COLS = ["at", "by", "about", "text"]
SAMPLE_COLS = ["at", "ver", "level", "ship", "refit", "laser", "missile", "peakShot", "expShot", "peakDps", "expDps", "ratio", "flagged", "pvp"]


def main():
    key_file = sys.argv[1] if len(sys.argv) > 1 else "/mnt/project-files/space-corsair/keys/dev.key"
    out_dir = sys.argv[2] if len(sys.argv) > 2 else "out/reports"
    key = open(key_file).read().strip()
    req = urllib.request.Request(SERVICE + "/admin/data", data=urllib.parse.urlencode({"key": key}).encode(), method="POST")
    with urllib.request.urlopen(req, timeout=30) as r:
        data = json.load(r)
    os.makedirs(out_dir, exist_ok=True)
    for name, cols in (("reports", REPORT_COLS), ("samples", SAMPLE_COLS)):
        rows = data.get(name, [])
        path = os.path.join(out_dir, name + ".csv")
        with open(path, "w", newline="", encoding="utf-8") as f:
            w = csv.writer(f)
            w.writerow(cols)
            for r in rows:
                w.writerow([time.strftime("%Y-%m-%d %H:%M", time.gmtime(r.get("at", 0) / 1000)) if c == "at" else r.get(c, "") for c in cols])
        print(f"{name}: {len(rows)} rows -> {path}")


if __name__ == "__main__":
    main()
