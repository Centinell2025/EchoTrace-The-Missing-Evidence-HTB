# EchoTrace — Ten Forensic Resolution Paths per Question

## Objective
Every investigation question across ET-001–ET-100 should support **ten distinct, defensible forensic investigation paths** where applicable. These are not ten arbitrary answers: different evidence sources may converge on one finding, support competing hypotheses, or justify an inconclusive result.

## Ten-path method
1. **Primary event logs** — reconstruct native or clearly labeled synthetic event records.
2. **Database transaction evidence** — inspect SQL transaction/LSN and audit records where relevant.
3. **File-system metadata** — correlate MFT/USN-like records and file timestamps.
4. **Storage and snapshot metadata** — assess volume, RAID/SAN, snapshot and journal evidence.
5. **Backup chain and repository** — test catalog claims against objects and validation.
6. **Network telemetry** — corroborate connections, flow direction, time and volume.
7. **Identity and access evidence** — correlate authenticated identities and permissions.
8. **Application and service telemetry** — establish user-visible impact and dependencies.
9. **Independent surviving evidence** — use SOC mirrors, forensic acquisitions and offline exports.
10. **Recovery validation / competing hypotheses** — test conclusions in isolated recovery copies and state remaining uncertainty.

Not every path applies to every question. Mark non-applicable paths **N/A with reason**, never fabricate evidence to fill a quota.

## Question-by-question worksheet
For each scenario ET-001 through ET-100, and for each investigation question:
- Question ID and precise forensic competency
- Path 01–10
- Evidence artifact / record ID
- Read-only forensic technique
- Observation and normalized UTC
- Finding and confidence
- Alternative explanation
- Limitation or N/A justification
- Preservation and recovery implications

## Scoring rubric
- 30% evidence provenance and reproducibility
- 25% correlation and competing hypotheses
- 20% forensic technical accuracy
- 15% preservation and recovery decision
- 10% professional reporting

**Instructor solution policy:** expected conclusions, specific record mappings, flags and HTB writeups must be held privately. This public document specifies methodology only.

## Example: missing SQL data
For a missing-table incident, the analyst can assess SQL audit, transaction history, application operations, backup chain, snapshot metadata, storage journal, identity changes, network transfer metadata, independent monitoring and isolated restore results. A missing record alone does not establish irreversible loss or exfiltration.
