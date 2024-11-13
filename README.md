# hardened_malloc binary 

This is a simple containerized build tool that builds the very latest [hardened_malloc](https://github.com/GrapheneOS/hardened_malloc) from Git.

You can build on Alpine (latest) for musl systems, and Debian (stable) for glibc systems.

There is a container artifact to build this, or you can use `podman-build.1` to build the container. Replace `DISTRO` with either `alpine` or `debian`:

```bash
mkdir out
podman run -v ./out:/out ghcr.io/charles8191/hardened_malloc/artifact:DISTRO
```

## Demo

Replace `DISTRO` with either `alpine` or `debian`.

```bash
wget https://github.com/charles8191/hardened_malloc/raw/refs/heads/main/libhardened_malloc-DISTRO.so
LD_PRELOAD=./libhardened_malloc-DISTRO.so /bin/echo "Hello, world!"
```

<sup><sub>Charles is not affilated with GrapheneOS in any way, shape or form.</sub></sup>
