# mägic.twitterLauncher
Twitter intent module for love2d/lua

# Requirements
- [Love2d](https://love2d.org) version used 11.3


`src/twitterLauncher.lua` must be included in your love projects `require path` 

see `main.lua` for working example

 # Usage

 ## Basic
```
  local tweeter = require("src.TwitterLauncher")
  tweeter:launchBrowser("Hello from love2d")
```

## Complete
```
  local tweeter = require("src.TwitterLauncher")
  tweeter:init({url = "https://github.com/scawp/magic.twitterLauncher",
                hashtags = {
                  "love2d",
                  "lua"
                },
                via = "scawp",
                related = {
                  "scawp",
                  "obey_love"
                },
                in_reply_to = nil})
  tweeter:launchBrowser("This is prepopulated text from:")
```


