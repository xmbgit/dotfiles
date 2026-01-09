#!/usr/bin/env zsh

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

export PATH="/bin:~/.local/bin:/opt/bin:/usr/bin:/usr/local/bin:/sbin:~/.local/sbin:/opt/sbin:/usr/sbin:/usr/local/sbin"

export PS1='%F{green}%n@%m%f:%F{blue}%~%f %# '

# Homebrew:
eval "$(/opt/homebrew/bin/brew shellenv)"

# YubiKey CLI Tool (local only)
#export PATH="$PATH:/Applications/YubiKey Manager.app/Contents/MacOS"

# Export Manual Pages for Xcode
export MANPATH="$MANPATH:/Applications/Xcode.app/Contents/Developer/usr/share/man"
export MANPATH="$MANPATH:/Library/Developer/CommandLineTools/usr/share/man"

# Export Binaries from Xcode
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"

# Added by OrbStack: command-line tools and integration. This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# MacPorts Installer addition on 2025-11-15_at_21:20:30: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# CommandLineTools
export PATH="$PATH:/Library/Developer/CommandLineTools/usr/bin"

# LibExeTools
export PATH"$PATH:/usr/libexec"
export PATH="$PATH:/Library/Dev*/CommandLineTools/usr/libexec"

# WARNING: The following path includes binaries outside the Cocoa/Darwin ecosystem/api standard.
export PATH="$PATH/Library/Developer/CommandLineTools/SDKs/MacOSX15.4.sdk/usr/bin"

#       <--DISABLED-->
#       export SSH_AUTH_SOCK="/Users/d3ad/.bitwarden-ssh-agent.sock"
#       export PATH="/Users/d3ad/.codeium/windsurf/bin:$PATH"
#       export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"
#       export CPPFLAGS="-I/opt/homebrew/opt/openjdk@21/include"
#       <--DISABLED-->

