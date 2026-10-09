# Track 03 — Windows & Linux Enterprise Forensics

**Purpose:** investigate enterprise outages using Windows and Linux evidence with a focus on forensic technology and recovery engineering.

## Lab WL-01 — Windows Event and Service Timeline
**Input:** `evidence/windows_event_like.csv`.
Correlate service failures and identity dependency alerts. This is a synthetic event-like CSV, **not** a native EVTX file.
**Deliverable:** Windows incident timeline.

## Lab WL-02 — Windows NTFS Evidence Recovery
**Input:** `evidence/ntfs_usn_like.csv`.
Analyze file change reasons, source timestamps and record IDs. The file is synthetic, not raw MFT/USN.
**Deliverable:** filesystem timeline and evidence limitations.

## Lab WL-03 — Linux Journal and Service Recovery
**Input:** `evidence/linux_journal_like.csv`.
Reconstruct systemd service dependency failures, read-only transitions and restart behavior.
**Deliverable:** Linux service failure timeline.

## Lab WL-04 — Cross-Platform Identity and Network Correlation
Combine Windows event-like records, Linux journal-like records, storage events and management flows.
**Deliverable:** UTC master timeline and competing root-cause hypotheses.

## Lab WL-05 — Enterprise Recovery Validation
Design evidence preservation and isolated restore tests for identity, storage, SQL and applications. Include rollback gates and monitoring.
**Deliverable:** cross-platform forensic recovery runbook.

## Evidence status
These datasets are synthetic training exports; native Windows EVTX, memory images and Linux disk images are not yet supplied. Students must not claim to have examined those native artifacts.
