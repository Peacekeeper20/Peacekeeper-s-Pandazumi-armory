AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Silvery Maiden Assault rifle"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.HoldType = "smg"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "AR2",

	ClipSize = 32,
	DefaultClip = 128,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = -1

SWEP.Delay = 0.08 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 30 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2750 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 9 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 9 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 0.9 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.1 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.4 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.25, 0.3), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-1, 0, -1),
	HipPitch = 1.2,

	AimOffset = Vector(-0.2, 0, 0.2),
	AimPitch = 0.6,

	Time = 0.3 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 3.2

SWEP.Sights = {
	Enabled = true,

	Time = 0.45, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.8,
	Distance = 14, -- Distance from the attachment point on the weapon model

	Scoped = false,

	Holosight = true,
	Attachment = "aim",

	GlassSize = Vector(1.5, 3),
	GlassColor = Color(0, 0, 0, 50),

	HoloSize = Vector(1.5, 1.5),
	HoloColor = Color(255, 0, 0),
	HoloMaterial =  Material("reticles/eotech")

}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 2 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 1.2
}

SWEP.Laser = {
	Enabled = true,
	Attachment = "laser",

	Beam = Material("effects/bluelaser1"),
	BeamColor = Color(0, 100, 255),
	BeamWidth = 1,

	Sprite = Material("effects/blueflare1"),
	SpriteColor = Color(50, 190, 255),
	SpriteWidth = 4
}

SWEP.Voxel = {
	Model = "pandazumi/g36lmgv2",
	Scale = 0.5,

	View = {
		Pos = Vector(24, -6, -7),
		Ang = Angle()
	},

	World = {
		Pos = Vector(8, 1, 1.4),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/g36_firing.wav"),
	Reload = Sound("weapons/pandazumi/g36_reload.wav")
}

if CLIENT then

	function SWEP:ShouldDrawLaser(viewmodel)
		if not BaseClass.ShouldDrawLaser(self, viewmodel) then
			return false, false
		end

		if self:Clip1() < self.Cost then
			return false
		end

		local should = self:GetAimFraction() > 0

		return should, should
	end
end