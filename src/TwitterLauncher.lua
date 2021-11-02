local socket_url = require("socket.url")

return {
  endpoint = "https://twitter.com/intent/tweet",
  --https://developer.twitter.com/en/docs/twitter-for-websites/tweet-button/guides/parameter-reference1
  query_params = {
    text = "",
    url = "",
    hashtags = {},
    via = "",
    related = {},
    in_reply_to = nil
  },

  init = function (self, params)
    if params then
      self.query_params = params
    end
  end,

  launchBrowser = function (self, text)
    local qry_str = ""
    
    self.query_params.text = text
    for param, data in pairs(self.query_params) do
      if type(data) == "table" then
        qry_str = qry_str .. "&" .. param .. "=" .. table.concat(data, ",")
      else
        qry_str = qry_str .. "&" .. param .. "=" .. socket_url.escape(data)
      end
    end
    
    --returns true on success
    return love.system.openURL( self.endpoint .. "?" .. qry_str )
  end

}