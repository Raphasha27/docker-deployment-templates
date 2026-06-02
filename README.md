# Docker Deployment Templates

Production-ready Docker Compose templates for common application stacks.

## Templates

| File | Stack |
|------|-------|
| `docker-compose.postgres.yml` | PostgreSQL 16 |
| `docker-compose.redis.yml` | Redis 7 |
| `docker-compose.fullstack.yml` | API + Frontend + PostgreSQL + Redis + Nginx |

## Usage

```bash
# Copy .env.example to .env and edit
cp .env.example .env

# Start PostgreSQL
docker compose -f docker-compose.postgres.yml up -d

# Start full stack
docker compose -f docker-compose.fullstack.yml up -d
```
