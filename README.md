# hardened_malloc binary 

This is a simple project that builds [hardened_malloc](https://github.com/GrapheneOS/hardened_malloc) from Git every Monday and then uploads it, using the Red Hat UBI container. There is also a container artifact if you'd like to build it yourself (hardened_malloc's source code is included inside of it):

```bash
mkdir out
podman run -v "$(pwd)/out":/out ghcr.io/charles8191/hardened_malloc/artifact 
```

## Demo

```bash
wget https://github.com/charles8191/hardened_malloc/raw/refs/heads/main/libhardened_malloc.so
LD_PRELOAD=./libhardened_malloc.so /bin/echo "Hello, world!"
```

<sup><sub>Charles or Pupa is not affilated with GrapheneOS in any way, shape or form.</sub></sup>
