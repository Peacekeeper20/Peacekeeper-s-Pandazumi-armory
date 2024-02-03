AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Hoplite SMG"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 2

SWEP.Spawnable = true

SWEP.HoldType = "smg"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "SMG1",

	ClipSize = 50,
	DefaultClip = 150,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = -1

SWEP.AutoBurst = false -- Whether the gun continues into the next burst by itself
SWEP.BurstDelay = 0 -- Delay between bursts, defaults to SWEP.Delay

SWEP.Delay = 0.065 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 15 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 1700 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 13 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 4 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1.1 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.3 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.6 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.4, 0.15), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-1.5, 0, -0.1),
	HipPitch = 1,

	AimOffset = Vector(-2, 0, -0.2),
	AimPitch = 0.5,

	Time = 0.5 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 3

SWEP.Sights = {
	Enabled = true,

	Time = 0.3, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.5,
	Distance = 14, -- Distance from the attachment point on the weapon model

	Scoped = false,

}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 2 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 0.5
}

SWEP.Voxel = {
	Model = "pandazumi/p90",
	Scale = 0.5,

	View = {
		Pos = Vector(22, -6, -6.5),
		Ang = Angle(0, 0, 0)
	},

	World = {
		Pos = Vector(5, 1, 1),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 7, -3),
		Ang = Angle(15, 25, 0)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/p90_firing.wav"),
	Reload = Sound("weapons/pandazumi/mp7_reload.wav")
}
