module agentscan/api

go 1.22

// NOTE: versions below are best-effort, not verified with `go mod tidy` —
// no Go toolchain was available in this project's sandbox. Run
// `go mod tidy` yourself before building; it will correct/fill these in.
require (
	github.com/99designs/gqlgen v0.17.45
	github.com/go-chi/chi/v5 v5.0.12
	github.com/go-chi/cors v1.2.1
	github.com/gorilla/websocket v1.5.1
	github.com/lib/pq v1.10.9
	github.com/neo4j/neo4j-go-driver/v5 v5.19.0
	github.com/redis/go-redis/v9 v9.5.1
)

require (
	github.com/agnivade/levenshtein v1.1.1 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/sosodev/duration v1.2.0 // indirect
	github.com/vektah/gqlparser/v2 v2.5.11 // indirect
	golang.org/x/net v0.22.0 // indirect
)
