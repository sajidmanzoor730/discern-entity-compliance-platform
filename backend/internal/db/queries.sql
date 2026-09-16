-- name: ListEntities :many
SELECT * FROM entities ORDER BY updated_at DESC;
-- name: CreateEntity :one
INSERT INTO entities (name, jurisdiction, entity_type, status, standing) VALUES ($1,$2,$3,$4,$5) RETURNING *;
-- name: UpdateEntityStatus :one
UPDATE entities SET status=$2, standing=$3 WHERE id=$1 RETURNING *;
