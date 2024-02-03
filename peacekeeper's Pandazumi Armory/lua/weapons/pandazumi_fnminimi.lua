AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Minimizer MG"
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

	ClipSize = 120,
	DefaultClip = 240,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = -1

SWEP.Delay = 0.08 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 28 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2750 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 18 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 15 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1.2 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.4 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.3 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.8, 0.35), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-1, 0, -1),
	HipPitch = 1.2,

	AimOffset = Vector(-0.5, 0, 0.2),
	AimPitch = 0.6,

	Time = 0.5 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 5.2

SWEP.Sights = {
	Enabled = true,

	Time = 0.7, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.8,
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
	Model = "pandazumi/fnminimi",
	Scale = 0.5,

	View = {
		Pos = Vector(25, -7, -8),
		Ang = Angle()
	},

	World = {
		Pos = Vector(4, 1, 1.7),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/mp7_firing2.wav"),
	Reload = Sound("weapons/pandazumi/mg_reload.wav")
}

