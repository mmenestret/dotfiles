echo "USE PECO, LNAV, NCDU, TLDR AND REALPATH FFS !!!"

# NIX
. /Users/mmenestret/.nix-profile/etc/profile.d/nix.sh

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prezto theme

autoload -Uz promptinit
  promptinit
  prompt agnoster

# Autojump

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Homes

## JAVA

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home

# PATHS
# LOCAL BIN

export PATH=~/.local/bin:$PATH

# JAVA
export PATH=$JAVA_HOME/bin:$PATH

# ENV VARS
export PBS_AWS_BASTION=34.244.40.34

# ALIASES
alias ls='ls -GFh'
alias la='ll -a'
alias prettyjson='python -m json.tool'
alias tunnel_probayes='ssh -D 2000 -f -N -C smartlake@local.probayes.net -p 31609'
alias tunnel_probayes_aws='ssh -D2001 -f -N pbs-aws-bastion'
alias tunnel_smartlake_dev='ssh -D3001 master1'
alias tunnel_smartlake_itg='ssh -D3000 node01.smartlake.aws.laposte.fr'
alias trash="rmtrash"
alias c1="ssh pbs-aws-compute1"
alias mon="ssh pbs-aws-monitoring"
alias bas="ssh pbs-aws-bastion"
