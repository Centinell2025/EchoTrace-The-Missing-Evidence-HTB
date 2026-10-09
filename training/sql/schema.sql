-- EchoTrace synthetic digital-forensics training database
PRAGMA foreign_keys=ON;
CREATE TABLE IF NOT EXISTS assets(asset_id TEXT PRIMARY KEY,role TEXT NOT NULL,criticality TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS datasets(dataset_id TEXT PRIMARY KEY,asset_id TEXT NOT NULL,expected_bytes INTEGER NOT NULL,state TEXT NOT NULL,FOREIGN KEY(asset_id) REFERENCES assets(asset_id));
CREATE TABLE IF NOT EXISTS principals(principal_id TEXT PRIMARY KEY,kind TEXT NOT NULL,approved_role TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS audit_events(event_id TEXT PRIMARY KEY,event_time_utc TEXT NOT NULL,principal_id TEXT NOT NULL,asset_id TEXT NOT NULL,action TEXT NOT NULL,result TEXT NOT NULL,correlation_id TEXT,FOREIGN KEY(principal_id) REFERENCES principals(principal_id),FOREIGN KEY(asset_id) REFERENCES assets(asset_id));
CREATE TABLE IF NOT EXISTS transactions(tx_id TEXT PRIMARY KEY,event_time_utc TEXT NOT NULL,dataset_id TEXT NOT NULL,operation TEXT NOT NULL,commit_state TEXT NOT NULL,audit_event_id TEXT,FOREIGN KEY(dataset_id) REFERENCES datasets(dataset_id));
CREATE TABLE IF NOT EXISTS backup_catalog(backup_id TEXT PRIMARY KEY,dataset_id TEXT NOT NULL,status TEXT NOT NULL,expected_bytes INTEGER NOT NULL,object_id TEXT NOT NULL,FOREIGN KEY(dataset_id) REFERENCES datasets(dataset_id));
CREATE TABLE IF NOT EXISTS repository_objects(object_id TEXT PRIMARY KEY,present INTEGER NOT NULL,observed_bytes INTEGER NOT NULL,integrity_state TEXT NOT NULL);
