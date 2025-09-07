# Hello

Hello World!

```shell
podman run --rm -it --userns keep-id:uid=1000,gid=1000 -v ${PWD}:/project ghcr.io/gohugoio/hugo:v0.149.1 new site hello

cd hello

podman run --rm -it --userns keep-id:uid=1000,gid=1000 -v ${PWD}:/project ghcr.io/gohugoio/hugo:v0.149.1 new content content/posts/my-first-post.md

```
