local PANEL = {}
local messageMaterial = Material("materials/message/darksouls.png")
function PANEL:Init()

    self.messageControls = self:Add("Panel")
    self.messageControls:Dock(BOTTOM)
    self.messageControls:SetWidth(25)
    self.messageControls:DockMargin(100, 0, 100, 0)
    
    self.appraiseButton = self.messageControls:Add("DButton")
    self.appraiseButton:SetText("Appraise")
    self.appraiseButton:Dock(RIGHT)

    self.closeBtn = self.messageControls:Add("DButton")
    self.closeBtn:SetText("Close")

    self.closeBtn:Dock(LEFT)


    self.closeBtn.DoClick = function(pn1)
        self:Remove()
    end

end

function PANEL:Close()
    self:Remove()
end

function PANEL:PerformLayout(w, h)

end

function PANEL:Paint(w, h)


    local aX, aY = self:LocalToScreen()

    draw.RoundedBox(1, aX, aY, 25, 25, Color(232, 228, 240))

end

vgui.Register("messageGUI", PANEL, "EditablePanel")