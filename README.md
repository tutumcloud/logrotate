# docker-logrotate
Truncates container logs when they grow in size

## Usage

	docker run -d -v /var/lib/docker/containers:/var/lib/docker/containers:rw tutum/logrotate

