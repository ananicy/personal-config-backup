#!/bin/bash
# 自启动脚本 仅作参考



# ensure xdg-desktop-portal running without last dirty state
systemctl --user restart xdg-desktop-portal &

# some env can't auto run the portal, so need this
/usr/lib/xdg-desktop-portal-wlr  >/dev/null 2>&1 &
