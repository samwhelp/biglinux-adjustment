---
title: Volume Control
nav_order: 5052
has_children: false
parent: BigLinux Adjustment
grand_parent: Config
---


# Volume Control

## Audio Volume Control

* [config snippet](https://github.com/samwhelp/biglinux-adjustment/blob/main/prototype/keybind/kdebiglinux/modern/kglobalshortcutsrc#L36-L43)

| Keybind           | Action        | Command             |
| ----------------- | ---------------- | ------------------------------------------- |
| `Alt + m`         | Volume Mute   | `mute=`     |
| `Alt + Shift + <` | Volume Down         | `decrease_volume=` |
| `Alt + Shift + >` | Volume Up         | `increase_volume=` |


| Keybind           | Action        | Command             |
| ---------------------- | -------------- | ------------------------------------------- |
| `XF86AudioMute`        | Volume Mute | `mute=`     |
| `XF86AudioLowerVolume` | Volume Down       | `decrease_volume=` |
| `XF86AudioRaiseVolume` | Volume Up       | `increase_volume=` |


## Microphone Volume Control

* [config snippet](https://github.com/samwhelp/biglinux-adjustment/blob/main/prototype/keybind/kdebiglinux/modern/kglobalshortcutsrc#L36-L43)


| Keybind           | Action        | Command             |
| ----------------- | ---------------- | ------------------------------------------- |
| `Alt + Ctrl + m`         | Microphone Mute   | `mic_mute`     |
| `Alt + Ctrl + <` | Microphone Volume Down         | `decrease_microphone_volume=` |
| `Alt + Ctrl + >` | Microphone Volume Up         | `increase_microphone_volume=` |
