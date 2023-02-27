NDefines.NMilitary.SLACKEN_AP_DROP = 0.05
NDefines.NMilitary.SLACKEN_MANPOWER_INCREASE = 2

NDefines.NMilitary.ARMY_DRILL_YEARLY_DECAY = -1.0					-- Loss from not Drilling

NDefines.NMilitary.SAILOR_MAINTAINANCE = 0.03

NDefines.NMilitary.BASE_MP_TO_MANPOWER = 0.00					-- 0 men per manpower     ### DO MODIFIED FROM .5
NDefines.NMilitary.SIEGE_ATTRITION = 3
NDefines.NMilitary.HEAVY_SHIP_SAILORS_COST = 500				-- 1 = 1000 men in cost.
NDefines.NMilitary.LIGHT_SHIP_SAILORS_COST = 250				-- 1 = 1000 men in cost.
NDefines.NMilitary.GALLEY_SHIP_SAILORS_COST = 150				-- 1 = 1000 men in cost.
NDefines.NMilitary.TRANSPORT_SHIP_SAILORS_COST = 50				-- 1 = 1000 men in cost.
NDefines.NMilitary.MAX_MANPOWER = 25 							-- years in mp pool
NDefines.NMilitary.MIN_MONTHLY_MANPOWER = 0.01					-- 150 men/month is minimum    # DO MODIFIED FROM .15
NDefines.NMilitary.INFANTRY_SPEED = 0.5 						-- _MDEF_INFANTRY_SPEED = 10,
NDefines.NMilitary.CAVALRY_SPEED = 0.5 							-- _MDEF_CAVALRY_SPEED = 10,
NDefines.NMilitary.ARTILLERY_SPEED = 0.5 						-- _MDEF_ARTILLERY_SPEED = 10,
NDefines.NMilitary.HEAVY_SHIP_SPEED = 4.0						-- _MDEF_HEAVY_SHIP_SPEED = 10,
NDefines.NMilitary.LIGHT_SHIP_SPEED = 6.0						-- _MDEF_LIGHT_SHIP_SPEED = 10,
NDefines.NMilitary.GALLEY_SPEED = 4.0							-- _MDEF_GALLEY_SPEED = 10,
NDefines.NMilitary.TRANSPORT_SPEED = 4.0						-- _MDEF_TRANSPORT_SPEED = 10,
NDefines.NMilitary.INFANTRY_COST = 28.0 						-- _MDEF_INFANTRY_COST = 10	     was 14 Modified by Demian
NDefines.NMilitary.CAVALRY_COST = 44.0 							-- _MDEF_CAVALRY_COST = 10	     was 22 Modified by Demian
NDefines.NMilitary.ARTILLERY_COST = 64.0 						-- _MDEF_ARTILLERY_COST = 10	 was 32 Modified by Demian
NDefines.NMilitary.FORTRESS_COST = 0.3							-- monthly cost per fortlevel.
NDefines.NMilitary.HEAVY_SHIP_COST = 50 						-- _MDEF_HEAVY_SHIP_COST = 10
NDefines.NMilitary.LIGHT_SHIP_COST = 30 						-- _MDEF_LIGHT_SHIP_COST = 10
NDefines.NMilitary.GALLEY_COST = 14 							-- _MDEF_GALLEY_COST = 10
NDefines.NMilitary.TRANSPORT_COST = 10							-- _MDEF_TRANSPORT_COST = 10
NDefines.NMilitary.HEAVY_SHIP_TIME = 730 						-- _MDEF_HEAVY_SHIP_TIME = 10
NDefines.NMilitary.LIGHT_SHIP_TIME = 455 						-- _MDEF_LIGHT_SHIP_TIME = 10
NDefines.NMilitary.GALLEY_TIME = 320 							-- _MDEF_GALLEY_TIME = 10
NDefines.NMilitary.TRANSPORT_TIME = 275 						-- _MDEF_TRANSPORT_TIME = 10
NDefines.NMilitary.MONTHLY_REPAIR = 0.05						-- Ship repair speed.
NDefines.NMilitary.EXTRA_LAND_REINFORCE_COST = 2.5				-- extra cost for reinforcing land units (as a multiplier of maintenance). Was 1.5, changed by Demian / Was 3.0 changed by Khardinal 20/11/2016
NDefines.NMilitary.MERCENARY_REINFORCE_COST_MULTIPLIER = 0.8	-- +80% extra cost for mercenaries being reinforced.
NDefines.NMilitary.MERCENARY_BASE_COST = 0.0					-- base cost added for a mercenary regiment
NDefines.NMilitary.TRADITION_GAIN_LAND = 30						-- Tradition gain base value from land combat.
NDefines.NMilitary.TRADITION_GAIN_NAVAL = 45					-- Tradition gain base value from naval combat.  
NDefines.NMilitary.BASE_COMBAT_WIDTH = 9.0						-- _MDEF_BASE_COMBAT_WIDTH_
NDefines.NMilitary.LOOTED_DAYS = 730							-- Time the "Looted" static modifier lasts.
NDefines.NMilitary.LOOTED_SCALE = 0								-- Scaling value from province development to number of ducats it contains.
NDefines.NMilitary.LOOTED_MAX = 50								-- Maximum amount of ducats (total) a province can be looted for each month.
NDefines.NMilitary.LOOTED_RECOVERY = 0.05						-- Speed at which a looted province recovers in fractional units per month (multiply by 100 for percentage).
NDefines.NMilitary.INF_LOOT = 0								-- How many ducats/month will a single full strength infantry regiment loot?
NDefines.NMilitary.CAV_LOOT = 0								-- How many ducats/month will a single full strength cavalry regiment loot?
NDefines.NMilitary.ART_LOOT = 0							-- How many ducats/month will a single full strength artillery regiment loot?
NDefines.NMilitary.NAVAL_SUPPLY_RANGE = 120 					-- Supply range for ships.
NDefines.NMilitary.DEFAULT_WARGOAL_TICKINGWARSCORE_BONUS = 0.5		-- Amount of warscore per month since attacker/defender started getting the bonus for completing war goal {was 0.4 Vanilla}
NDefines.NMilitary.WARGOAL_MAX_BONUS = 30						-- was 25
NDefines.NMilitary.DEFAULT_WARGOAL_WARSCORE_BONUS	= 4			-- Warscore bonus { was 5 }
NDefines.NMilitary.DEFAULT_WARGOAL_BATTLESCORE_BONUS = 4		-- Battle score bonus from winning battles { was 8 }
NDefines.NMilitary.WARSCORE_MAX_FROM_BATTLES = 50				-- maximum amount to get from a battles . { was 40 }
NDefines.NMilitary.NOMAD_LOOT_TRADITION = 0.005 				-- _MDEF_NOMAD_LOOT_TRADITION_;Military tradition a horde gets from looting territory
NDefines.NMilitary.SUPPLYLIMIT_BASE_MULTIPLIER = 1.0 			-- 
NDefines.NMilitary.WAR_LENGTH_DAMAGE_MODIFIER = 0.025			-- How much (by percentage) the damage dealt will be increased each day of the combat {was 0.02}
NDefines.NMilitary.SHATTERED_RETREAT_SPEED_MODIFIER = 0.25		-- How much (by percentage) the movement speed will be modified when doing a shattered retreat
NDefines.NMilitary.OVERRUN_FACTOR_CANNOT_LEAVE = 2				-- Same as OVERRUN_FACTOR, but when combat cannot be left by the combattants. (integer)
NDefines.NMilitary.BLOCKADE_FACTOR = 3							-- (Total sail speed / blockade_factor) * blockade_efficiency / province base tax
NDefines.NMilitary.REBEL_LEADER_POWER = 18						-- The higher this value the more pips rebel leaders will have on average
NDefines.NMilitary.PRESTIGE_FROM_LAND = 5						-- Maximum base prestige from land battles (unmodified).
NDefines.NMilitary.PRESTIGE_FROM_NAVAL = 5						-- Maximum base prestige from naval battles (unmodified).
NDefines.NMilitary.MERCENARY_SUPPORT_LIMIT_BASE = 2						-- Base (and thus minimum) value for mercenary support limit.
NDefines.NMilitary.MERCENARY_SUPPORT_LIMIT_FRACTION = 0.3					-- Fraction of regular army support/force limit that goes into mercenary support limit.
NDefines.NMilitary.CONDOTTIERI_TRADITION_BONUS = 1

NDefines.NMilitary.FORT_PER_DEV_RATIO = 30						-- 1 non-obsolete maintained fort per this amount of development = +1 AT

NDefines.NMilitary.DAYS_PER_SIEGE_PHASE = 20					--- was 30.  Siege length reduced by a third, deadliness increased.
NDefines.NMilitary.MONTHLY_REINFORCE = 0.1						--- reinforce moved back to 10 to account for higher attrition
NDefines.NMilitary.SIEGE_DISEASE_IMPACT = 0.0
NDefines.NMilitary.SIEGE_FORCE_NEEDED_MULTIPLIER = 2
NDefines.NMilitary.SIEGE_MEMORY = 100 -- Default: 11
NDefines.NMilitary.SIEGE_MEMORY_SCALED = 0 -- Default: 1

NDefines.NMilitary.FORT_DEVASTATION_IMPACT = 0
NDefines.NMilitary.REVANCHISM_DEVASTATION_IMPACT = 0
NDefines.NMilitary.SURRENDER_DEVASTATION_IMPACT = 0
NDefines.NMilitary.DEVASTATION_DEVELOPMENT_SCALE = 0
NDefines.NMilitary.LOOT_DEVASTATION_IMPACT = 0
NDefines.NMilitary.SCORCHED_DEVASTATION_IMPACT = 0

NDefines.NMilitary.NAVAL_BASE_ENGAGEMENT_WIDTH = 16   		-- Number of ships that can fire per round
NDefines.NMilitary.HEAVY_SHIP_COMBAT_WIDTH = 3
NDefines.NMilitary.LIGHT_SHIP_COMBAT_WIDTH = 1
NDefines.NMilitary.GALLEY_COMBAT_WIDTH = 1
NDefines.NMilitary.TRANSPORT_COMBAT_WIDTH = 1
NDefines.NMilitary.NAVAL_CASUALTY_MIN_MORALE_DAMAGE = 0.0
