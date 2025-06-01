CREATE SCHEMA IF NOT EXISTS change_log;

CREATE TABLE change_log.migrations (
    id SERIAL PRIMARY KEY,
    applied_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    created_by TEXT DEFAULT CURRENT_USER,
    script_name TEXT NOT NULL,
    script_details TEXT
);
