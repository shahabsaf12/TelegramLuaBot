local triggers = {
  '^/id[@'..bot.username..']*',
}
— code by @Shahabambesik
local action = function(msg)
    if string.match(msg.text, '^/id') then
    local text = ''
    if msg.chat.type == 'private' then
        text = text..'test'
    end
    sendMessage(msg.from.id, text, true, false, true)
end

return {
  action = action,
  triggers = triggers
}
end
