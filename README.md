# opensuse-leap

An extension of the base image, adding some tools

## How to build a statically linked git
For statically compiling git, you can do the following

On host machine
```
git clone git@github.com:git/git.git 
docker run -it -v $PWD/git:/data sellersj/opensuse-leap /bin/bash
```

Now in docker container
```
mkdir git-static
make configure
./configure prefix=/data/git-static/ CFLAGS="${CFLAGS} --static"
make
make install
```

## Troubleshooting
If you get something like `x86_64-suse-linux/bin/ld: cannot find -lbob`
Then run `zypper search libbob` and search for the missing library.
