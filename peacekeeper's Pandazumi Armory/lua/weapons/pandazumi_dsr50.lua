AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Kopfjäger sniper rifle"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 4

SWEP.Spawnable = true

SWEP.HoldType = "ar2"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "357",

	ClipSize = 5,
	DefaultClip = 20,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = 0

SWEP.Delay = 1.5 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 120 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 4000 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 4 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 15 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 2.2 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 2.5 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.5 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(3.8, 0.9), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-14, 1, 1),
	HipPitch = 5,

	AimOffset = Vector(-9, 0, 0),
	AimPitch = 3,

	Time = 1.2 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 4.5

SWEP.Sights = {
	Enabled = true,

	Time = 0.7, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 3.5,
	Distance = 10, -- Distance from the attachment point on the weapon model

	Scoped = false

}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 1 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 1.6
}

SWEP.Voxel = {
	Model = "pandazumi/dsr50",
	Scale = 0.6,

	View = {
		Pos = Vector(18, -5.5, -7),
		Ang = Angle()
	},

	World = {
		Pos = Vector(3.5, 1, 0),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/dsr50_firing2.wav"),
	Reload = Sound("weapons/pandazumi/dsr50_reload.wav")
}
