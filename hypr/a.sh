#!/bin/bash
export SDL_VIDEODRIVER=wayland
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=sway
export XDG_SESSION_DESKTOP=sway
exec sway
exec systemctl --user import-environment DISPLAY WAYLAND_DISPLAY SWAYSOCK
exec hash dbus-update-activation-environment 2>/dev/null && \
  dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK
