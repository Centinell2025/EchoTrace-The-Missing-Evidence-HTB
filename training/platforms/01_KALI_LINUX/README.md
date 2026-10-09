# Track 01 — Kali Linux Forensic Workstation

**Purpose:** train forensic technicians to examine acquired evidence from an isolated Kali Linux workstation. Kali is the **analysis platform**, not an attack target.

## Lab KALI-01 — Evidence Intake and Integrity
**Input:** copies of EchoTrace CSV and SQL files.
**Procedure:** inventory files, calculate SHA-256, record acquisition provenance, verify unchanged copies.
**Safe commands:**
```bash
find artifacts training/sql -type f -print0 | sort -z | xargs -0 sha256sum > evidence_manifest.sha256
sha256sum -c evidence_manifest.sha256
```
Run from repository root. The manifest is an exercise output, not an immutable chain-of-custody system.

**Questions:** What was collected? Which files changed? What does a hash prove and what does it not prove?
**Deliverable:** evidence manifest and custody record.

## Lab KALI-02 — SQLite Forensic Reconstruction
**Input:** `training/sql/schema.sql` and `training/sql/seed.sql`.
```bash
sqlite3 /tmp/echotrace_lab.db < training/sql/schema.sql
sqlite3 /tmp/echotrace_lab.db < training/sql/seed.sql
sqlite3 -header -column /tmp/echotrace_lab.db "SELECT * FROM transactions ORDER BY event_time_utc;"
```
**Questions:** Which states are committed, rolled back or unknown? Can the supplied SQLite dataset prove native SQL Server LSN ordering?
**Deliverable:** transaction-state forensic report.

## Lab KALI-03 — Cross-Source Timeline
**Input:** monitoring, storage and orchestration CSVs.
**Procedure:** normalize UTC timestamps, preserve original IDs, correlate early storage degradation with subsequent management actions and service failures.
**Questions:** Which event precedes the outage? Which hypothesis remains unproven?
**Deliverable:** defensible timeline with uncertainty.

## Lab KALI-04 — Backup Trust
**Input:** backup catalog and repository inventory.
**Procedure:** join objects by ID; compare expected and observed size, hash state, and read tests. Design a clean-room restore check.
**Deliverable:** backup validation matrix.

## Lab KALI-05 — Forensic Recovery Command
**Input:** enterprise architecture and prior lab findings.
**Procedure:** draft preservation, isolation, validation and dependency-aware recovery sequence. Do not execute destructive commands.
**Deliverable:** forensic recovery runbook.

**Scope:** no unauthorized scanning, exploitation or malware execution.
