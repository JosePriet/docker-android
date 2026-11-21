#!/usr/bin/env python3
"""Rebuild the calibration, scenarios, full matchup tables and illustrated report."""

import argparse
import os
import tempfile


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    modes = parser.add_mutually_exclusive_group()
    modes.add_argument("--check", action="store_true", help="validate existing outputs")
    modes.add_argument(
        "--summarize", action="store_true", help="regenerate report tables and PNGs from existing CSVs"
    )
    args = parser.parse_args()
    from calibrate import calibrate
    from grid import grid, stations
    from model import OUT
    from scenarios import scenarios
    from verify import read_grid, verify

    OUT.mkdir(exist_ok=True, parents=True)
    if not (args.check or args.summarize):
        params = calibrate()[0]
        print("Fit:", params, flush=True)
        stations(params)
        scenarios(params)
        grid(params)
    frame = read_grid()
    if not args.check:
        with tempfile.TemporaryDirectory() as cache:
            os.environ.setdefault("MPLCONFIGDIR", cache)
            os.environ.setdefault("XDG_CACHE_HOME", cache)
            from results import report

            report(frame)
    verify(frame)


if __name__ == "__main__":
    main()
