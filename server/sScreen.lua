
class 'Screen'
function Screen:__init()
Events:Subscribe( "PlayerChat", self, self.ChatMessage )
end
function Screen:ChatMessage(args)
    local msg = args.text
    local player = args.player
    
    
    if ( msg:sub(1, 1) ~= "/" ) then
            return true

        end

    
    local cmdargs = {}
    for word in string.gmatch(msg, "[^%s]+") do
        table.insert(cmdargs, word)
    end
    
    if ( cmdargs[1] == "/screenon" ) then

        Network:Send( player, "ScreenFunction")
        --player:SetModelId(15)
		return false
    end    
    return false
end

local Screen = Screen()
















