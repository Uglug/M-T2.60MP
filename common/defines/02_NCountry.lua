NDefines.NGovernment.GOVERNMENT_REFORM_CHANGE_CORRUPTION = 3		-- was 10
NDefines.NGovernment.GOVERNMENT_REFORM_BASE_COST = 0 
NDefines.NGovernment.GOVERNMENT_REFORM_COST_INCREASE = 0


NDefines.NCountry.OVERSEAS_CLIENT_STATES = 1						-- Allow overseas client states?

NDefines.NCountry.NEIGHBOURBONUS_CAP = -0.05
NDefines.NCountry.BASE_POWER_INCREASE = 4

NDefines.NCountry.ALLOW_ZERO_BASE_VALUES = 1						-- Affects base tax, base manpower, and base production
NDefines.NCountry.ALLOW_ESTATE_AND_PARLIAMENT_SEAT_IN_PROVINCE = 1	-- Whether or not a province can have both an estate and a parliament seat
NDefines.NCountry.ALLOW_ESTATE_IN_CAPITAL = 1						-- Whether or not the capital can be assigned to an estate
NDefines.NCountry.ESTATE_GRANT_PROVINCE_COOLDOWN = 999
NDefines.NCountry.CORRUPTION_COST = 0.03							-- cost for monthly combat per development
NDefines.NCountry.STATE_MAINTENANCE_DEV_FACTOR = 0.025				-- per dev (was 0.10)
NDefines.NCountry.STATE_MAINTENANCE_CONTINENT_FACTOR = 0.0			-- different continet
NDefines.NCountry.STATE_MAINTENANCE_CULTURE_FACTOR = 0.50			-- non accepted culture
NDefines.NCountry.STATE_MAINTENANCE_DISTANCE_FACTOR = 0

NDefines.NCountry.MAX_WAR_EXHAUSTION = 30

NDefines.NCountry.BASE_FREE_POLICIES = 0
NDefines.NCountry.ABANDON_IDEAGROUP_REFUND = 0.20
NDefines.NCountry.MAX_TOLERANCE_HERETIC = 100
NDefines.NCountry.MAX_TOLERANCE_HEATHEN = 100

NDefines.NCountry.CULTURAL_UNION_MIN_DEV = 1200						-- Minimum development to get cultural union effect without Common Sense, or if CULTURAL_UNION_MIN_RANK is set to negative value.
NDefines.NCountry.CULTURAL_UNION_MIN_RANK = 5						-- Minimum rank to get cultural union effect with Common Sense.
NDefines.NCountry.MIN_DEV_FOR_FREE_CITY = 3							-- Capital must have at least this much development to be a free city
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_2 = 99999			-- Need at least this much development to upgrade to government rank 2
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_3 = 99999			-- Need at least this much development to upgrade to government rank 3
NDefines.NCountry.ADDITIONAL_MIN_DEVELOPMENT_FOR_GOV_RANK_X = 99999	-- ADDITIONAL development needed to upgrade to government rank above 3
NDefines.NCountry.HRE_RANK = 6										-- Emperor of the HRE is displayed as this rank (for ruler title only)
NDefines.NCountry.HRE_MAX_RANK = 6									-- for members
NDefines.NCountry.HRE_MAX_RANK_ELECTOR = 6							-- for electors
NDefines.NCountry.MAX_GOV_RANK = 6									-- Max possible is 10
NDefines.NCountry.EXPLORE_COAST_EVENT_CHANCE = 3					-- Chance (in %) of getting an event when exploring coasts
NDefines.NCountry.MIN_TECH_FOR_CIRCUMNAVIGATE = 20					-- Must have this level of dip tech to circumnavigate the globe
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_1 = 2048				-- Provinces for circumnavigation (coast of gambia)
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_2 = 1641				-- Provinces for circumnavigation (magellan strait)
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_3 = 1799				-- Provinces for circumnavigation (hawaii sea)
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_4 = 1992				-- Provinces for circumnavigation (sulu sea)
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_5 = 2027				-- Provinces for circumnavigation (horn of africa)
NDefines.NCountry.CIRCUMNAVIGATION_PROVINCE_6 = 2038				-- Provinces for circumnavigation (cape of good hope)
NDefines.NCountry.MIN_DEV_FOR_OLD_GREAT_POWER = 400					-- Countries with less base tax than this cannot be considered Great Powers
NDefines.NCountry.MAX_ACTIVE_POLICIES = 7							-- how many active policies at once.
--NDefines.NCountry.WESTERNISATION_THRESHOLD = 16					-- techs behind to be allowed to westernize.
--NDefines.NCountry.WESTERN_POWER_TICK = 0							-- max power to transfer every month.
--NDefines.NCountry.WESTERN_POWER_TICK_MIN = 0						-- min power to transfer every month.
--NDefines.NCountry.WESTERN_NEEDED_BASE_POWER = 50000				-- needed for full westernisation						# Inimicus
--NDefines.NCountry.WESTERN_NEEDED_MAX_POWER = 50000				-- needed for full westernisation						# Inimicus - May 2014
--NDefines.NCountry.WESTERN_POWER_TICK_REDUCTION_FACTOR = 15		-- reduce max power transfer by 1 for each multiplication of this in total monthly income.
NDefines.NCountry.PIETY_PERCENTAGE_AT_NEW_RULER = 1.00				-- percentage of piety kept at new ruler. #DEI GRATIA
NDefines.NCountry.PIETY_INCREASE_AT_GOOD_WAR = 0.00					-- #DEI GRATIA
NDefines.NCountry.PIETY_DECREASE_AT_BAD_WAR = 0.00					-- #DEI GRATIA
NDefines.NCountry.ADVISOR_COST_INCREASE_PER_YEAR = 0.005				-- yearly increase in price in percent
NDefines.NCountry.CULTURE_LOSS_THRESHOLD = 0.00 					-- _CDEF_CULTURE_LOSS_THRESHOLD = 10
NDefines.NCountry.CULTURE_GAIN_THRESHOLD = 0.50 					-- _CDEF_CULTURE_GAIN_THRESHOLD = 10
NDefines.NCountry.MONARCH_DEATH_STABILITY_PENALTY = 0				-- Stab hit on monarch death
NDefines.NCountry.MONARCH_DEATH_LEADER_STABILITY_PENALTY = 0		-- Stab hit on monarch death when a leader
NDefines.NCountry.NAT_FOCUS_YEARS_RANK = 3							-- how many years are removed from nat focus cooldown per gov rank above 1
NDefines.NCountry.POWER_MAX = 1900									-- how much power can be stored at maximum.
NDefines.NCountry.FREE_IDEA_GROUP_COST  = 1							-- modifier on cheapness of "free" idea group
NDefines.NCountry.IDEA_TO_TECH = -0.0075							-- percentage on tech reduction per idea.
NDefines.NCountry.TECH_TIME_COST = 0.8								-- tech grow with 48% cost over time.
NDefines.NCountry.OVEREXTENSION_FACTOR = 0.5
NDefines.NCountry.PS_BOOST_STABILITY = 0
NDefines.NCountry.PS_BURN_COLONY = 10000
NDefines.NCountry.PS_ASSAULT = 2
NDefines.NCountry.PS_DEMAND_NON_WARGOAL_PROVINCE = 25
NDefines.NCountry.PS_DEMAND_NON_WARGOAL_PEACE = 3
NDefines.NCountry.PS_DEMAND_NON_WARGOAL_PEACE_PRIMITIVES = 0
NDefines.NCountry.PS_MAKE_PROVINCE_CORE = 10						-- vanilla = 10, M&T 1.21 = 2 {was 5 }
NDefines.NCountry.PS_REDUCE_INFLATION = 40
NDefines.NCountry.PS_BUY_IDEA = 250
NDefines.NCountry.PS_ADVANCE_TECH = 400
NDefines.NCountry.PS_MOVE_TRADE_PORT = 300
NDefines.NCountry.PS_HARSH_TREATMENT_COST = 100
NDefines.NCountry.PS_HARSH_TREATMENT_REDUCE = 25
NDefines.NCountry.PS_GARRISON_SORTIES = 5
NDefines.NCountry.PS_REDUCE_WAREXHAUSTION = 9999
NDefines.NCountry.PS_RAISE_TARIFFS = 25
NDefines.NCountry.PS_LOWER_TARIFFS = 75
NDefines.NCountry.PS_CREATE_TRADE_POST = 15
NDefines.NCountry.PS_IMPROVE_PROVINCE_BASE = 0
NDefines.NCountry.PS_IMPROVE_PROVINCE_MUL = 0
NDefines.NCountry.PS_IMPROVE_PROVINCE_CAPITAL_DISCOUNT = 0
NDefines.NCountry.PS_SET_PRIMARY_CULTURE = 250
NDefines.NCountry.PS_ADD_ACCEPTED_CULTURE = 150
NDefines.NCountry.PS_REMOVE_ACCEPTED_CULTURE = 25
NDefines.NCountry.PS_REMOVE_ACCEPTED_CULTURE_UNREST_DURATION = 10
NDefines.NCountry.PS_PROMOTE_MERCANTILISM = 9999					---disabled until we find out what to do with it.
NDefines.NCountry.PS_MOVE_CAPITAL = 400								---Move capital, DO ADDED

NDefines.NCountry.PS_CHANGE_GOVERNMENT = 9999
NDefines.NCountry.PS_STRENGTHEN_GOVERNMENT = 9999					--Die in a fire /MND

NDefines.NCountry.CORE_COLONY = 0.1									-- Multiplied with base tax colonized by country or overseas, 1.21 = 0.1
NDefines.NCountry.CORE_SAME_REGION = 1.0							-- Multiplied with base tax for colonial nations, 1.21 = 0.25
NDefines.NCountry.CORE_SAME_CONTINENT = 1.0							-- Multiplied with base tax for colonial nations, 1.21 = 0.75
NDefines.NCountry.CORE_HAD_CLAIM = 0.25								-- Impacts MODIFIER_CORE_CREATION, 1.21 = 0.25
NDefines.NCountry.CORE_HAD_PERMANENT_CLAIM = 0.50					-- Impacts MODIFIER_CORE_CREATION
NDefines.NCountry.WAREXHAUSTION_REDUCTION = 1
NDefines.NCountry.RECENT_UPRISING_IN_MONTHS = 180
NDefines.NCountry.UNREST_REVOLT_FACTOR = 0.6						-- How much does each point of unrest contribute to chance of revolt uprising increasing (base)
NDefines.NCountry.UPRISING_INCREASE = 5 							-- Number of percent that the progress increases
NDefines.NCountry.BREAK_VASSAL_PRESTIGE_PENALTY = -25.0				-- Prestige penalty when break vassalisation
NDefines.NCountry.PROVINCE_DISCOVERY_PRESTIGE = 0.1					-- Prestige change when discovered province
NDefines.NCountry.PROVINCE_DISCOVERY_YEARS_TECHNOLOGY = 100		-- Years until discoveries spread within technology group
NDefines.NCountry.PROVINCE_DISCOVERY_YEARS_RELIGION = 100		-- Years until discoveries spread with religion
NDefines.NCountry.CLAIM_LOSE = 50									-- how many years until a claim is lost.
NDefines.NCountry.CORE_LOSE_PRIMARY_CULTURE_TAG = -1				-- how many years until a core is lost for the primary tag of a country.
NDefines.NCountry.YEARS_OF_NATIONALISM = 50 						-- _CDEF_YEARS_OF_NATIONALISM_; Years of Nationalism, 1.21 = 20
NDefines.NCountry.COLONIAL_GROWTH_PENALTY = 25
NDefines.NCountry.REGULAR_COLONY_GROWTH = 7
NDefines.NCountry.COLONIAL_CLAIM_BONUS = 2
NDefines.NCountry.COLONIAL_CLAIM_VIOLATION = -5
NDefines.NCountry.COLONIAL_NATION_GROWTH_IMPACT = 0.5				-- colonies of colonial nations grow slower if desired.
NDefines.NCountry.MONTHS_TO_CORE_MAXIMUM = 120						-- 1.21 = 600
NDefines.NCountry.MONTHS_TO_CORE = 120								-- How many months it will take to core a province, 1.21 = 600
NDefines.NCountry.MONTHS_TO_CHANGE_CULTURE = 120					-- How many months it will take to change culture in a province per basetax.
NDefines.NCountry.STARTING_ARMY_SIZE = 0.35							-- Percentage of force limit
NDefines.NCountry.STARTING_ARMY_SIZE_AT_WAR = 0.4					-- Percentage of force limit
NDefines.NCountry.STARTING_FLEET_SIZE = 0.5 						-- Starting fleet (as percentage of forcelimits)
NDefines.NCountry.REVOLT_SIZE_BASE = 1
NDefines.NCountry.REVOLT_TECH_IMPACT = 0.01 						-- % each tech increases size of rebels by this percent.
NDefines.NCountry.REVOLT_TECH_MORALE = 0.01							-- this MULTIPLIES rebel gains from tech, it is not additive. Max at +60% tech gain.
NDefines.NCountry.REVOLT_SIZE_DEVELOPMENT_MULTIPLIER = 0.3
NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_1_TECH = 29		-- Tech level at which REBEL_ARTILLERY_INCREASE_LEVEL_1_SIZE is applied
NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_2_TECH = 46		-- Tech level at which REBEL_ARTILLERY_INCREASE_LEVEL_2_SIZE is applied
NDefines.NCountry.LIBERTY_DESIRE_MERCANTILISM = 0.					-- Liberty desire from overlord's mercantilism (per Merc).
NDefines.NCountry.LIBERTY_DESIRE_RELATIVE_POWER = 50				-- Liberty desire from relative power to liege
NDefines.NCountry.LIBERTY_DESIRE_DIPLO_TECH = 5						-- Liberty desire per point of diplo tech more than overlord
NDefines.NCountry.LIBERTY_DESIRE_HISTORICAL_FRIEND = -10			-- Liberty desire from being historical friends
NDefines.NCountry.LIBERTY_DESIRE_HISTORICAL_RIVAL = 10				-- Liberty desire from being historical rivals
NDefines.NCountry.LIBERTY_DESIRE_TRUST = -0.2						-- Liberty desire from trust
NDefines.NCountry.LIBERTY_DESIRE_POSITIVE_OPINION = -0.1			-- Liberty desire from positive opinion
NDefines.NCountry.LIBERTY_DESIRE_NEGATIVE_OPINION = 0.3				-- Liberty desire from negative opinion
NDefines.NCountry.LIBERTY_DESIRE_ANNEXATION = 0						-- Liberty desire from being annexed
NDefines.NCountry.LIBERTY_DESIRE_GREAT_POWER_VASSAL = 0				-- Liberty desire from vassal having more than GREAT_POWER_VASSAL_LIMIT base tax
NDefines.NCountry.LIBERTY_DESIRE_HORDE = -40						-- Liberty desire from vassal being a horde
NDefines.NCountry.DIVERT_TRADE_FRACTION = 0.75
NDefines.NCountry.MAX_CROWN_COLONIES = 2							-- How many province a country can hold in a colonial region before creating a colonial nation
NDefines.NCountry.RIVAL_TECH_THRESHOLD = 0.8						-- Difference in tech group cost modifiers
NDefines.NCountry.SEIZE_TERRITORY_LIBERTY_MULTIPLIER = 3
NDefines.NCountry.PROMOTE_INVESTMENTS_TRADEPOWER = 0.15
NDefines.NCountry.PROMOTE_INVESTMENTS_INFLATION = 0.05
NDefines.NCountry.OVERSEAS_DISTANCE = 300							-- Provinces beyond this distance to capital are distant overseas
NDefines.NCountry.ENFORCE_RELIGION_LIBERTY = 99
NDefines.NCountry.ENFORCE_RELIGION_LIBERTY_THRESHOLD = -1
NDefines.NCountry.ENFORCE_CULTURE_LIBERTY = 99
NDefines.NCountry.ENFORCE_CULTURE_LIBERTY_THRESHOLD = -1
NDefines.NCountry.RELATIVE_ON_THRONE_LIBERTY = 75
NDefines.NCountry.RELATIVE_ON_THRONE_NOT_REGENCY_LIBERTY = 50
NDefines.NCountry.FOREIGN_REBEL_SUPPORT = 10
NDefines.NCountry.RAZE_PROVINCE_DEVELOPMENT_DECREASE = 0.01
NDefines.NCountry.RAZE_PROVINCE_POWER_PER_DEVELOPMENT = 0
NDefines.NCountry.RAZE_PROVINCE_COOLDOWN_YRS = 999
NDefines.NCountry.HORDE_UNITY_PER_LOOT = 0					-- Horde unity gained per ducat looted.
NDefines.NCountry.HORDE_UNITY_PER_RAZE = 0						-- Horde unity gained per development level razed.
NDefines.NCountry.MERCHANT_REPUBLIC_SIZE_LIMIT = 99999

NDefines.NCountry.ESTATE_ANGRY_THRESHOLD = 11
NDefines.NCountry.ESTATE_HAPPY_THRESHOLD = 70
NDefines.NCountry.ESTATE_LOYALTY_DECAY_BASE_MIN = 0					-- Loyalty change per year at middle level.
NDefines.NCountry.ESTATE_LOYALTY_DECAY_BASE_MAX = 0					-- Loyalty change per year at most extreme levels.
NDefines.NCountry.ESTATE_INFLUENCE_LEVEL_1 = 20
NDefines.NCountry.ESTATE_INFLUENCE_LEVEL_2 = 40
NDefines.NCountry.ESTATE_INFLUENCE_LEVEL_3 = 60
NDefines.NCountry.ESTATE_PROVINCE_HAPPINESS_INCREASE = 0			-- Per % of relative development granted to the estate
NDefines.NCountry.ESTATE_PROVINCE_HAPPINESS_DECREASE = 0			-- Per % of relative development revoked from the estate
NDefines.NCountry.ESTATE_PROVINCE_HAPPINESS_CHANGE_MAX_POS = 0		-- Loyalty cannot change more than this from a single province add
NDefines.NCountry.ESTATE_PROVINCE_HAPPINESS_CHANGE_MAX_NEG = 0		-- Loyalty cannot change more than this from a single province revoke
NDefines.NCountry.ESTATE_PROVINCE_POWER = 0							-- Per % of non overseas development in the country they manage
NDefines.NCountry.ESTATE_PROVINCE_POWER_MAX = 0
NDefines.NCountry.ESTATE_DANGER_THRESHOLD = 100						-- Estates with more influence than this become a danger to the state

NDefines.NCountry.LAGGINGTECH_CORRUPTION = 0						-- Corruption increase/year. Multiplied by (highest - lowest) tech level
NDefines.NCountry.LAGGINGTECH_CORRUPTION_MAX = 0.0					-- Max increase/year

NDefines.NCountry.INSTITUTION_BONUS_FROM_IMP_DEVELOPMENT = 0

NDefines.NCountry.SIBERIAN_FRONTIER_DAILY_BASE = 2					-- monthly settler increase
NDefines.NCountry.SIBERIAN_FRONTIER_DAILY_RANGE = 7
NDefines.NCountry.PS_ESTABLISH_SIBERIAN_FRONTIER = 50				-- upfront diplo point cost

NDefines.NCountry.MAXIMUM_ADVISOR_SKILL = 5							-- Maximum advisor skill reachable through promotion
NDefines.NCountry.PROMOTE_COST_MONTHS_ADVISOR_SALARY = 60.0			-- Promote advisor cost in monthly salaries

NDefines.NCountry.SETTLEMENT_GROWTH_DEVELOPMENT_INCREASE = 0		-- How much development may increase per year if a colonist is working on Settlement Growth.

NDefines.NCountry.MISSIONARY_PROGRESS_ON_CHANCE = 1.00				-- How many % the progress will boost on daily lucky-roll.