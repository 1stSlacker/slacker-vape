Need help? Join our discord for support! https://discord.gg/7nPySrd7wv

Dependency: https://github.com/1stSlacker/slacker-vapecrafting

Step 1: Drag and drop the slacker-vape and slacker-vapecrafting script anywhere in your resource directory. 

If not placed in a folder, make sure to put the following code in your server.cfg.

ensure slacker-vape
ensure slacker-vapecrafting

Step 2: Add these following lines anywhere in your [qb]/qb-core/shared/items.lua script.

--slacker-vape
vape                   	    = { name = "vape", label = "Vape",	weight = 0, type = "item", image = "vape.png", unique = true, useable = true, shouldClose = true, description = "A vape pen"},
vapejuice1                  = { name = "vapejuice1", label = "Pink Burst",	weight = 0, type = "item", image = "pinkburst.png", unique = false, useable = true, shouldClose = true, description = "Pink Burst flavored vape juice"},

--slacker-whitewidow
nicotine                    = { name = "nicotine", label = "Nicotine",	weight = 0, type = "item", image = "nicotine.png", unique = false, useable = true, shouldClose = true, description = "Ingredient used to craft vape juice"},
emptycoil                   = { name = "emptycoil", label = "Empty Coil",	weight = 0, type = "item", image = "emptycoil.png", unique = false, useable = true, shouldClose = true, description = "Ingredient used to craft vape juice"},
pinkflavor                  = { name = "pinkflavor", label = "Pink Flavor",	weight = 0, type = "item", image = "pinkflavor.png", unique = false, useable = true, shouldClose = true, description = "Ingredient Pink Burst flavored vape juice"},
blackplastic                = { name = "blackplastic", label = "Black Plastic",	weight = 0, type = "item", image = "blackplastic.png", unique = false, useable = true, shouldClose = true, description = "Ingredient used to craft vapes"},
vapebattery                 = { name = "vapebattery", label = "Vape Battery",	weight = 0, type = "item", image = "vapebattery.png", unique = false, useable = true, shouldClose = true, description = "Batteries used to craft vapes"},

Step 3: Open slacker-vape/images

Copy all pictures and paste it in your [qb]/qb-inventory/html/images

The script is set up! Make sure to restart your server so the new items are created! Happy Vaping!

ONLY IF YOU HAVE SLACKER-VAPECRAFTING
Step 4: Open [qb]/qb-shops/config.lua 

Paste the following in Config.Products

['slackervape'] = {
        { name = 'blackplastic',         price = 10,  amount = 250 },
        { name = 'emptycoil',            price = 15,  amount = 250 },
        { name = 'pinkflavor',           price = 25,  amount = 250 },
        { name = 'vapebattery',           price = 15,  amount = 250 },
    },
	
Paste the following in Config.Locations

['slackervape'] = {
        ['label'] = 'White Widow',
        ['coords'] = vector4(193.65, -234.14, 54.07, 206.73),
        ['ped'] = 'a_m_y_beach_01',
        ['scenario'] = 'WORLD_HUMAN_STAND_MOBILE_CLUBHOUSE',
        ['radius'] = 1.5,
        ['targetIcon'] = 'fas fa-leaf',
        ['targetLabel'] = 'Open Vape Shop',
        ['products'] = Config.Products['slackervape'],
        ['showblip'] = true,
        ['blipsprite'] = 469,
        ['blipscale'] = 0.8,
        ['blipcolor'] = 2,
        ['requiredJob'] = 'vapeshop',
    },
	
Step 5: Open [qb]/qb-management/config.lua and add the following to Config.BossMenus

whitewidow = { 
        vector3(183.4605, -251.0923, 53.8805), --move to where you want your bossmenu to be
    },
	
Step 6: Open your [qb]/qb-core/shared/jobs.lua and paste the following to QBShared.Jobs

whitewidow = {
		label = 'White Widow',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = { name = 'Farmer', payment = 50 },
			['1'] = { name = 'Crafter', payment = 75 },
			['2'] = { name = 'Supervisor', payment = 100 },
			['3'] = { name = 'Owner', isboss = true, payment = 150 },
		},
	},
	
Step 7: Open the mlo folder in ../slacker-vape/mlo

Drag and drop the int_weed folder into your mlo folder

The script is set up! Make sure to restart your server so the new items are created! Happy Vaping!
