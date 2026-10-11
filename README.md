# EchoTrace — The Missing Evidence

**Digital Forensics & Incident Response | Blue Team Student Repository**

A fictional enterprise outage investigation. Analyze storage degradation, orchestration activity, network flows, service dependencies and backup integrity using synthetic, read-only evidence. No live targets or production credentials.

> **Status:** Student materials assembled. Independent blind playtest, package integrity verification and HTB review are still pending. Difficulty and acceptance are not guaranteed.

## Sherlock candidate: quick start
1. Read the [student case brief](submission/student/CASE_BRIEF.md).
2. Analyze the **six core CSVs** below on forensic copies; record SHA-256 hashes.
3. Answer the [10 Sherlock questions](submission/student/QUESTIONS.md) in the exact formats requested.
4. Provide a UTC timeline, precise record IDs, evidence citations and a limitations note.
5. The [advanced examination](submission/student/ADVANCED_INVESTIGATION.md) is optional and **not part of the 10 flag questions**.

| Core evidence | File |
|---|---|
| Storage | [storage_events.csv](artifacts/storage/storage_events.csv) |
| Service health | [service_health.csv](artifacts/monitoring/service_health.csv) |
| Orchestration | [orch_events.csv](artifacts/orchestration/orch_events.csv) |
| Network flows | [management_flows.csv](artifacts/network/management_flows.csv) |
| Backup catalog | [backup_catalog.csv](artifacts/backup/backup_catalog.csv) |
| Repository inventory | [repository_inventory.csv](artifacts/backup/repository_inventory.csv) |

**Incident date:** 2026-09-28 UTC. **Fictional organization:** Northstar Research Systems. **Difficulty:** proposed, not independently calibrated.

## Supplemental learning (not part of the Sherlock flags)
The [25 specialist lab modules](training/labs/), [100-scenario catalogue](training/100_FORENSIC_SCENARIOS.md), [SQL practice](training/sql/) and [Kali / IoT / Windows / Linux tracks](training/platforms/) provide additional training. Some are structured exercise outlines rather than fully evidenced standalone labs. See the [execution guide](training/labs/PRACTICAL_EXECUTION_GUIDE.md).

## Forensic standards
Preserve original evidence. Normalize timestamps, identify source records, test alternative explanations and state uncertainty. Do not infer AI involvement, attacker attribution, exfiltration or permanent data loss from insufficient evidence. CSV-based Windows and Linux examples are synthetic representations, **not native forensic acquisitions**.

## For reviewers
The core HTB candidate is the student case brief + 10 questions + 6 CSVs. Instructor solutions and the private writeup are **not included here**. Provide those separately to authorized reviewers using an agreed private channel. Public GitHub access alone does not replace an independently tested student archive or the requested private writeup.

See [Reviewer Guide](REVIEWER_GUIDE.md), [Release Checklist](RELEASE_CHECKLIST.md), [Training Notice](TRAINING_NOTICE.md) and [Educational Purpose](EDUCATIONAL_TRAINING_PURPOSE.md).


---
**Ethical and educational use / Uso ético y educativo:** This is a fictional or simulated defensive cybersecurity training exercise. Test only systems you own or are explicitly authorized to assess. / Ejercicio de ciberseguridad defensiva ficticio o simulado. Realice pruebas solo en sistemas propios o con autorización expresa. See / Consulte [Educational Purpose Notice](EDUCATIONAL_PURPOSE_NOTICE.md).
