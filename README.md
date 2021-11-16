# S3 Sync

Docker container that syncs files between two different AWS S3 buckets.

## Usage

    docker compose up --build

See environment variables in docker-compose.yml for configuration.

Note: minio is included for local testing. It will read from the `data` folder.
