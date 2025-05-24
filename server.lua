
RegisterCommand("me", function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message rp"><b>Me:</b> {0}</div>',
        args = { msg }
    })
    TriggerClientEvent("rp:3dme", -1, msg, source)
end, false)

RegisterCommand("do", function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message rp"><b>Do:</b> {0}</div>',
        args = { msg }
    })
    TriggerClientEvent("rp:3ddo", -1, msg, source)
end, false)

RegisterCommand("ooc", function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message ooc"><b>OOC {0}:</b> {1}</div>',
        args = { name, msg }
    })
end, false)

RegisterCommand("twt", function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message twt"><b>@{0}:</b> {1}</div>',
        args = { name, msg }
    })
end, false)

RegisterCommand("anon", function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message anon"><b>Anonymous:</b> {0}</div>',
        args = { msg }
    })
end, false)

RegisterCommand("action", function(source, args, rawCommand)
    local msg = table.concat(args, " ")
    TriggerClientEvent("rp:3daction", -1, msg, source)
end, false)

RegisterCommand("shout", function(source, args, rawCommand)
    local name = GetPlayerName(source)
    local msg = table.concat(args, " ")
    TriggerClientEvent("chat:addMessage", -1, {
        template = '<div class="chat-message shout"><b>{0} (shouts):</b> {1}</div>',
        args = { name, msg }
    })
end, false)
