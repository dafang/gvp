
### Install in *nix

```bash
$ git clone https://github.com/pote/gvp.git && cd gvp
$ ./configure
$ make install
```

### Usage

Since `gvp` is a script and runs in a child environment of your shell, the latter will not take the env changes unless you `source` them.

```shell
$ source gvp
```

### Commands

```shell
source gvp    Modifies GOPATH, GOBIN and PATH to use the .godeps directory.
gvp version   Outputs version information.
gvp help      Prints this message.
```

