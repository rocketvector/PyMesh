# Notes

Build

```bash
docker build -f Dockerfile.spark -t us-docker.pkg.dev/rocketvector/docker/pymesh-spark:0.0.1 .
docker tag us-docker.pkg.dev/rocketvector/docker/pymesh-spark:0.0.1 us-docker.pkg.dev/rocketvector/docker/pymesh-spark:latest
```

Inspect

```bash
docker run --rm -it us-docker.pkg.dev/rocketvector/docker/pymesh-spark:0.0.1 /bin/bash
```

Push

```bash
docker push us-docker.pkg.dev/rocketvector/docker/pymesh-spark:0.0.1
docker push us-docker.pkg.dev/rocketvector/docker/pymesh-spark:latest
```

Download

```bash
docker run --rm -u $(id -u):$(id -g) -v "$(pwd)/dist:/output" us-docker.pkg.dev/rocketvector/docker/pymesh-spark:0.0.1 bash -c 'cp /PyMesh/dist/*.whl /output/'
```
