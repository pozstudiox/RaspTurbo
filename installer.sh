#!/bin/bash
clear
echo "🚀 RaspTurbo Installer Starting..."

if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root."
  exit 1
fi

chmod +x tools/*.sh

bash tools/overclock.sh
bash tools/zram-setup.sh
bash tools/remove-bloat.sh
bash tools/optimize-network.sh
bash tools/tweak-sysctl.sh

echo ""
echo "✅ All optimizations applied successfully!"
echo "🔄 A reboot is recommended: sudo reboot"
