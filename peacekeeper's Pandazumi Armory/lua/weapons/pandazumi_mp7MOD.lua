AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Cheeta SMG MOD"
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

	ClipSize = 32,
	DefaultClip = 160,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = 3

SWEP.AutoBurst = true -- Whether the gun continues into the next burst by itself
SWEP.BurstDelay = 0.15 -- Delay between bursts, defaults to SWEP.Delay

SWEP.Delay = 0.07 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 20 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 1500 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 12 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 1 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.6 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(0.3, 0.15), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-2, 0, -0.1),
	HipPitch = 1,

	AimOffset = Vector(-3, 0, -0.25),
	AimPitch = 0.25,

	Time = 0.5 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 2.6

SWEP.Sights = {
	Enabled = true,

	Time = 0.3, -- Time it takes to zoom in, also affects sprint and deploy times
	Zoom = 1.6,
	Distance = 14, -- Distance from the attachment point on the weapon model

	Scoped = false,

	Holosight = true,
	Attachment = "aim",

	GlassSize = Vector(1.5, 3),
	GlassColor = Color(0, 0, 0, 50),

	HoloSize = Vector(2, 2),
	HoloColor = Color(255, 0, 0),
	HoloMaterial =  Material("reticles/eotech")
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
	Model = "pandazumi/mp7-2",
	Scale = 0.55,

	View = {
		Pos = Vector(22, -6, -8),
		Ang = Angle(0, 0, 0)
	},

	World = {
		Pos = Vector(4.8, 1, 0),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 7, -3),
		Ang = Angle(15, 25, 0)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/mp7_firing2.wav"),
	Reload = Sound("weapons/pandazumi/mp7_reload2.wav")
}
