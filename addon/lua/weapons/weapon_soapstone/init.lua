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

    


    messageEnt:SetPos(tr.HitPos)

    local playerAngles = self.Owner:GetAngles();

    playerAngles.pitch = 0
    playerAngles.roll = 0

    messageEnt:SetAngles(playerAngles)

    messageEnt:SetMessage("gay")
    messageEnt:SetAppraisals(1)

    messageEnt:Spawn()



    local surfaces = game.GetWorld():GetBrushSurfaces()


    local closest = nil
    local closestDistance = 99999999
    local angle = nil
    for k, v in pairs(surfaces) do

        for key, val in pairs(v:GetVertices()) do

            print(val)
        end

        


    end

   -- messageEnt:SetPos(closest)

    undo.Create ("Dark_Souls_Message")
    undo.AddEntity(messageEnt)
    undo.SetPlayer(self.Owner)
    undo.Finish()


end
 
function SWEP:SecondaryAttack()
end