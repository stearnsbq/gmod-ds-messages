include("shared.lua")

function ENT:Draw()

    self:DrawModel()

end



net.Receive("onOpenMessage", function ()

    local msg = net.ReadString()
    local appraisals = net.ReadInt(32)

	-- Small derma panel just for the example.
	local pShop = vgui.Create('DFrame')
	pShop:SetSize(334, 63)
	pShop:SetPos(ScrW()*0.5, ScrH()*0.5)
	pShop:SetTitle('Rock & Gravel shop')
	pShop:SetSizable(true)
	pShop:SetDeleteOnClose(false)
	pShop:MakePopup()

	-- We can also do anything else the client can do, like using the chat!
	chat.AddText(Color(255,255,128), "Message: ",Color(255,255,255), msg )

end)