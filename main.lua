local tweeter = require("src.TwitterLauncher")

function love.load()
  --calling init is optional as all params are optional
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
end

function love.update(dt)
end

function love.draw()
  love.graphics.print("press \"t\" to launch twitter in default browser", 100, 100)
end

function love.keypressed(k, scancode, isrepeat)
  if k == 'escape' then
    love.event.quit()
  end

  if k == 't' then
    tweeter:launchBrowser("This is prepopulated text from:")
  end
end