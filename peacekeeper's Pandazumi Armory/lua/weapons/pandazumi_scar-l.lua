AddCSLuaFile()
DEFINE_BASECLASS("spades_base")

SWEP.Base = "spades_base"

SWEP.PrintName = "Raider's Battle rifle"
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

	ClipSize = 30,
	DefaultClip = 120,
}

-- -1 = automatic, 0 = semi, 1+ = burst
SWEP.Firemode = -1

SWEP.Delay = 0.09 -- Delay between shots in seconds, use X / 60 for rounds per minute
SWEP.Cost = 1 -- Amount of ammo taken out of the magazine per shot

SWEP.Count = 1 -- Amount of bullets per shot
SWEP.Damage = 30 -- Damage per bullet, gets divided by SWEP.Count internally (input final damage, not per-bullet damage)

SWEP.Range = 2700 -- Range in source units at which every shot lands in a SWEP.Accuracy radius circle
SWEP.Accuracy = 14 -- In source units: 6 = head sized, 12 = torso sized

SWEP.BaseSpread = 15 / 60 -- Diameter of a circle in degrees, divide by 60 for MOA. Applied separately to every bullet (use for shotguns)
SWEP.HipSpread = 1.2 -- Same unit as SWEP.BaseSpread, added when hipfiring
SWEP.MoveSpread = 1.6 -- Same unit as SWEP.BaseSpread, added when moving

SWEP.MoveSpeed = 0.4 -- Movespeed multiplier: 1 = run speed, 0 = alt-walk speed

SWEP.Recoil = {
	Kick = Angle(1.1, 0.8), -- View kick

	-- Viewmodel kick
	HipOffset = Vector(-1.5, 0, -1),
	HipPitch = 1.2,

	AimOffset = Vector(-1, 0, -0.12),
	AimPitch = 1.6,

	Time = 0.4 -- Time it takes for the viewmodel to reset
}

-- >0 for shotgun-style reloads
SWEP.ReloadAmount = 0

-- Per-round time for shotgun-style reloads
SWEP.ReloadTime = 3.6

SWEP.Sights = {
	Enabled = true,

	Time = 0.43, -- Time it takes to zoom in, also affects sprint and deploy times even if sights are disabled
	Zoom = 1.5,
	Distance = 14 -- Distance from the attachment point on the weapon model

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
	Model = "pandazumi/scar-l",
	Scale = 0.5,

	View = {
		Pos = Vector(23, -6, -7),
		Ang = Angle()
	},

	World = {
		Pos = Vector(5, 1, 0.5),
		Ang = Angle()
	},

	Lower = {
		Pos = Vector(0, 5, -2),
		Ang = Angle(17, 32, 6)
	}
}

SWEP.Sounds = {
	Fire = Sound("weapons/pandazumi/scar-l_firing.wav"),
	Reload = Sound("weapons/pandazumi/g36_reload.wav")
}
