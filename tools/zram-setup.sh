#!/bin/bash
echo "💾 Setting up ZRAM..."

apt update
apt install -y zram-tools

cat <<EOF > /etc/systemd/zram-generator.conf
[zram0]
zram-size = ram
compression-algorithm = zstd
EOF

systemctl restart systemd-zram-setup@zram0.service
echo "✅ ZRAM enabled with zstd compression."
