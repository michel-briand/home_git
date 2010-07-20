#!/bin/bash
#
# X HG shell
# Creates an xterm
#

_title="HG shell"
_fn='-bitstream-bitstream vera sans mono-bold-r-normal-*-17-120-100-100-*-*-*-*'
_hgs=home_git_shell
if [ -f "./$_hgs" ] ; then
    _home_git_shell="$PWD/$_hgs"
elif [ -f "$HOME/bin/$_hgs" ] ; then
    _home_git_shell="$HOME/bin/$_hgs"
else
    echo "HG shell not found. Exit."
    exit 1
fi

_cmd="/bin/bash --rcfile $_home_git_shell;echo Press Return to end...;read"

if [ -f "$_home_git_shell" ] ; then
    xterm -title "$_title" -fn "$_fn" -e "$_cmd"
fi
