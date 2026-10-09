# LAB-04 — Service Dependency Mapping

**Role:** Forensic reliability engineer

## Objective
Reconstruct how a fault or targeted change can propagate through the enterprise.

## Tasks
- Build a directed dependency graph from ASSET_INVENTORY.csv.
- Overlay service-health events.
- Mark P1/P2/P3 recovery priorities.
- Identify circular or hidden recovery dependencies.
- Propose an order in which dependencies should be validated before applications return to service.

## Deliverable
Annotated dependency graph and recovery prerequisites.

## Pass standard
The recovery order must follow technical dependencies rather than business visibility alone.
