-- Synthetic records, fictional Northstar Research Systems
INSERT OR IGNORE INTO assets VALUES ('DB-01','transaction database','critical'),('BKP-01','backup coordinator','critical'),('ORCH-01','automation host','high');
INSERT OR IGNORE INTO datasets VALUES ('FINANCE-SHARE','DB-01',4294967296,'partially_unreadable'),('RESEARCH-DATA','DB-01',12884901888,'unavailable'),('TRANSACTIONS','DB-01',8589934592,'read_only');
INSERT OR IGNORE INTO principals VALUES ('svc_backup','service','backup'),('svc_orch','service','health_checks'),('db_admin','person_account','database_admin');
INSERT OR IGNORE INTO audit_events VALUES
('SQL-A001','2026-09-28T01:30:00Z','svc_backup','BKP-01','catalog_sync','success','JOB-4400'),
('SQL-A002','2026-09-28T02:12:01Z','svc_orch','DB-01','metadata_read','success','JOB-X91'),
('SQL-A003','2026-09-28T02:13:41Z','svc_orch','DB-01','retention_reference_update','accepted','JOB-X91'),
('SQL-A004','2026-09-28T02:24:51Z','db_admin','DB-01','transaction_health_check','timeout','CHK-01');
INSERT OR IGNORE INTO transactions VALUES
('TX-001','2026-09-28T02:08:00Z','TRANSACTIONS','write_batch','committed','SQL-A001'),
('TX-002','2026-09-28T02:24:51Z','TRANSACTIONS','write_batch','unknown','SQL-A004'),
('TX-003','2026-09-28T02:26:03Z','FINANCE-SHARE','metadata_update','rolled_back',NULL);
INSERT OR IGNORE INTO backup_catalog VALUES
('BKP1002','TRANSACTIONS','success',8589934592,'obj-db-0927'),
('BKP1003','FINANCE-SHARE','success',4294967296,'obj-fin-0928'),
('BKP1004','RESEARCH-DATA','success',12884901888,'obj-rd-0928');
INSERT OR IGNORE INTO repository_objects VALUES
('obj-db-0927',1,8589934592,'match'),
('obj-fin-0928',1,1073741824,'mismatch'),
('obj-rd-0928',0,0,'unavailable');
