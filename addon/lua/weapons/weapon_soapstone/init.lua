include("shared.lua")

SWEP.Weight = 5
SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false




function SWEP:PrimaryAttack()
    
    local messageEnt = ents.Create("entity_message")

    local playerPos = self.Owner:GetPos()

    local tr = util.TraceLine({
      start = playerPos,
      endpos = Vector(playerPos.x, playerPos.y, playerPos.z - 100000000)
    })  

    
    messageEnt:SetPos(tr.HitPos - Vector(0, 0, 1.49))

    local playerAngles = self.Owner:GetAngles();

    local angle = tr.HitNormal:Angle()

	  angle:RotateAroundAxis(tr.HitNormal:Angle():Right(), -90)
	  angle:RotateAroundAxis(tr.HitNormal:Angle():Forward(), 90)


    messageEnt:SetAngles(angle)

    messageEnt:SetMessage("gay")
    messageEnt:SetAppraisals(1)

    messageEnt:Spawn()




   -- messageEnt:SetPos(closest)

    undo.Create ("Dark_Souls_Message")
    undo.AddEntity(messageEnt)
    undo.SetPlayer(self.Owner)
    undo.Finish()


end
 
function SWEP:SecondaryAttack()
end