# LAB-07 — Backup Catalog Forensics

**Role:** Backup forensic analyst

## Objective
Test whether backup metadata accurately represents recoverable data.

## Tasks
- Compare backup_catalog.csv with repository_inventory.csv.
- Identify catalog entries whose underlying objects are absent, incomplete, or mismatched.
- Compare expected and observed object sizes.
- Identify the age of the last restore test.
- Explain why a successful backup job is not equivalent to a successful restore.

## Deliverable
Backup Trust Assessment.

## Pass standard
Each recovery claim must be supported by repository evidence, not catalog status alone.
