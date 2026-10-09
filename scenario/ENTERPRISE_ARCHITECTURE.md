# Fictional Enterprise Architecture

## Critical systems

| Asset | Function | Segment | Critical dependency |
| --- | --- | --- | --- |
| ID-01 | Primary identity service | Identity | AUTH-DB |
| ID-02 | Secondary identity service | Identity | AUTH-DB |
| APP-01 | Primary business application | Application | ID, DB-01, STORAGE-01 |
| APP-02 | Secondary application node | Application | ID, DB-01, STORAGE-01 |
| DB-01 | Transaction database | Data | STORAGE-01 |
| STORAGE-01 | Primary enterprise storage | Storage | storage metadata + network |
| BKP-01 | Backup coordinator | Recovery | STORAGE-02 + catalog |
| STORAGE-02 | Backup repository | Recovery | independent recovery network |
| ORCH-01 | Approved automation/orchestration | Management | privileged service identity |
| SOC-01 | SOC / forensic workstation | Security | telemetry collectors |

## Design principle

The scenario intentionally contains dependencies capable of producing cascading symptoms. Students must distinguish a root cause from downstream failures.
