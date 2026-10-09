#!/usr/bin/env python3
"""Read-only structural checks for EchoTrace Sherlock student evidence."""
from pathlib import Path
import csv
import hashlib
import sys

ROOT = Path(__file__).resolve().parents[1]
CORE = {
    "storage": "artifacts/storage/storage_events.csv",
    "service": "artifacts/monitoring/service_health.csv",
    "orchestration": "artifacts/orchestration/orch_events.csv",
    "network": "artifacts/network/management_flows.csv",
    "catalog": "artifacts/backup/backup_catalog.csv",
    "repository": "artifacts/backup/repository_inventory.csv",
}
REQUIRED = [
    "submission/student/CASE_BRIEF.md",
    "submission/student/QUESTIONS.md",
    *CORE.values(),
]
errors = []
for rel in REQUIRED:
    path = ROOT / rel
    if not path.is_file():
        errors.append(f"MISSING {rel}")
        continue
    data = path.read_bytes()
    if not data:
        errors.append(f"EMPTY {rel}")
        continue
    print(f"SHA256 {hashlib.sha256(data).hexdigest()}  {rel}")
    if rel.endswith(".csv"):
        try:
            with path.open(newline="", encoding="utf-8-sig") as handle:
                reader = csv.DictReader(handle)
                if not reader.fieldnames or any(not x for x in reader.fieldnames):
                    errors.append(f"INVALID HEADER {rel}")
                rows = list(reader)
                if not rows:
                    errors.append(f"NO DATA ROWS {rel}")
                if any(None in row for row in rows):
                    errors.append(f"IRREGULAR COLUMNS {rel}")
                print(f"ROWS {len(rows)}  {rel}")
        except (OSError, UnicodeError, csv.Error) as exc:
            errors.append(f"INVALID CSV {rel}: {exc}")

# Detect accidental instructor paths in public checkout.
for path in ROOT.rglob("*"):
    if path.is_file() and (path.relative_to(ROOT).parts[0] == "instructor"
                           or "submission/instructor/" in path.as_posix()):
        errors.append(f"PRIVATE MATERIAL PATH {path.relative_to(ROOT)}")

print("\nStructural validation:", "FAIL" if errors else "PASS")
for error in errors:
    print("ERROR:", error, file=sys.stderr)
sys.exit(1 if errors else 0)
