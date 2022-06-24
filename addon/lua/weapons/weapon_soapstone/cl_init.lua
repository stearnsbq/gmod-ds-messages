include("shared.lua")


SWEP.PrintName = "Orange Guidance Soapstone"


SWEP.Slot = 4
SWEP.SlotPos = 1

SWEP.DrawAmmo = false

SWEP.DrawCrosshair = false





net.Receive("openCreateMessageGui", function()

    local gui = vgui.Create("createMessageGUI")

    gui:SetSize(500, 90)
    gui:SetTitle("Create a New Message")
    gui:Center()
    gui:MakePopup()




end)