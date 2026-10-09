# EchoTrace — Investigation Questions for 100 Scenarios

Use these question families with the corresponding ET scenario. Each student answer must cite evidence.

## ET-001–015 — SQL & Database Forensics
For each SQL/database scenario answer:
1. What is the earliest database artifact that materially changes the incident timeline?
2. Which transaction, identity, job, object, LSN/log sequence, backup component, or privilege change is relevant?
3. What can be reconstructed from database evidence and what remains unavailable?
4. Which independent artifact corroborates or contradicts the database finding?
5. What preservation or recovery action should occur next, and why?

Additional senior requirement: distinguish logical deletion, physical loss, rollback, corruption, unavailable data, and recoverable data.

## ET-016–025 — Windows & Filesystem Forensics
1. What is the earliest supported execution or file-system event?
2. Which Windows/NTFS artifact establishes it?
3. How does a second artifact change confidence?
4. What attribution limitation remains?
5. What evidence must be acquired before remediation?

## ET-026–035 — Identity Forensics
1. What is the normal identity baseline?
2. Which authentication/directory event deviates from it?
3. What does the event prove and not prove about the human operator?
4. What downstream access or dependency is corroborated?
5. What identity containment preserves the investigation?

## ET-036–040 — Memory Forensics
1. Which volatile observation is most time-sensitive?
2. What process/session/network relationship can be reconstructed?
3. Which finding requires disk/network corroboration?
4. What could disappear after shutdown?
5. What acquisition priority is justified?

## ET-041–050 — Network Forensics
1. Which communication is relevant to the incident?
2. How is the source/destination mapped to an enterprise asset?
3. What do flow/session/application metadata prove?
4. What content or intent cannot be established?
5. How should time, volume, and independent telemetry be correlated?

## ET-051–060 — Storage Forensics
1. What is the earliest storage degradation or metadata change?
2. Is it precursor, root-cause candidate, protective response, or downstream symptom?
3. Which data remains logically recoverable?
4. Which storage metadata must be preserved?
5. What repair action would risk destroying evidence?

## ET-061–070 — Backup Forensics
1. Does the catalog entry correspond to a present repository object?
2. Do size/hash/readability observations support integrity?
3. Is the chain complete enough for restoration?
4. What is the strongest validated recovery point?
5. What clean-room test is required before production restore?

## ET-071–078 — Virtualization / Cloud / Container
1. Which control-plane or workload artifact establishes the event?
2. What is the relationship between host, VM/container, identity, and storage?
3. Which snapshot/object/log can be trusted?
4. What evidence exists outside the affected workload?
5. What recovery sequence preserves both evidence and service integrity?

## ET-079–085 — Automation & AI Assessment
1. What is the documented automation baseline?
2. Which cadence, concurrency, targeting, or adaptation differs from baseline?
3. Is the evidence consistent with human action, deterministic scripting, adaptive automation, or multiple possibilities?
4. What evidence would actually be required to support an AI-assisted attribution?
5. What is the strongest defensible conclusion and confidence?

## ET-086–099 — Forensic Operations & Recovery Engineering
1. What evidence is most at risk?
2. What chain-of-custody/integrity requirement applies?
3. Which conflicting observations must be reconciled?
4. What recovery action is safe only after a validation gate?
5. What conclusion should be communicated to technical and executive stakeholders?

## ET-100 — Full Enterprise Forensic Capstone
1. Establish evidence provenance.
2. Normalize the master timeline.
3. Identify the earliest precursor.
4. Separate root-cause candidates from symptoms.
5. Reconstruct identity and management-plane activity.
6. Reconstruct SQL/data-layer impact.
7. Determine storage and backup integrity.
8. Scope unavailable, damaged, recoverable, unverified, and lost data.
9. Assess automation/AI claims.
10. Identify independent surviving evidence.
11. Define preservation priorities.
12. Define containment.
13. Engineer the recovery order.
14. Define validation gates and post-recovery monitoring.
15. Deliver a defensible executive incident decision.
