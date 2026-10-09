# LAB-02 — Outage Triage & Failure Propagation

**Role:** Senior infrastructure forensic analyst

## Objective
Determine the difference between the first user-visible outage and the earliest underlying degradation.

## Tasks
- Analyze service_health.csv and storage_events.csv.
- Identify the earliest precursor.
- Build a dependency chain from storage/identity degradation to application failure.
- Separate symptoms from root-cause candidates.
- Identify at least two plausible competing hypotheses.
- State what additional evidence would discriminate between them.

## Deliverable
Failure Propagation Timeline and dependency diagram.

## Pass standard
The first service that users report as down must not automatically be labeled the root cause.
