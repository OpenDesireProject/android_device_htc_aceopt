# Device configuration for the HTC Desire HD with mount layout hack and pre-optimization

## Spec Sheet
| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | 1 GHz Scorpion                    |
| Chipset                 | Qualcomm Snapdragon MSM8255       |
| GPU                     | Adreno 205                        |
| Memory                  | 768MB RAM                         |
| Shipped Android Version | 2.2                               |
| Storage                 | 1.5GB                             |
| MicroSD                 | Up to 32GB                        |
| Battery                 | 1230 mAh                          |
| Dimensions              | 123 x 68 x 11.8 mm                |
| Display                 | 480 x 800 pixels, LCD             |
| Camera                  | 8MP, 3264 x 2448 pixels           |
| Release Date            | October 2010                      |

## Device Picture
![HTC Desire HD](http://cdn2.gsmarena.com/vv/pics/htc/htc-desire-hd-new-1.jpg "HTC Desire HD")

## Original Partition Table
# cat /proc/emmc
dev:        size     erasesize name
mmcblk0p17: 00040000 00000200 "misc"
mmcblk0p21: 0087f400 00000200 "recovery"
mmcblk0p22: 00400000 00000200 "boot"
mmcblk0p25: 22dffe00 00000200 "system"
mmcblk0p27: 12bffe00 00000200 "cache"
mmcblk0p26: 496ffe00 00000200 "userdata"
mmcblk0p28: 014bfe00 00000200 "devlog"
mmcblk0p29: 00040000 00000200 "pdata"

