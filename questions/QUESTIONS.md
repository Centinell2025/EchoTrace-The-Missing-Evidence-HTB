# EchoTrace — 15 Senior / Insane Investigation Questions

For every material answer cite the exact artifact, record ID, normalized UTC time, reasoning, and confidence.

1. What is the earliest defensible precursor to the incident, and why is it more significant than earlier background noise?
2. Reconstruct the dependency chain that transformed the initial condition into a multi-system outage.
3. Which service failed first from the user's perspective, and which underlying component had already degraded?
4. Which actions were performed by legitimate orchestration, and which actions fall outside its documented baseline?
5. Does the timing and sequencing support human administration, conventional scripting, AI-assisted automation, or is the evidence insufficient to distinguish them? Defend the conclusion.
6. Identify the first evidence that the incident was targeted rather than a random hardware or software failure.
7. Determine which datasets became unavailable, which were altered, and which have evidence of permanent loss.
8. Which expected backup restore points are missing, inconsistent, or unverifiable?
9. Does the presence of a backup catalog entry prove that a recoverable backup exists? Validate the strongest available recovery point.
10. Reconstruct the storage and backup timeline using independent evidence sources.
11. Identify evidence that survives the failure of the primary logging or management plane and explain its forensic value.
12. Determine whether the organization can recover without reintroducing the incident condition. What must be validated first?
13. Build a forensic recovery order for identity, storage, database, applications, and backup services. Explain the dependency logic.
14. Classify each critical asset and dataset as Operational, Degraded, Unavailable, Recoverable, Unverified, or Lost, with confidence.
15. Deliver the senior incident decision: root cause, outage scope, data-loss scope, automation/AI assessment, backup trust, preservation priorities, containment, and recovery plan.

**Evidence discipline:** speed is not proof of AI. Missing files are not automatically permanent data loss. A backup entry is not proof of a restorable backup.
