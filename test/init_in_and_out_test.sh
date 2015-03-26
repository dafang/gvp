. assert.sh

GVP=../bin/gvp

## gvp init should create a .godeps/ directory.
assert_raises "$GVP init"
assert_raises "[ -d Gedeps/_workspace ]"
## Cleanup
rm -rf .godeps

## source gvp in should change the original GOPATH and associated Env variables
## as well as creating a .godeps directory 
ORIGINAL_GOPATH=$GOPATH
ORIGINAL_GOBIN=$GOBIN
ORIGINAL_PATH=$PATH

source $GVP in

assert_raises "[ -d Gedeps/_workspace ]"
assert "echo $GOPATH" "$PWD/Gedeps/_workspace:$PWD:$ORIGINAL_GOPATH"
assert "echo $GOBIN"  "$PWD/Gedeps/_workspace/bin"
assert "echo $PATH"   "$PWD/Gedeps/_workspace/bin:$ORIGINAL_PATH"


## Cleanup
rm -rf Gedeps/_workspace

assert_end examples
