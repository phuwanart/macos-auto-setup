# 🛠️ macOS Auto Setup

## 🔧 Installation

### ✅ If you have Git

```sh
git clone https://github.com/phuwanart/macos-auto-setup.git ~/Projects/macos-auto-setup
cd ~/Projects/macos-auto-setup
./bootstrap.sh
```

### 🌀 If you only have curl (fresh macOS install)

```
bash <(curl -fsSL https://raw.githubusercontent.com/phuwanart/macos-auto-setup/main/bootstrap-nogit.sh)
```

This will:
1. Install Xcode CLI tools (for Git)
2. Install Homebrew
3. Clone this repo
4. Run the full setup

## References

- https://github.com/NLaundry/MacAutoSetup
