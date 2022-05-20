# How to build and use layer?

1. Make sure you have Docker installed locally.
2. Update build image version in `Dockerfile`. Now it is Node.JS 14.
3. Update `package.json` and add the modules which you want to use in your function.
4. Run `./build.sh`
5. Create FC layer with `dist/layer.zip`
6. Configure it in your function