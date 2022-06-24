local PANEL = {}

surface.CreateFont("messageFont", {
    font = 'arial',
    size = 24,
    weight = 500
})


function PANEL:Init()



    self:DockPadding(10, 10, 10, 10)

    self.messageControls = self:Add("Panel")
    self.messageControls:Dock(BOTTOM)
    self.messageControls:SetWidth(25)
    self.messageControls:DockMargin(200, 0, 200, 0)

    self.appraiseButton = self.messageControls:Add("DButton")
    self.appraiseButton:SetText("Appraise")
    self.appraiseButton:Dock(RIGHT)

    self.closeBtn = self.messageControls:Add("DButton")
    self.closeBtn:SetText("Close")

    self.closeBtn:Dock(LEFT)

    self.closeBtn.DoClick = function(pn1)
        self:Remove()
    end

    self.mainContent = self:Add("Panel")

    self.messageContent = self.mainContent:Add("Panel")
    self.appraisalContent = self.mainContent:Add("Panel")
    self.messageContent:Dock(TOP)
    self.appraisalContent:Dock(BOTTOM)

    self.mainContent:Dock(FILL)
   -- self.mainContent:SetContentAlignment(5)

    self.messageLabel = self.messageContent:Add("DLabel")


    self.apprasialCountLabel = self.appraisalContent:Add("DLabel")
    self.apprasialCount = self.appraisalContent:Add("DLabel")

    self.apprasialCountLabel:Dock(LEFT)
    self.apprasialCount:Dock (RIGHT)

    self.apprasialCountLabel:SetText("Rating:")
    self.apprasialCount:SetText("123")

    self.apprasialCountLabel:DockMargin(0, 0 ,75, 0)

    self.apprasialCount:DockMargin(75, 0, 0, 0)

    self.apprasialCountLabel:Dock(FILL)
    self.apprasialCount:Dock(FILL)

    self.apprasialCountLabel:SetContentAlignment(5)
    self.apprasialCount:SetContentAlignment(5)

    self.messageLabel:SetFont("messageFont")
    self.apprasialCount:SetFont("messageFont")
    self.apprasialCountLabel:SetFont("messageFont")

    self.messageLabel:SetContentAlignment(5)

    self.messageLabel:Dock(FILL)



end

function PANEL:Close()
    self:Remove()
end

function PANEL:PerformLayout(w, h)

end

function PANEL:Paint(w, h)

    local ScrW = ScrW()
    local ScrH = ScrH()

    draw.RoundedBoxEx(6, 0, 0, w, h, Color(0, 0, 0), true, true, false, false)
    

end

vgui.Register("messageGUI", PANEL, "EditablePanel")