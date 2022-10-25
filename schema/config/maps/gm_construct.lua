impulse.Config.MapWorkshopID = "0"

impulse.Config.MenuCamPos = Vector(1075.1514892578, 5697.61328125, 2065.0930175781)
impulse.Config.MenuCamAng = Angle(19.0080909729, -134.59184265137, 0)

impulse.Config.BroadcastPos = Vector(1127.15625, 147.5, -135.09375)

impulse.Config.BroadcastDistance = 600

impulse.Config.BlacklistEnts = {
	["game_text"] = true,
	["lua_run"] = true,
	["item_healthcharger"] = true,
	["item_suitcharger"] = true,
	["trigger_weapon_strip"] = true,
	["npc_turret_ceiling"] = true
}

impulse.Config.Zones = {
    {name = "Skyscraper 1", pos1 = Vector(708.60736083984, -1028.3405761719, -159.28436279297), pos2 = Vector(1843.1616210938, -2163.724609375, 2095.2524414063)},
    {name = "Spawn", pos1 = Vector(647.11767578125, -895.15197753906, -160.42514038086), pos2 = Vector(1854.5856933594, 1699.3032226563, 400.59237670898)},
    {name = "Waterfront", pos1 = Vector(830.55767822266, 1713.8902587891, -48.883529663086), pos2 = Vector(1813.4959716797, 6411.9736328125, 824.97705078125)},
    {name = "Skyscraper 2", pos1 = Vector(-1600.2590332031, -2240.3227539063, 233.92739868164), pos2 = Vector(-2997.7045898438, -3297.6450195313, 4038.1477050781)},
    {name = "Skyscraper 3", pos1 = Vector(-3919.9045410156, 4619.9477539063, -119.47283935547), pos2 = Vector(-4998.2338867188, 6024.9072265625, 3670.587890625)},
    {name = "The Bay", pos1 = Vector(1854.7111816406, 6462.4814453125, -860.53485107422), pos2 = Vector(-2919.8630371094, 2086.4272460938, -60.339908599854)},
    {name = "North Plaza", pos1 = Vector(-5119.6201171875, 4538.875, -123.37021636963), pos2 = Vector(-3007.9675292969, -895.44641113281, 409.23565673828)},
    {name = "Grassbig", pos1 = Vector(-5119.5063476563, -3583.7736816406, 227.03070068359), pos2 = Vector(-3198.8391113281, -1024.5819091797, 1806.7736816406)},
    {name = "South Plaza", pos1 = Vector(628.71771240234, 1852.8704833984, -73.168563842773), pos2 = Vector(-2993.8759765625, -903.31396484375, 2029.1840820313)},
    {name = "The Room", pos1 = Vector(-5246.4770507813, -2558.1337890625, 132.8077545166), pos2 = Vector(-3248.9787597656, -1056.8620605469, -168.25608825684)},
    {name = "Color room", pos1 = Vector(-809.49938964844, -2633.2834472656, -282.29959106445), pos2 = Vector(-3286.4350585938, -4566.9501953125, 123.92754364014)},
    {name = "Mirror room", pos1 = Vector(-1195.0242919922, 97.756210327148, -538.83197021484), pos2 = Vector(-2926.6721191406, -2062.7697753906, -201.75532531738)},
    {name = "Passthrough", pos1 = Vector(-3229.2658691406, -2576.8720703125, 93.050132751465), pos2 = Vector(-689.64459228516, -2068.8747558594, -454.8095703125)},
    {name = "Bigspace", pos1 = Vector(495.23126220703, -1023.4298095703, -161.09617614746), pos2 = Vector(-3517.7785644531, -1918.0725097656, 217.517578125)}


}

impulse.Config.IntroScenes = {
	{
	    pos = impulse.Config.MenuCamPos,
	    ang = impulse.Config.MenuCamAng,
	    fovFrom = 40,
	    fovSpeed = 0.2,
	    time = 13,
	    text = "Welcome to impulse: Skeleton Schema.",
	    static = true,
	    fadeIn = true,
	    onStart = function()
	    	CHAR_MUSIC = CreateSound(LocalPlayer(), "music/hl2_song2.mp3")
	    	CHAR_MUSIC:SetSoundLevel(0)
	    	CHAR_MUSIC:ChangeVolume(1.5)
	    	CHAR_MUSIC:ChangePitch(70)
	    	CHAR_MUSIC:Play()
	    end
	}
}

impulse.Config.PrisonAngle = Angle(-1.2061611413956, -88.935508728027, 0)
impulse.Config.PrisonCells = {
	Vector(13257.470703125, 9558.28515625, 456.03125),
	Vector(13549.956054688, 9559.818359375, 456.03125)
}


impulse.Config.Buttons = {

}

impulse.Config.ApartmentBlocks = {

}

impulse.Config.LoadScript = function()
end

