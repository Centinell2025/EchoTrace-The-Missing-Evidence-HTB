# EchoTrace — Advanced Forensic Engineering Examination

**Scope:** The six incident CSVs provided with the Sherlock. This extension assesses analytical reasoning, not only flag lookups. All times UTC; cite exact event/flow IDs.

## A. Causality and timeline (25 points)
A1. Reconstruct a nine-event minimum timeline covering healthy baseline, first storage warning, first unapproved orchestration query, metadata change, identity degradation, first application outage, protective read-only transition, and database read-only state. Distinguish source event time from any rounded network timestamp.
A2. Evaluate two rival hypotheses: (H1) JOB-X91 initiated the entire outage; (H2) storage degradation began independently and the job may have affected subsequent conditions. Provide evidence for and against each and a confidence statement.
A3. Explain why an accepted metadata operation is not equivalent to proof of a durable change or malicious intent.

## B. Automation and network correlation (20 points)
B1. Match JOB-X91 O003–O009 to N003–N009 by source, target and UTC second. Identify what cannot be established by second-resolution flow logs.
B2. Compare approved JOB-4401 with JOB-X91, including target diversity, approval field and inter-request intervals.
B3. Identify what additional telemetry would be required to distinguish scheduled script, compromised orchestration, human-operated tooling, and AI-assisted operation. Do not assert attribution without evidence.

## C. Backup integrity and recoverability (25 points)
C1. Join all backup catalog entries with repository inventory by object ID. Create a five-row table with catalog status, present, size difference, hash state, read test, and restore recommendation.
C2. Calculate the observed-to-expected ratio for FINANCE-SHARE and express as a percentage. State why catalog success is insufficient.
C3. Explain why a matching object hash and successful read test do not by themselves prove an application-consistent, restorable backup.
C4. Design a clean-room restore validation plan with preservation and rollback gates.

## D. Cross-platform and IoT evidence (15 points)
D1. Use the IoT device inventory and gateway events to distinguish a device-side clock offset from collector timestamps. Identify the operational risk of merging them without normalization.
D2. Compare synthetic Windows and Linux event-like exports with enterprise service health. Clearly state the limits of CSV representations versus native EVTX, MFT/USN and journald data.

## E. Expert reporting (15 points)
E1. Write a 250–400 word incident conclusion distinguishing observation, inference, hypothesis and unknown.
E2. Prioritize three next acquisitions and three non-destructive recovery validations, with business justification.

## Marking principles
100 total points. Full credit requires exact evidence citations, reproducible methodology, independent corroboration, competing hypotheses and explicit limitations. Incorrect definitive claims of AI attribution, external exfiltration or irreversible data loss lose evidence-quality points.

**Note:** This is an advanced instructor-assessed extension, not ten additional HTB flag questions. Independent playtesting is required to calibrate difficulty.
