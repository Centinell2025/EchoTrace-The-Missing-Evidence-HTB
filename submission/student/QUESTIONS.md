# EchoTrace — Sherlock Questions

Answer using the six supplied CSV files. Use the exact requested format.

1. What is the first recorded storage warning **after the healthy 02:08 baseline**? **Format:** `EVENT_ID|YYYY-MM-DDTHH:MM:SSZ`
2. Which unapproved orchestration job is associated with the rapid management queries? **Format:** `JOB_ID`
3. Which orchestration identity and source host issued the unapproved sequence? **Format:** `IDENTITY|SOURCE`
4. What was the first target in the unapproved sequence? **Format:** `HOST`
5. Which orchestration event records an accepted metadata operation against STORAGE-01? **Format:** `EVENT_ID`
6. Which service-health event first records degraded authentication on ID-01? **Format:** `EVENT_ID`
7. Which storage event records the protective read-only transition? **Format:** `EVENT_ID`
8. Which application went down first according to service health? **Format:** `HOST|EVENT_ID`
9. Which backup ID is present but has a size mismatch and failed read test? **Format:** `BACKUP_ID`
10. Which backup ID reports catalog success but has no repository object present? **Format:** `BACKUP_ID`

**Additional analyst note (not a flag):** Explain why the dataset cannot prove AI involvement, attacker attribution, exfiltration, or permanent data loss.
