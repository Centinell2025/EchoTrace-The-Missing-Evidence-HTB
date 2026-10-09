# SQL Digital Forensics — Synthetic Practice Dataset

This is a **safe, synthetic SQLite training database** for practicing SQL forensics. The `schema.sql` and `seed.sql` scripts can be run in an isolated SQLite environment. They are not SQL Server MDF/LDF files and do not reproduce native SQL Server transaction logs.

## Setup
```bash
sqlite3 echotrace_training.db < training/sql/schema.sql
sqlite3 echotrace_training.db < training/sql/seed.sql
sqlite3 -header -column echotrace_training.db "SELECT * FROM audit_events ORDER BY event_time_utc;"
```

The student should compare audit records, transaction history, backup catalog and repository state. Never assume a backup catalog's success flag establishes restorability.

The SQL Server-specific laboratories require additional synthetic SQL Server-like artifacts or a separate SQL Server lab environment; this SQLite dataset is an introductory forensic correlation exercise, not a substitute for LSN/MDF/LDF analysis.
