local PANEL = {}


function PANEL:Init()

   self.mainPanel = self:Add("Panel")
   self.controls = self.mainPanel:Add("Panel")


   self.inputBox = self.mainPanel:Add("DTextEntry")

   self.mainPanel:Dock(FILL)

   self.inputBox:Dock(TOP)
   self.controls:Dock(BOTTOM)

   self.submitButton = self.controls:Add("DButton")

   self.submitButton:SetText("Submit")
   self.submitButton:Dock(FILL)


end

function PANEL:Close()
    self:Remove()
end

-- function PANEL:PerformLayout(w, h)

-- end

-- function PANEL:Paint(w, h)


-- end

vgui.Register("createMessageGUI", PANEL, "DFrame")