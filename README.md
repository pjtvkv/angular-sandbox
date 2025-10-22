# angular-sandbox

Docker-powered Angular playground with hot reload support.

## Prerequisites

- Docker Desktop 4.24+ (or any recent Docker Engine with Docker Compose v2)

## Quick start

1. Build and launch the dev container:
   ```bash
   docker compose up --build
   ```
2. The first startup scaffolds an Angular 17 app into `sandbox-app/` and installs dependencies.
3. Once the container finishes booting, open <http://localhost:4200> to see the running app with live reload.
4. Edit files under `sandbox-app/src/`; changes trigger a hot reload automatically.

Stop the sandbox with <kbd>Ctrl+C</kbd>. Restart later with `docker compose up`.

## Useful commands

- Run any Angular CLI command:
  ```bash
  docker compose run --rm angular ng generate component example
  ```
- Install a new npm package:
  ```bash
  docker compose run --rm angular npm install <package-name>
  ```
- Run unit tests in watch mode:
  ```bash
  docker compose run --rm angular ng test --watch
  ```

## Project layout

- `docker-compose.yml` — service definition, volume mounts, and port mapping.
- `docker/angular/Dockerfile` — builds an image with the Angular CLI.
- `docker/angular/entrypoint.sh` — scaffolds the app on first run and starts `ng serve`.
