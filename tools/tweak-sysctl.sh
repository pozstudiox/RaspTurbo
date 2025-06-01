#!/bin/bash
echo "🧠 Tuning kernel parameters..."

cat <<EOF >> /etc/sysctl.conf

# RaspTurbo Kernel Tweaks
vm.swappiness=10
fs.inotify.max_user_watches=524288
net.core.rmem_max=16777216
net.core.wmem_max=16777216
net.ipv4.tcp_rmem=4096 87380 16777216
net.ipv4.tcp_wmem=4096 65536 16777216
EOF

sysctl -p

echo "✅ Kernel parameters optimized."
