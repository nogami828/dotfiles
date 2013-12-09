stty stop undef
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi
source ~/.bashrc
