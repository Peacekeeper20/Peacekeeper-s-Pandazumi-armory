AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "S-OB7 shotgun"
SWEP.Author = "Peacekeeper"

SWEP.Category = "Peacekeeper's Pandazumi armory"
SWEP.Slot = 3

SWEP.Spawnable = true

SWEP.HoldType = "shotgun"
SWEP.LowerType = "passive"

SWEP.CustomHoldType = {}
SWEP.CustomLowerType = {}

SWEP.Primary = {
	Ammo = "Buckshot",

	ClipSize = 7,
	DefaultClip = 40,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = 0

SWEP.Delay = 1 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 12 -- Amount of bullets per shot
SWEP.Damage = 120 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 1800 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 0 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 1.6 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.2 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.6 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(4, 2), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-15, 0, -2),
	HipPitch = 15,

	AimOffset = Vector(-10, 0, -1),
	AimPitch = 5,

	Time = 1 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 1

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 0.5

SWEP.Sights = {
	Enabled = true,

	Time = 0.4, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.2,
	Distance = 20, -- Distance from the attachment point on the weapon model
}

SWEP.Tracer = {
	Effect = "voxel_tracer_smg",
	Frequency = 2 -- Add a tracer every X shots
}

SWEP.Muzzle = {
	Effect = "voxel_muzzle_smg",
	Size = 2
}

SWEP.Voxel = {
	Model = "pandazumi/fp6",
	Scale = 0.5,

	View = {
		Pos = Vector(18, -6, -7.5),
		Ang = Angle()
	},

	World = {
		Pos = Vector(3, 1, 0),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 7, -3),
		Ang = Angle(15, 25, 0)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/peacegun/oldshotgun_firing.wav"),
	ReloadSingle = "Weapon_Shotgun.Reload"
}
