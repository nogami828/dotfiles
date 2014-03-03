if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
    stty stop undef
fi
source ~/.bashrc
