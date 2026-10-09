# ET-LAB-07 — Network and Management-Plane Forensics

**Program:** EchoTrace — Digital Forensic Technology
**Level:** Advanced / Senior
**Environment:** Fictional isolated enterprise, synthetic evidence

## Incident situation
The Northstar Research Systems outage has produced conflicting operational records and uncertain recovery status. The analyst is assigned a focused forensic investigation into network and management-plane forensics.

## Forensic objective
Correlate management communications and assess evidence limits without assuming intent.

## Evidence to examine
Network flows and orchestration job records. Use available files from the EchoTrace artifacts collection. If a named artifact family has not yet been published, record it as **pending evidence**, not as an observed finding.

## Practical tasks
1. Create an evidence register including origin, timestamp basis and preservation priority.
2. Identify relevant records and distinguish observations from interpretations.
3. Correlate at least two independent sources when available; otherwise explain the evidence gap.
4. Test two competing explanations using read-only forensic methods or isolated copies.
5. Document evidence limitations, confidence and next acquisition needs.
6. Explain the preservation and recovery implications.

## Investigation questions
1. What is the earliest material event relevant to this assignment?
2. Which exact artifact and record support that observation?
3. What independent evidence corroborates or contradicts the finding?
4. What cannot be concluded from the supplied evidence?
5. What safe forensic or recovery action should follow?

## Ten resolution routes
Consider primary logs, database transactions, filesystem metadata, storage/snapshots, backups, network flows, identity, application telemetry, independent evidence and isolated recovery validation. Mark non-applicable routes N/A with a reason; do not invent ten conclusions.

## Required deliverable
**Network correlation matrix**, with artifact paths, record IDs, normalized UTC, reproducible method, observations, competing hypotheses, confidence, limitations and recommendations.

## Grading
Evidence integrity 30%; technical accuracy 25%; cross-source reasoning 20%; recovery implications 15%; professional reporting 10%.

## Instructor material
Expected answers and record-level solution keys are withheld from this public student laboratory. Do not place HTB flags or the private writeup in this file.
