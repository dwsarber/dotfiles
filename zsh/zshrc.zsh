# ------------------------------------------------------------------------------
# My personal ZSH configurations. Feel free to steal/use/modify!
#
# This file is the entry point for all ZSH-related dotfiles of mine.
# ------------------------------------------------------------------------------

DOTFILES="${HOME}/.dotfiles"
DOTFILES_ZSH="${DOTFILES}/zsh"
DOTFILES_ZSH_CONF="${DOTFILES_ZSH}/conf"
DOTFILES_ZSH_MODULES="${DOTFILES_ZSH}/modules"

# Source my ZSH configuration files spread across various files
source "${DOTFILES_ZSH_CONF}/zgen"
source "${DOTFILES_ZSH_CONF}/opts"
source "${DOTFILES_ZSH_CONF}/aliases"
source "${DOTFILES_ZSH_CONF}/term"

# Modules are linked via later setup. This directory is ignored and purely for
# loading my shell needs for development with particular languages, etc. Only
# single shell scripts should be linked in this directory.
for module in ${DOTFILES_ZSH_MODULES}/*; do
  source "${module}"
done

# Source any miscellaneous setup last. I tend to do last-ditch $PATH
# modifications here, so it should come after any other changes to $PATH.
source "${DOTFILES_ZSH_CONF}/user"
