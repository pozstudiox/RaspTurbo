#!/bin/bash
echo "🌐 Optimizing network settings..."

echo "options 8192cu rtw_power_mgnt=0 rtw_enusbss=0" >> /etc/modprobe.d/8192cu.conf
echo "nameserver 1.1.1.1" > /etc/resolv.conf

echo "✅ Network configuration updated."
