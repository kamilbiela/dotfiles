if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi


# export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"
source ~/.bash_aliases

#this solves the no include directory problem.
alias ssh="cat ~/.ssh/config.d/* > ~/.ssh/config; ssh"

#add default keys to ssh-agent
# /usr/bin/ssh-add >/dev/null 2>&1
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="~/.composer/vendor/bin/:$PATH"
export PS1="\u@\h \w> "

export PATH="$(brew --prefix josegonzalez/php/php55)/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export APPLICATION_ENV="development"
export EDITOR="/usr/bin/vim"

alias elasticsearch.start="elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml"

export PATH=$PATH:/usr/local/opt/go/bin
export GOPATH=/Users/kbiela/Projects/GOCODE
export GOROOT=/usr/local/opt/go/libexec
export PATH="$PATH:$GOPATH/bin"

launchctl setenv GOROOT $GOROOT
launchctl setenv GOPATH $GOPATH

alias foodtest="bin/phpunit -c app/ --group=frontend src/Foodpanda/Bundle/Shop/"
alias qrebase="git add -A; git commit -m '--'; git rebase -i HEAD~2"

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
setjdk() {
  export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

for file in ~/.{bash_prompt}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
