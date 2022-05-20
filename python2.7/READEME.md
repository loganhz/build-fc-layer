# How to build and use layer?

1. Make sure you have Docker installed locally.
2. Update build image version in `Dockerfile`. Now it is Python 3.6.
3. Update `requirements.txt` and add the modules which you want to use in your function.
4. Run `./build.sh`
5. Create FC layer with `dist/layer.zip`
6. Configure it in your function