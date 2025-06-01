
# 🚀 RaspTurbo – Speed Up Your Raspberry Pi

RaspTurbo is an all-in-one optimization toolkit designed to boost your Raspberry Pi's performance. With just one script, you can enable overclocking, memory compression, disable unnecessary services, and optimize network & kernel parameters.

---

## ⚙️ Features

- 🔥 Safe **Overclocking** profiles
- 💾 Enable fast & compressed **ZRAM swap**
- 🧹 Disable unused **background services**
- 🌐 Boost your **network performance**
- 🧠 Kernel-level system optimizations
- 🖥️ Optional lightweight **GUI interface**

---

## 📦 Installation

```bash
git clone https://github.com/yourusername/raspturbo.git
cd raspturbo
chmod +x installer.sh
sudo ./installer.sh
```

> ⚠️ Root access is required to apply system-level changes.

---

## ✅ Compatibility

RaspTurbo is compatible with the following Raspberry Pi models:

| Model              | RAM Size     | Status         |
|--------------------|--------------|----------------|
| Raspberry Pi 3 B/B+ | 1 GB         | ✅ Fully Supported |
| Raspberry Pi 4     | 2 GB / 4 GB / 8 GB | ✅ Fully Supported |
| Raspberry Pi 5     | 4 GB / 8 GB   | ✅ Fully Supported |
| Raspberry Pi Zero 2 W | 512 MB     | ⚠️ Limited (ZRAM recommended) |
| Raspberry Pi Zero (1) | 512 MB     | ❌ Not Recommended (Too weak) |

---

### ⚠️ Minimum Requirements

- ✅ **Recommended RAM**: 1 GB or more  
- ✅ **Recommended OS**: Raspberry Pi OS (Lite or Desktop)  
- ✅ **Python 3 & bash required** (pre-installed on most Pis)

> ❗️Overclocking is only effective if your Raspberry Pi has **adequate cooling** (heatsink/fan is recommended).

---

## 📜 License

MIT License — Free for personal and commercial use.
