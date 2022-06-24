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