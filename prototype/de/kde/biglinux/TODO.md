
# TODO

## stop service then config


``` sh
systemctl --user stop plasma-plasmashell
systemctl --user stop lattedock
systemctl --user stop plasma-kglobalaccel.service
```

* [Refer](https://github.com/biglinux/biglinux-session-and-themes/blob/main/usr/bin/change-plasma-theme#L32-L34)


## launcher

``` sh
kwriteconfig5
```

* ~/.config/plasma-org.kde.plasma.desktop-appletsrc

```
showOnlyCurrentActivity=false
showOnlyCurrentScreen=false
showOnlyCurrentDesktop=true
wheelSkipMinimized=false
```