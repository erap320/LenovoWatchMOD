# [MOD] Lenovo Watch's notification apps substitution
[![BuyMeACoffee](https://img.shields.io/badge/coffee-donate-yellow.svg?logo=buy-me-a-coffee)](https://buymeacoff.ee/erap320)

## [Download](https://github.com/ERap320/LenovoWatchMOD/releases/latest)
Lenovo Watch is the application used to pair and set the Lenovo Watch 9, Lenovo Watch X and Lenovo Watch X Plus.  
One of the main "smart" functions of the watch is to vibrate when you get a notifications in one of the selected apps.
There are several problems in Lenovo's original application:
- 4 of the 8 possible apps are services only used in China, and Skype doesn't work.
- The Watch X and Watch X Plus do not support accented chars, so they only show messages until the first accented char
- On the Watch X and Watch X Plus, Gmail notifications' subject value is [null]

The objective of this mod is to give the watch a bit more functionality for non-chinese users and solve other issues.

I fixed Skype, Facebook Messenger and made these substitutions:
* WeChat -> Telegram
* QQ -> Microsoft Outlook
* Weibo -> Google Calendar
* Line -> Gmail
* Tencent Tim -> Telegram X

For the Watch X and Watch X Plus:
- Fixed the accented chars by replacing them with the non accented counterpart in the message (áéíóöőúüű -> aeiooouuu)
- Fixed Gmail notification to display the subject correctly

## Content of the repository
The commits of this repository contain new versions of the modified .apk

If you need an older version of the app take a look at older [Releases](https://github.com/ERap320/LenovoWatchMOD/releases). The tag of the commits will be the version of the Lenovo Watch app used as a base for the mod.

**Attention!** Some versions of the original LenovoWatch app includes measures to prevent mods like this one. As a result, the latest versions of the MOD also prevents updates.

# Result
![Result](https://i.imgur.com/NSQKVrK.jpg)
