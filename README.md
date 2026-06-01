# Docker Deployment Templates

![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker)
![License](https://img.shields.io/badge/License-MIT-blue)

A collection of production-ready Docker Compose templates for common application stacks. Each template includes a `docker-compose.yml` and any supporting config files (Dockerfiles, nginx configs, etc.).

## Templates

| Template | Stack | Services |
|---|---|---|
| `fastapi-postgres` | FastAPI + PostgreSQL | `tiangolo/uvicorn-gunicorn-fastapi`, `postgres:15` |
| `node-mongo` | Node.js + MongoDB | Custom Node Dockerfile, `mongo:7` with persistent volume |
| `nextjs` | Next.js (multi-stage) | Multi-stage Docker build for production Next.js |
| `nginx-reverse-proxy` | Nginx reverse proxy | `nginx:alpine` with custom config and SSL mount |
| `redis` | Redis standalone | `redis:7-alpine` with AOF persistence and volume |

## Usage

```bash
# Pick a template
cd templates/fastapi-postgres

# Start services
docker compose up -d

# Stop
docker compose down
```

Each template's `docker-compose.yml` is self-contained. Customize environment variables, ports, and volume mounts as needed.

## Project Structure

```
docker-deployment-templates/
├── templates/
│   ├── fastapi-postgres/     # FastAPI + PostgreSQL
│   │   ├── docker-compose.yml
│   │   └── .gitkeep
│   ├── node-mongo/          # Node.js + MongoDB
│   │   ├── Dockerfile
│   │   ├── docker-compose.yml
│   │   └── .gitkeep
│   ├── nextjs/              # Next.js multi-stage
│   │   ├── Dockerfile
│   │   ├── docker-compose.yml
│   │   └── .gitkeep
│   ├── nginx-reverse-proxy/ # Nginx reverse proxy
│   │   ├── nginx.conf
│   │   ├── docker-compose.yml
│   │   └── .gitkeep
│   └── redis/               # Redis standalone
│       ├── docker-compose.yml
│       └── .gitkeep
├── assets/
├── .github/workflows/
└── README.md
```

## License

MIT — see [LICENSE](./LICENSE).
