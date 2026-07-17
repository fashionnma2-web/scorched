package main

import (
	"database/sql"
	"embed"
	"log"
)

// The schema file is embedded into the compiled binary at build time, so the
// running container always carries the exact schema that shipped with it —
// no separate manual `psql -f ...` step, no drift between what's in git and
// what's actually applied to the database.
//
//go:embed migrations/schema.sql
var schemaSQL string

// runMigrations applies migrations/schema.sql against Postgres on every boot.
// Every statement in that file is CREATE TABLE/INDEX/VIEW IF NOT EXISTS, so
// this is idempotent — safe to run on every single deploy, including ones
// where the schema hasn't changed.
func runMigrations(db *sql.DB) error {
	log.Println("Running database migrations...")
	if _, err := db.Exec(schemaSQL); err != nil {
		return err
	}
	log.Println("Migrations applied successfully")
	return nil
}
