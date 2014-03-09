function ScreenFunction(Screen)
        Game:FireEvent("gui.hud.show")
end

Network:Subscribe( "ScreenFunction", self, ScreenFunction )
