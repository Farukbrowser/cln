#!/bin/bash
REPO="https://raw.githubusercontent.com/farukbrowser/cln/main/"
wget -q -O /etc/systemd/system/limitvmess.service "${REPO}Cltools/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "${REPO}Cltools/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "${REPO}Cltools/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/xray/limit.vmess "${REPO}Cltools/vmess" >/dev/null 2>&1
wget -q -O /etc/xray/limit.vless "${REPO}Cltools/vless" >/dev/null 2>&1
wget -q -O /etc/xray/limit.trojan "${REPO}Cltools/trojan" >/dev/null 2>&1
chmod +x /etc/xray/limit.vmess
chmod +x /etc/xray/limit.vless
chmod +x /etc/xray/limit.trojan
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
