
NDefines.NEconomy.DEBASE_MAX_STORED_MONTHS = 0					-- Debase currency stores up to this many months of charges.
NDefines.NEconomy.DEBASE_MONTHS_PER_CHARGE = 30					-- Amount of months used for one debase charge.
NDefines.NEconomy.DEBASE_MAX_CORRUPTION = 90						-- Above this level of corruption, you won't be able to Debase Currency.
NDefines.NEconomy.DEBASE_ADDED_CORRUPTION = 10					-- This amount of corruption added per standard sized bank loan worth of currency.
NDefines.NEconomy.TRADE_POWER_HOME_BONUS = 0.05
NDefines.NEconomy.TRADE_POWER_HOME_BONUS_MAX = 0.10
NDefines.NEconomy.GOLD_MINE_SIZE = 30							-- Base income from gold mines {was 40 vanilla}
NDefines.NEconomy.GOLD_MINE_SIZE_PRIMITIVES = 20
NDefines.NEconomy.GOLD_MINE_DEPLETION_THRESHOLD = 999			-- Gold mines above production level or above can be depleted
NDefines.NEconomy.GOLD_MINE_DEPLETION_CHANCE = 0				-- Chance of gold mine being depleted (yearly, per production above threshold) 

NDefines.NEconomy.AUTONOMY_AT_DIPLO_ANNEX = 30					-- Autonomy added when diplo-annexing
NDefines.NEconomy.AUTONOMY_AT_CONQUEST = 70						-- Autonomy added at conquest
NDefines.NEconomy.AUTONOMY_AT_CONQUEST_CLAIM = 40				-- Autonomy added at conquest if you have a claim
NDefines.NEconomy.AUTONOMY_AT_CONQUEST_CORE = 10				-- Autonomy added at conquest if you have a core
NDefines.NEconomy.OVERSEAS_MIN_AUTONOMY = 35						-- Overseas provinces always have at least this much autonomy
NDefines.NEconomy.CAPITAL_MAX_AUTONOMY = 100					-- Capital province autonomy can never be above this
NDefines.NEconomy.DECREASE_AUTONOMY_STEP = -10
NDefines.NEconomy.INCREASE_AUTONOMY_STEP = 10
NDefines.NEconomy.INCREASE_AUTONOMY_MAX = 90
NDefines.NEconomy.AUTONOMY_CHANGE_DURATION = 3650				-- about 10 years
NDefines.NEconomy.MERCHANT_MAX_POWER_BONUS = 0.5					-- was 0.5
NDefines.NEconomy.LAND_TECH_MAINTENANCE_IMPACT = 0.05 				-- % each tech increases it.   #CHANGED FROM 0.05 BY DO OVERHAUL
NDefines.NEconomy.ADVISOR_COST = 0.80								-- Advisor cost modifier (was 1.0 by Khardinal)
NDefines.NEconomy.GOLD_INFLATION_THRESHOLD = 0.1				-- _EDEF_GOLD_INFLATION_THRESHOLD_
NDefines.NEconomy.GOLD_INFLATION = 0.60							-- _EDEF_GOLD_INFLATION_
NDefines.NEconomy.TREASURE_FLEET_INFLATION = 0.25
NDefines.NEconomy.INFLATION_FROM_LOAN = 0.50						-- increase per loan
NDefines.NEconomy.INFLATION_FROM_PEACE_GOLD = 0.04				-- inflation per month of income taken in peace (also applied to province sales)
NDefines.NEconomy.INFLATION_ACTION_REDUCTION = 1				-- amount per action
NDefines.NEconomy.WARTAXES_DURATION = 12						-- _EDEF_WARTAXES_DURATION_
NDefines.NEconomy.BASE_INTERESTS = 8.0							-- Base interests
NDefines.NEconomy.LAND_MAINTENANCE_FACTOR = 0.10				-- _EDEF_LAND_MAINTENANCE_FACTOR  ### Demian changed from 1.5, but base costs were increased
NDefines.NEconomy.HEAVY_SHIP_MAINT_FACTOR = 0.05				-- _EDEF_HEAVY_SHIP_MAINT_FACTOR_
NDefines.NEconomy.LIGHT_SHIP_MAINT_FACTOR = 0.05				-- _EDEF_LIGHT_SHIP_MAINT_FACTOR_
NDefines.NEconomy.GALLEY_MAINT_FACTOR = 0.05					-- _EDEF_GALLEY_MAINT_FACTOR_
NDefines.NEconomy.TRANSPORT_MAINT_FACTOR = 0.05					-- _EDEF_TRANSPORT_MAINT_FACTOR_
NDefines.NEconomy.COLONIAL_MAINTENANCE_FACTOR = 3.0				-- _EDEF_COLONIAL_MAINTENANCE_FACTOR_
NDefines.NEconomy.COASTAL_MODIFIER = 0.7						-- _EDEF_COASTAL_MODIFIER_
NDefines.NEconomy.EMBARGO_BASE_EFFICIENCY = 0.9					-- EMBARGO_BASE_EFFICIENCY
NDefines.NEconomy.TRADE_ADDED_VALUE_MODIFER = 0.065				-- This is actually multiplied by 2.26, because paradox.
NDefines.NEconomy.TRADE_PROPAGATE_DIVIDER = 5					-- was 5
NDefines.NEconomy.TRADE_PROPAGATE_THRESHOLD = 1				-- was 2
NDefines.NEconomy.ALLOW_DESTROY_MANUFACTORY = 1					-- Should the player be permitted to destroy manufactories?
NDefines.NEconomy.PIRATES_TRADE_POWER_FACTOR = 1.5
NDefines.NEconomy.PIRATES_MONOPOLY_BONUS = 2						-- Factor of monopolization of node added to privateer power efficiency.
NDefines.NEconomy.TRADE_COMPANY_STRONG_LIMIT = 0.34
NDefines.NEconomy.LARGE_COLONIAL_NATION_LIMIT = 10
NDefines.NEconomy.TRADE_CAPITAL_POWER = 0.5
NDefines.NEconomy.TRADE_MERCHANT_PRESENT = 0.15						-- was 0.05
NDefines.NEconomy.PRIVATEER_INCOME_COLLECTION_EFF = 0.35
NDefines.NEconomy.CARAVAN_FACTOR = 50								-- Development is divided by this factor, do not set to zero! {was 50}
NDefines.NEconomy.CARAVAN_POWER_MAX = 15
NDefines.NEconomy.CARAVAN_POWER_MIN = 0.0
NDefines.NEconomy.MAX_BUILDING_SLOTS = 20						-- vanilla 12, Maximum number of buildings slots, i.e. max buildings possible.
NDefines.NEconomy.TRADE_NON_CAPITAL_OFFICE = -0.60				-- TRADE_NON_CAPITAL_OFFICE

NDefines.NEconomy.COLONIST_CHANCE = 0.01
NDefines.NEconomy.TRADED_FRACTION_FOR_BONUS = 2.00 -- 200% required trade control of a trade good makes it impossible to obtain the "Trading in <trade good>" bonus.

-- Bankruptcy will destroy building that have been build in the latest X amount of years. Set to zero to disable the destruction mechanic.
-- Default: 5
NDefines.NEconomy.BANKRUPTCY_BUILDING_DESTRUCTION_THRESHOLD = 0

-- Devastation gained in country provinces after declaring bankrutcy.
-- Default: 10
NDefines.NEconomy.BANKRUPTCY_PROVINCE_DEVASTATION_GAIN = 0

NDefines.NEconomy.MISSIONARY_MAINTENANCE_FACTOR = 0.0
NDefines.NEconomy.MISSIONARY_MAINTENANCE_DEVELOPMENT_FACTOR = 0.5
NDefines.NEconomy.MISSIONARY_MAINTENANCE_AUTONOMY_FACTOR = 0.0 		-- does nothing currently.
NDefines.NEconomy.MISSIONARY_MAINTENANCE_AUTONOMY_BASE = 0.1
NDefines.NEconomy.MISSIONARY_MAINTENANCE_DEVELOPMENT_CAP = 45
NDefines.NEconomy.MISSIONARY_TIME_BASE = 1000
NDefines.NEconomy.MISSIONARY_TIME_DISTANCE = 0.2
