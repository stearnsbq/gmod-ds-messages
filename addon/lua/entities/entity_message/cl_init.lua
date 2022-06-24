include("shared.lua")


local messageGUI = nil

function ENT:Draw()

    self:DrawModel()

end



net.Receive("onOpenMessage", function ()

    local msg = net.ReadString()
    local appraisals = net.ReadInt(32)


	messageGUI = vgui.Create('messageGUI')
	messageGUI:SetSize(400, 250)
	messageGUI:Center()
	messageGUI:MakePopup()

end)


net.Receive("onCloseMessage", function ()

	if messageGUI:IsValid()  then
		messageGUI:Close()
	end

end)


net.Receive("spawnMessageLight", function ()

	local message = net.ReadEntity()

    local dlight = DynamicLight( 1 )

    if ( dlight ) then
		dlight.pos = message:GetPos() + Vector(0, 0, 0)
		dlight.r = 203
		dlight.g = 50
		dlight.b = 5
		dlight.brightness = 0.001
		dlight.Size = 64
		dlight.DieTime = CurTime() + 1000000
	end



end)