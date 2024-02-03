AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Thunderlead MG"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 4

SWEP.Spawnable = true

SWEP.HoldType = "ar2"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "AR2",

	ClipSize = 150,
	DefaultClip = 300,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = -1

SWEP.Delay = 0.067 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 28 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2500 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 25 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 35 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1.4 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 2.1 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.04 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.7, 0.25), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-2, 0, -1),
	HipPitch = 0.7,

	AimOffset = Vector(-1, 0, 0),
	AimPitch = 0.5,

	Time = 3 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 5.5

SWEP.Sights = {
	Enabled = true,

	Time = 1.3, -- Time it takes to zoom in, also affects sprint and deploy times even if sights are disabled
	Zoom = 1.5,
	Distance = 21 -- Distance from the attachment point on the weapon model
}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 3 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 1.5
}

SWEP.Voxel = {
	Model = "pandazumi/hk21",
	Scale = 0.6,

	View = {
		Pos = Vector(20, -6, -7.5),
		Ang = Angle()
	},

	World = {
		Pos = Vector(4.5, 1.2, 1),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/hk21_firing.wav"),
	Reload = Sound("weapons/pandazumi/hk21_reload.wav")
}
