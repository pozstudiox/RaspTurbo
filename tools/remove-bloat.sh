#!/bin/bash
echo "🧹 Removing unnecessary services..."

services=("bluetooth" "cups" "avahi-daemon" "triggerhappy")

for svc in "${services[@]}"; do
  systemctl disable --now $svc 2>/dev/null
  echo "❌ $svc disabled."
done

echo "✅ Bloatware services removed."
