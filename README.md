# Hello

Hello World!

```shell
hugo new site hello

cd hello

git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
echo "theme = 'ananke'" >> hugo.toml

hugo new content content/posts/hello.md
```
