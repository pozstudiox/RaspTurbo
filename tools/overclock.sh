#!/bin/bash
echo "📈 Applying overclock settings..."

CONFIG="/boot/config.txt"
cp $CONFIG $CONFIG.backup

cat <<EOF >> $CONFIG

# RaspTurbo Overclock Settings
arm_freq=2000
gpu_freq=600
over_voltage=6
force_turbo=1
EOF

echo "✅ Overclock applied. Backup saved as config.txt.backup"
