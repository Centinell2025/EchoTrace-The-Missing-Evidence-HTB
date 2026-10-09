# EchoTrace — The Missing Evidence

**Difficulty target:** Insane (proposed; not yet independently calibrated)
**Category:** DFIR
**Environment:** synthetic Northstar Research Systems, 2026-09-28 UTC.

A storage and business application outage coincided with an unapproved automation sequence. A backup catalog reports successful jobs, but repository inventory may disagree. Investigate without presuming AI involvement, malicious intent, exfiltration or irreversible data loss.

## Evidence
- `storage_events.csv`: storage subsystem events
- `service_health.csv`: service availability
- `orch_events.csv`: orchestration audit
- `management_flows.csv`: network management flows
- `backup_catalog.csv`: catalog claims
- `repository_inventory.csv`: repository observations

## Rules
Treat all timestamps as UTC. Cite exact record IDs and answer only what the evidence proves. Do not execute changes to any infrastructure. Submit concise answers to ten questions, plus a timeline and short limitations note. The case is entirely fictional.
