#!/bin/bash
clear
echo "🚀 RaspTurbo Installer Starting..."

# Root kontrolü
if [ "$EUID" -ne 0 ]; then
  echo "❌ Please run as root."
  exit 1
fi

# Araç scriptlerini çalıştırılabilir yap
chmod +x tools/*.sh

# Optimize işlemleri
bash tools/overclock.sh
bash tools/zram-setup.sh
bash tools/remove-bloat.sh
bash tools/optimize-network.sh
bash tools/tweak-sysctl.sh

# Bilgilendirme
echo ""
echo "✅ All optimizations applied successfully!"
echo "🔄 A reboot is recommended: sudo reboot"
echo ""

# GUI'yi başlat
echo "🎬 Launching RaspTurbo Interface..."
sleep 1
python3 gui/raspTurboUI.py
