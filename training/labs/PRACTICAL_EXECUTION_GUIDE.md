# EchoTrace — Practical Laboratory Execution Guide

**25 specialist laboratory modules.** The modules in this folder are structured exercises, not all independently validated native forensic labs. Use the synthetic SQLite dataset for reproducible SQL correlation practice and the supplied CSV evidence for incident timeline exercises.

## Environment
- Offline/isolated workstation
- SQLite 3 for the synthetic SQL case
- CSV viewer or Python standard-library CSV tools
- SHA-256 utility
- No live credentials, external targets or destructive tools

## Evidence integrity
Work on copies. Record filename, acquisition time, SHA-256, source, analyst, and every transformation. Do not invent missing artifacts or findings.

## SQL practice
```bash
sqlite3 echotrace.db < training/sql/schema.sql
sqlite3 echotrace.db < training/sql/seed.sql
sqlite3 -header -column echotrace.db "SELECT tx_id,commit_state FROM transactions ORDER BY event_time_utc;"
sqlite3 -header -column echotrace.db "SELECT c.backup_id,c.dataset_id,c.status,r.present,r.observed_bytes,r.integrity_state FROM backup_catalog c LEFT JOIN repository_objects r ON c.object_id=r.object_id;"
```

## Network, storage and backup practice
Correlate `artifacts/orchestration/orch_events.csv`, `artifacts/network/management_flows.csv`, `artifacts/storage/storage_events.csv`, `artifacts/monitoring/service_health.csv`, and the backup inventory. Mark missing files as evidence gaps rather than assuming their contents.

## Submission standard
For every lab submit: evidence register, UTC timeline, answers with record IDs, competing hypotheses, confidence, limitations, and safe recovery decision.

## Readiness
The labs are training modules in development. SQL Server native LSN/MDF/LDF, Windows EVTX, memory images, cloud and hypervisor labs require additional corresponding artifacts before full technical execution can be claimed.
