# ------------------------------------------------------------------------------
# Configuration for general NodeJS development.
# ------------------------------------------------------------------------------

NODE_PREFIX="$(npm -g prefix)"
NODE_GLOBAL_BIN="${NODE_PREFIX}/bin"

export PATH="${NODE_GLOBAL_BIN}:${PATH}"
