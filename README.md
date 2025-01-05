# hardened_malloc binary 

> [!WARNING]  
> The `libstdc++` and `libgcc` packages or their equivalents should be installed. Otherwise, you may break your system by trying to preload it globally.

This is a simple containerized build tool that builds the very latest [hardened_malloc](https://github.com/GrapheneOS/hardened_malloc) from Git.

We build this weekly using GitHub Actions.

3 different buildroots are used. Alpine for musl-based systems, Debian for most glibc-based systems and RHEL for Fedora-based systems.

There is a container artifact to build this, or you can use `podman-build.1` to build the container. Replace `DISTRO` with either `alpine`, `debian`, or `rhel`:

```bash
mkdir out
podman run -v ./out:/out ghcr.io/charles8191/hardened_malloc/artifact:DISTRO
```

## Demo

Replace `DISTRO` with either `alpine`, `debian`, or `rhel`.

```bash
wget https://github.com/charles8191/hardened_malloc/raw/refs/heads/main/libhardened_malloc-DISTRO.so
LD_PRELOAD=./libhardened_malloc-DISTRO.so /bin/echo "Hello, world!"
```

Charles and this project is not affilated with GrapheneOS in any way, shape or form.