AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

util.AddNetworkString("onOpenMessage")

function ENT:SetupDataTables()
    self:NetworkVar("String", 0, "Message")
    self:NetworkVar("Int", 1, "Appraisals")
end


function ENT:Initialize()

    self:SetModel("models/props_c17/FurnitureShelf001b.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_NOCLIP)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetUseType(SIMPLE_USE)

    -- self:SetMessage("Default Message")
    -- self:SetAppraisals(0)

end




function ENT:AcceptInput(name, caller, activator)  
    
	if name == "Use" and caller:IsPlayer() then
		net.Start("onOpenMessage") 
        net.WriteString(self:GetMessage())
        net.WriteInt(self:GetAppraisals(), 32)
        net.Send(caller)
	end
end
