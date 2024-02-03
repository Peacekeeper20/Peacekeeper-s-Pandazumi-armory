AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Militant pistol"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 1

SWEP.Spawnable = true

SWEP.HoldType = "pistol"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "pistol",

	ClipSize = 20,
	DefaultClip = 80,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = 0

SWEP.Delay = 0.08 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 15 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2100 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 7 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 7 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.1 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.7 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.5, 0.7), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-6, 1, 1),
	HipPitch = 2,

	AimOffset = Vector(-1, 0, 0.5),
	AimPitch = 1.5,

	Time = 0.3 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 2.3

SWEP.Sights = {
	Enabled = true,

	Time = 0.2, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.5,
	Distance = 19 -- Distance from the attachment point on the weapon model
}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 1 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 0.5
}


SWEP.Voxel = {
	Model = "pandazumi/fn57",
	Scale = 0.5,

	View = {
		Pos = Vector(23, -6, -6),
		Ang = Angle()
	},

	World = {
		Pos = Vector(3.5, 1.5, 1),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/stockfiring5.wav"),
	Reload = Sound("weapons/pandazumi/p30_reload.wav")
}
