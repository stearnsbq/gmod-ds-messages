AddCSLuaFile("shared.lua")
 

SWEP.Author = "quinn50"
SWEP.Contact = ""
SWEP.Purpose = "Create dark souls like messages for other players to see!"
SWEP.Instructions = "Right click to compose a new message"

SWEP.Category = "Dark Souls"
 
SWEP.Spawnable = true -- Whether regular players can see it
SWEP.AdminSpawnable = true -- Whether Admins/Super Admins can see it
 
SWEP.ViewModel = "models/weapons/v_pistol.mdl" -- This is the model used for clients to see in first person.
SWEP.WorldModel = "models/weapons/w_pistol.mdl" -- This is the model shown to all other clients and in third-person.
 
 

SWEP.Primary.ClipSize = -1
 

SWEP.Primary.DefaultClip = -1
 

SWEP.Primary.Automatic = false
 

SWEP.Primary.Ammo = "none"
 
SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"
 

function SWEP:Reload()
end
 
function SWEP:Think()
end
 
