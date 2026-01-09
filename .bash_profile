#!/usr/bin/env bash

###########
# ALIASES #
###########
alias ll='ls -laABFGh -D %U%_\ %T%_\ %x%_\ %Z'          #LS Standard Preference
alias lld='ls -laABFGhd -D %U%_\ %T%_\ %x%_\ %Z */'     #LS Standard Preference Sorted by Directories
alias llm='ls -laABFGThtr'                              #LS Standard Preference Sorted by File Modification
alias llc='ls -laABFGTUhtr'                             #LS Standard Preference Sorted by File Genesis
alias llo='ls -lOABFGh -D %U%_\ %T%_\ %x%_\ %Z'         #LS @OSX Special Command to Read CHFLAGS of Input
alias rmf='rm -rfd'

###########
## XCODE ##
###########
alias XcodeTemplates="vim /Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates"
alias XcodePrivateFrameworks="vim /Applications/Xcode.app/Contents/Developer/Library/PrivateFrameworks"
alias XcodeNativePython="vim /Applications/Xcode.app/Contents/Developer/Library/Frameworks/Python3.framework/Versions/3.9"

#######################################################################
# Description: Embed Python into Application Using Native Apple APIs  #
# Description: Build a C extension for Python Using Native Apple APIs #
# Description: Python library source files v3.9                       #
#######################################################################
# The native python is special. It includes various binaries, headers, scripts and more to build your projects fast.

###########
# EXPORTS #
###########
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Homebrew:
eval "$(/opt/homebrew/bin/brew shellenv)"

# YubiKey CLI Tool (local only)
export PATH="/Applications/YubiKey Manager.app/Contents/MacOS:$PATH"

# Export Manual Pages for Xcode
export MANPATH="/Applications/Xcode.app/Contents/Developer/usr/share/man:$MANPATH"

# Export Binaries from Xcode
export PATH="/Applications/Xcode.app/Contents/Developer/usr/bin:$PATH"

# Added by OrbStack: command-line tools and integration. This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# MacPorts Installer addition on 2025-11-15_at_21:20:30: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

#       <--DISABLED-->
#       export SSH_AUTH_SOCK="/Users/d3ad/.bitwarden-ssh-agent.sock"
#       export PATH="/Users/d3ad/.codeium/windsurf/bin:$PATH"
#       export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
#       export CPPFLAGS="-I/opt/homebrew/opt/openjdk@21/include"
#       <--DISABLED-->

