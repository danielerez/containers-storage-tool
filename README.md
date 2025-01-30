# USAGE

# Set pull secret

Modify `pull_secret.json`

# Mirror images

```
make build-mirror
podman run -v <local_dir>:/var/lib/containers containers-storage-mirror
```

# List images

```
make build-list
podman run -v <local_dir>:/var/lib/containers containers-storage-list
```
