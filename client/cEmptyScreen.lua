function EmptyScreenFunction(EmptyScreen)
        Game:FireEvent("gui.hud.hide")
end

Network:Subscribe( "EmptyScreenFunction", self, EmptyScreenFunction )
