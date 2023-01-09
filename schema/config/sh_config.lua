-- Framework related
impulse.Config.SchemaName = "Skeleton Schema"
impulse.Config.SchemaVersion = "1.0.0"
impulse.Config.SchemaCredits = [[<font=Impulse-Elements23>nick</font>]]

impulse.Config.MainColour = Color(255, 59, 48, 255)
impulse.Config.InteractColour = Color(251, 197, 49)

impulse.Config.UserSlots = 128 -- any other slots will be donator slots

impulse.Config.IntroMusic = "music/hl1_song20.mp3"

impulse.Config.SignalsUpdateTime = 2

impulse.Config.WalkSpeed = 100
impulse.Config.JogSpeed = 200
impulse.Config.SlowWalkRatio = 0.6

impulse.Config.TalkDistance = 300
impulse.Config.WhisperDistance = 90
impulse.Config.YellDistance = 550
impulse.Config.VoiceDistance = 550

impulse.Config.OOCLimit = 16
impulse.Config.OOCLimitVIP = 28

impulse.Config.PropLimit = 90
impulse.Config.PropLimitDonator = 170

impulse.Config.BuyableSpawnLimit = 6
impulse.Config.DroppedItemsLimit = 20
impulse.Config.DroppedMoneyLimit = 10
impulse.Config.ChairsLimit = 3

impulse.Config.StartingMoney = 50
impulse.Config.StartingBankMoney = 450
impulse.Config.CurrencyPrefix = "$"
impulse.Config.CurrencyName = "dollars"
impulse.Config.CurrencyHUDName = "Money" -- Capitalized so you dont have to do DUMB SHIT STRING METHODS
impulse.Config.ATMModel = "models/props_combine/combine_intwallunit.mdl"

impulse.Config.XPTime = 600
impulse.Config.XPGet = 10 -- double xp (normal: 5)
impulse.Config.XPGetVIP = 20 -- double xp (normal: 10)

impulse.Config.RationTime = 3600

impulse.Config.AFKTime = 360 -- 6 mins
impulse.Config.AFKKickRatio = 0.95

impulse.Config.TeamChangeTime = 120
impulse.Config.TeamChangeTimeDonator = 15

impulse.Config.ClassChangeTime = 60
impulse.Config.QuizWaitTime = 20 -- in mins

impulse.Config.RespawnTime = 50
impulse.Config.RespawnTimeDonator = 20

impulse.Config.BodyDeSpawnTime = 360 -- 6 mins
impulse.Config.BrokenLegsHealTime = 300 -- 5 mins

impulse.Config.PropPrice = 5
impulse.Config.PropPriceDonator = 2

impulse.Config.RPNameChangePrice = 60

impulse.Config.CosmeticGenderPrice = 600
impulse.Config.CosmeticModelSkinPrice = 120

impulse.Config.MaxLetters = 3

impulse.Config.HungerTime = 60
impulse.Config.HungerHealTime = 25

impulse.Config.InventoryMaxWeight = 20 -- in kg
impulse.Config.InventoryStorageMaxWeight = 80
impulse.Config.InventoryStorageMaxWeightVIP = 160
impulse.Config.InventoryItemDeSpawnTime = 300
impulse.Config.InventoryStorageModel = "models/props/cs_militia/footlocker01_closed.mdl"
impulse.Config.InventoryStoragePublicModel = "models/props_c17/lockers001a.mdl"

impulse.Config.GroupMakeCost = 10000
impulse.Config.GroupXPRequirement = 1500
impulse.Config.GroupMaxMembers = 20
impulse.Config.GroupMaxMembersVIP = 100
impulse.Config.GroupMaxRanks = 13
impulse.Config.GroupMaxRanksVIP = 20

impulse.Config.DiscordLeadModRoleID = "917454069256310824"
impulse.Config.AutoModCooldown = 130
impulse.Config.AutoModMaxRisk = 15

impulse.Config.CommunityURL = "https://forums.landis-community.com/"
impulse.Config.PanelURL = "https://panel.landis-community.com/"
impulse.Config.DonateURL = "https://panel.landis-community.com/index.php?t=shop"
impulse.Config.DiscordURL = "https://discord.gg/landis"
impulse.Config.SupportURL = "https://support.landis-community.com/" -- this can just be the forum url
impulse.Config.DiscordRelayURL = "" -- not required
impulse.Config.ReqwestDiscordWebhookURL = "" -- your discord webhook. For this also to work you need to install https://github.com/WilliamVenner/gmsv_reqwest
impulse.Config.RulesURL = ""
impulse.Config.TutorialURL = ""

-- Optional, if you don't have it delete the line below. Used for newsfeed. Requires: https://wordpress.org/plugins/better-rest-api-featured-images/
impulse.Config.WordPressURL = ""
impulse.Config.DefaultWordPressImage = "https://raw.githubusercontent.com/vingard/impulse-issues/master/announcement.png"

impulse.Config.DisabledPlugins = {
	["season_xmas"] = true,
	["season_halloween"] = true,
	["season_aprilfools"] = true
}

impulse.Config.DoorPrice = 10
impulse.Config.DoorGroups = {}

impulse.Config.RankColours = {
	["superadmin"] = Color(12, 120, 255),
	["communitymanager"] = Color(255, 60, 35),
	["leadadmin"] = Color(128, 0, 128),
	["admin"] = Color(52, 199, 89),
	["moderator"] = Color(52, 199, 89),
	["donator"] = Color(212, 185, 9)
}

impulse.Config.SaveableAmmo = {
	["Pistol"] = true,
	["SMG1"] = true,
	["357"] = true,
	["Buckshot"] = true,
	["AR2"] = true,
	["Rifle"] = true
}

impulse.Config.Achievements = {
	["ach_fromthegrave"] = {
		Name = "From The Grave",
		Desc = "Kill a player while dead",
		Icon = Material("impulse/icons/toxic-256.png")
	},
	["ach_greatescape"] = {
		Name = "The Great Escape",
		Desc = "Break out of jail",
		Icon = Material("impulse/icons/exit-128.png")
	},
	["ach_deadweight"] = {
		Name = "Dead Weight",
		Desc = "Lose 15+ kilograms of items on death",
		Icon = Material("impulse/icons/weight-128.png")
	},
	["ach_jackofalltrades"] = {
		Name = "Jack Of All Trades",
		Desc = "Master every skill",
		Icon = Material("impulse/icons/bar-chart-5-128.png"),
		OnJoin = true,
		Check = function(ply)
			for v,k in pairs(impulse.Skills.Skills) do
				if ply:GetSkillXP(v) < 4500 then
					return false
				end
			end

			return true
		end
	},
	["ach_dayone"] = {
		Name = "Veteran",
		Desc = "Play the server from day 1",
		Icon = Material("impulse/icons/star-128.png"),
		OnJoin = true,
		Check = function(ply)
			if ply.impulseFirstJoin and ply.impulseFirstJoin < 1642999217 then -- unix epoch of 11/24/2019 (release first 30ish hours)
				return true
			end
		end
	},
	["ach_ourhouse"] = {
		Name = "Our House",
		Desc = "Add 9 people to your door",
		Icon = Material("impulse/icons/group-256.png")
	},
	["ach_pickupthatcan"] = {
		Name = "Pick Up That Can",
		Desc = "Complete Pick Up That Can",
		Icon = Material("impulse/icons/check-mark-128.png")
	},
	["ach_party"] = {
		Name = "Party",
		Desc = "Dance with 15 other players",
		Icon = Material("impulse/icons/party-hat-3-256.png")
	},
	["ach_quickshot"] = {
		Name = "Quick Shot-",
		Desc = "Kill a player that is 100 meters or more away",
		Icon = Material("impulse/icons/gun-2-128.png")
	},
	["ach_donator"] = {
		Name = "<3",
		Desc = "Donate to the server",
		Icon = Material("impulse/icons/heart-128.png"),
		OnJoin = true,
		Check = function(ply)
			if ply:IsDonator() then
				return true
			end
		end
	},
	["ach_vin"] = {
		Name = "Yes, I was the real vin!",
		Desc = "Kill vin",
		Icon = Material("impulse/icons/vin.png"),
		Points = 100
	},
	["ach_nick"] = {
		Name = "Yes, I was the real nick!",
		Desc = "Kill nick",
		Icon = Material("impulse/ach_nick.png"),
		Points = 100
	},
	["ach_costlydeath"] = {
		Name = "Costly Death",
		Desc = "Die to a player with 20000 tokens on you",
		Icon = Material("impulse/icons/banknotes-128.png")
	},
	["ach_bambikiller"] = {
		Name = "Bambi Killer",
		Desc = "Kill a player with less than 30XP",
		Icon = Material("impulse/icons/sad.png")
	},
	["ach_addict"] = {
		Name = "Addict",
		Desc = "Earn over 25000XP",
		Icon = Material("impulse/icons/stop-3-256.png"),
		OnJoin = true,
		Check = function(ply)
			if ply:GetXP() > 25000 then
				return true
			end
		end
	}
}

impulse.Config.ModQuickReplies = {
	"Thanks for submitting this report. I'll need some more information about what your problem is to solve this issue.",
	"Unfortunately we can not help with this type of issue. If you have any issues with rule-breakers feel free to send another report.",
	"Apologies for the delay in responding to this report.",
	"Thank you for your report."
}

impulse.Config.AutoModDict = {
	{
		Terms = {"HI DALE", "HELLO DALE", "DALE", "WHAT IS DALE", "WHO IS DALE"},
		Specific = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hi! I'm Dale, the >>automated<< chipmunk moderator! I'll try to answer your questions before you speak to a staff member to solve your issue!"
	},
	{
		Terms = {"HELP", "JUST HELP", "HELP ME", "ADMIN HELP", "ADMIN", "COME HERE", "COME", "NEED STAFF", "NEED ADMIN", "ADMIN COME HERE", "ADMIN TO ME", "I NEED A ADMIN", "I NEED ADMIN", "TO ME", "MINGE", "HEY"},
		Specific = true,
		IgnorePunc = true,
		Reply = "Hi! I've noticed your report doesn't contain much detail about the situation. We'd really appricate it if you could provide some more information for us by updating the report! Thanks!"
	},
	{
		Terms = {"E2", "HELP"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hey there! We can't provide any specific assistance with how to use E2. To learn about E2 take a look at the tutorials here: https://github.com/wiremod/wire/wiki/Expression-2#Tutorials"
	},
	{
		Terms = {"E2", "HOW"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hey there! We can't provide any specific assistance with how to use E2. To learn about E2 take a look at the tutorials here: https://github.com/wiremod/wire/wiki/Expression-2#Tutorials"
	},
	{
		Terms = {"XP REFUND", "REFUND XP"},
		Specific = false,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hello! We don't offer XP refunds under any circumstances, sorry!"
	},
	{
		Terms = {"CAN I GO ROUGE", "ROUGE PERM", "ROUGE", "ROGUE", "ROGUE PERM", "CAN I GO ROGUE", "ROGUE PERM", "ROUGEPERM", "PERM TO GO ROUGE", "PERM TO GO ROGUE", "ROGUE PERMISSION", "ROUGE PERMISSION"},
		Specific = true,
		IgnorePunc = true,
		Reply = "Hi! I've detected you've submitted a report regarding permission to go rouge, please be aware, that in busy times this report will be low priority for response. Please also be aware that only i3's and i4's can go rouge. JURY units can not go rouge."
	},
	{
		Terms = {"HOW", "DONATE"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hi! Thanks for considering donating! You can donate by pressing F1 and selecting 'Donate'! If you have any issues regarding donating contact us at support.impulse-community.com"
	},
	{
		Terms = {"HOW", "VIP"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "Hi! Thanks for considering donating! You can donate by pressing F1 and selecting 'Donate'! If you have any issues regarding donating contact us at support.impulse-community.com"
	},
	{
		Terms = {"HOW", "GET", "XP"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "You can gain XP by just playing the server! Every 10 minutes you will gain 5XP. If you are a donator you will gain 10XP."
	},
	{
		Terms = {"HOW", "GAIN", "XP"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "You can gain XP by just playing the server! Every 10 minutes you will gain 5XP. If you are a donator you will gain 10XP."
	},
	{
		Terms = {"HOW", "GET", "TOKEN"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "You can get tokens in your ration. Every hour you'll get a ration which you can collect in the Trainstation. You can also get tokens by working in the factory, or trading with other players!"
	},
	{
		Terms = {"HOW", "GET", "MONEY"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "You can get tokens in your ration. Every hour you'll get a ration which you can collect in the Trainstation. You can also get tokens by working in the factory, or trading with other players!"
	},
	{
		Terms = {"CONTENT"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "To download the content press ESC > Options > Other > Allow all custom files from server and click 'Apply'. Then rejoin the server. If you have any other issues press ESC > Addons > Enable All."
	},
	{
		Terms = {"FAILED", "QUIZ"},
		TermsTogether = true,
		IgnorePunc = true,
		RequestClose = true,
		Reply = "I'm sorry to hear that :( -  you can retry the quiz again in " .. string.NiceTime(impulse.Config.QuizWaitTime) .. ". We can't tell you any answers unfortunatley. Good luck next time!"
	}
}

impulse.Config.DefaultTeam = TEAM_CITIZEN

impulse.Config.DefaultMaleModels = {
	Model("models/player/impulse_zelpa/male_01.mdl"),
	Model("models/player/impulse_zelpa/male_02.mdl"),
	Model("models/player/impulse_zelpa/male_03.mdl"),
	Model("models/player/impulse_zelpa/male_04.mdl"),
	Model("models/player/impulse_zelpa/male_05.mdl"),
	Model("models/player/impulse_zelpa/male_06.mdl"),
	Model("models/player/impulse_zelpa/male_07.mdl"),
	Model("models/player/impulse_zelpa/male_08.mdl"),
	Model("models/player/impulse_zelpa/male_09.mdl"),
	Model("models/player/impulse_zelpa/male_10.mdl"),
	Model("models/player/impulse_zelpa/male_11.mdl")
}

impulse.Config.DefaultFemaleModels = {
	Model("models/player/impulse_zelpa/female_01.mdl"),
	Model("models/player/impulse_zelpa/female_02.mdl"),
	Model("models/player/impulse_zelpa/female_03.mdl"),
	Model("models/player/impulse_zelpa/female_04.mdl"),
	Model("models/player/impulse_zelpa/female_06.mdl"),
	Model("models/player/impulse_zelpa/female_07.mdl")
}

impulse.Config.DefaultSkinBlacklist = {
	["models/player/impulse_zelpa/male_02.mdl"] = {14, 22, 6} -- bloody eye skins
}
