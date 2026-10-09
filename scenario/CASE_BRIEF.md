# EchoTrace — Case Brief

**Case ID:** ET-IR-800  
**Organization:** Northstar Research Systems — fictional  
**Canonical time:** UTC  
**Classification:** Critical Outage / Suspected Targeted Activity / Data Loss / Recovery Failure

At 02:14 UTC, monitoring reports intermittent authentication failures. Within minutes, application services begin losing access to shared storage. At 02:31 UTC, the primary business application becomes unavailable. Storage alarms follow, and the backup platform later reports that several expected restore points cannot be validated.

Operations initially classifies the incident as infrastructure failure. The SOC escalates after discovering tightly sequenced administrative and orchestration events across multiple systems.

Some actions occur at intervals and volumes inconsistent with the normal human administrative baseline. However, the organization also uses legitimate automation. Analysts must therefore determine whether the evidence supports malicious automation, AI-assisted targeting, compromised orchestration, ordinary scripts, or coincidental failures.

## Investigation mission

Determine:
- the first technical precursor to the outage;
- the dependency chain behind the cascading failures;
- which systems became unavailable and why;
- what data was lost, inaccessible, damaged, or recoverable;
- whether backup records represent usable recovery points;
- whether the coordinated activity was targeted;
- what evidence supports or contradicts AI-assisted or automated targeting;
- the safest recovery sequence;
- which evidence must be preserved before restoration.

Do not infer motive, AI involvement, or permanent data loss without evidence.
