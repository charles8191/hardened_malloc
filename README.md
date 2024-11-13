# hardened_malloc binary 

This is a simple containerized build tool that builds the very latest [hardened_malloc](https://github.com/GrapheneOS/hardened_malloc) from Git, using the Rocky 9 container, and every Monday we upload it using CI. There is also a container artifact if you'd like to build it yourself (or you can build the container using `podman build`):

```bash
mkdir out
podman run -v "$(pwd)/out":/out ghcr.io/charles8191/hardened_malloc/artifact 
```

## Demo

```bash
wget https://github.com/charles8191/hardened_malloc/raw/refs/heads/main/libhardened_malloc.so
LD_PRELOAD=./libhardened_malloc.so /bin/echo "Hello, world!"
```

<sup><sub>Charles or the Netherite Project is not affilated with GrapheneOS in any way, shape or form.</sub></sup>
