AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Replicant Assault rifle"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.HoldType = "ar2"
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

SWEP.Delay = 0.068 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 25 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2400 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 10 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 12 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.4 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.4 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.74, 0.21), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-1.5, 0, -1),
	HipPitch = 1.2,

	AimOffset = Vector(-0.4, 0, 0.2),
	AimPitch = 0.6,

	Time = 0.3 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 3.4

SWEP.Sights = {
	Enabled = true,

	Time = 0.45, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.5,
	Distance = 12, -- Distance from the attachment point on the weapon model

	Scoped = false,


}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 2 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 1.2
}


SWEP.Voxel = {
	Model = "pandazumi/fnf2000",
	Scale = 0.5,

	View = {
		Pos = Vector(24, -6, -7),
		Ang = Angle()
	},

	World = {
		Pos = Vector(3, 1, 1),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/fnf2000_firing2.wav"),
	Reload = Sound("weapons/pandazumi/fnf2000_reload.wav")
}

