# Track 02 — IoT Device Forensics

**Purpose:** investigate fictional IoT gateways, sensors and embedded Linux devices affected by an enterprise outage.

## Lab IOT-01 — Gateway Evidence Intake
Acquire supplied synthetic gateway audit, device inventory and telemetry exports; document device identity, clock basis, firmware version, acquisition method and hash.

## Lab IOT-02 — Sensor Timeline and Clock Drift
Correlate gateway and sensor timestamps; distinguish source time from collector UTC; report offset uncertainty.

## Lab IOT-03 — Firmware and Configuration Integrity
Compare supplied firmware/configuration metadata against an approved baseline. Metadata alone does not prove executable compromise.

## Lab IOT-04 — Network Isolation and Outage Impact
Correlate device heartbeats, gateway loss and upstream service availability. Distinguish a sensor failure from a gateway or storage outage.

## Lab IOT-05 — IoT Forensic Recovery
Propose evidence-preserving restoration, signed firmware validation, credential rotation through authorized procedures, and device re-enrollment tests.

## Evidence status
`evidence/iot_gateway_events.csv` and `evidence/iot_device_inventory.csv` are synthetic exercise datasets. No raw firmware images or physical device acquisitions are included. The firmware lab is therefore metadata analysis until such evidence is added.

## Student deliverables
IoT evidence register, clock-normalized event timeline, integrity assessment, and recovery recommendation.
