/*
    Needed Mods:
    - RHSUSAF
    - CUP Weapons
    - F-15C
    - F/A-18
    - CUP Weapons
    - CUP Vehicles
    - USAF Main Pack
    - USAF Fighters Pack
    - USAF Utility Pack

    Optional Mods:
    - BWMod
*/

/*
    --- Support classnames ---
    Each of these should be unique.
    The same classnames for different purposes may cause various unpredictable issues with player actions.
    Or not, just don't try!
*/
FOB_typename = "Land_Cargo_HQ_V1_F";                                    // This is the main FOB HQ building.
FOB_box_typename = "B_Slingload_01_Cargo_F";                            // This is the FOB as a container.
FOB_truck_typename = "rhsusf_M1078A1P2_B_WD_CP_fmtv_usarmy";            // This is the FOB as a vehicle.
Arsenal_typename = "B_supplyCrate_F";                                   // This is the virtual arsenal as portable supply crates.
Respawn_truck_typename = "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy";   // This is the mobile respawn (and medical) truck.
huron_typename = "RHS_CH_47F";                                          // This is Spartan 01, a multipurpose mobile respawn as a helicopter.
crewman_classname = "rhsusf_army_ocp_combatcrewman";                    // This defines the crew for vehicles.
pilot_classname = "rhsusf_army_ocp_helipilot";                          // This defines the pilot for helicopters.
KP_liberation_little_bird_classname = "RHS_MELB_MH6M";                  // These are the little birds which spawn on the Freedom or at Chimera base.
KP_liberation_boat_classname = "B_Boat_Transport_01_F";                 // These are the boats which spawn at the stern of the Freedom.
KP_liberation_truck_classname = "rhsusf_M977A4_BKIT_usarmy_wd";         // These are the trucks which are used in the logistic convoy system.
KP_liberation_small_storage_building = "ContainmentArea_02_sand_F";     // A small storage area for resources.
KP_liberation_large_storage_building = "ContainmentArea_01_sand_F";     // A large storage area for resources.
KP_liberation_recycle_building = "Land_RepairDepot_01_tan_F";           // The building defined to unlock FOB recycling functionality.
KP_liberation_air_vehicle_building = "B_Radar_System_01_F";             // The building defined to unlock FOB air vehicle functionality.
KP_liberation_heli_slot_building = "Land_HelipadSquare_F";              // The helipad used to increase the GLOBAL rotary-wing cap.
KP_liberation_plane_slot_building = "Land_TentHangar_V1_F";             // The hangar used to increase the GLOBAL fixed-wing cap.
KP_liberation_supply_crate = "CargoNet_01_box_F";                       // This defines the supply crates, as in resources.
KP_liberation_ammo_crate = "B_CargoNet_01_ammo_F";                      // This defines the ammunition crates.
KP_liberation_fuel_crate = "CargoNet_01_barrels_F";                     // This defines the fuel crates.

/*
    --- Friendly classnames ---
    Each array below represents one of the 7 pages within the build menu.
    Format: ["vehicle_classname",supplies,ammunition,fuel],
    Example: ["B_APC_Tracked_01_AA_F",300,150,150],
    The above example is the NATO IFV-6a Cheetah, it costs 300 supplies, 150 ammunition and 150 fuel to build.
    IMPORTANT: The last element inside each array must have no comma at the end!
*/
infantry_units = [
    ["rhsusf_army_ocp_riflemanl",15,0,0],                               // Rifleman (Light)
    ["rhsusf_army_ocp_rifleman",20,0,0],                                // Rifleman
    ["rhsusf_army_ocp_riflemanat",30,0,0],                              // Rifleman (AT)
    ["rhsusf_army_ocp_grenadier",25,0,0],                               // Grenadier
    ["rhsusf_army_ocp_autorifleman",25,0,0],                            // Autorifleman
    ["rhsusf_army_ocp_machinegunner",35,0,0],                           // Heavygunner
    ["rhsusf_army_ocp_marksman",30,0,0],                                // Marksman
    ["rhsusf_army_ocp_javelin",50,10,0],                                // AT Specialist
    ["rhsusf_army_ocp_aa",50,10,0],                                     // AA Specialist
    ["rhsusf_army_ocp_medic",30,0,0],                                   // Combat Life Saver
    ["rhsusf_army_ocp_engineer",30,0,0],                                // Engineer
    ["rhsusf_army_ocp_explosives",30,0,0],                              // Explosives Specialist
    ["rhsusf_usmc_recon_marpat_wd_rifleman",20,0,0],                    // Recon Rifleman
    ["rhsusf_usmc_recon_marpat_wd_rifleman_at",30,0,0],                 // Recon Rifleman (AT)
    ["rhsusf_usmc_recon_marpat_wd_autorifleman",25,0,0],                // Recon Autorifleman
    ["rhsusf_usmc_recon_marpat_wd_machinegunner",35,0,0],               // Recon Machine Gunner
    ["rhsusf_usmc_recon_marpat_wd_marksman",30,0,0],                    // Recon Marksman
    ["rhsusf_usmc_recon_marpat_wd_sniper_M107",70,5,0],                 // Recon Sniper (M107)
    ["rhsusf_army_ocp_sniper",70,5,0],                                  // Sniper
    ["rhsusf_army_ocp_sniper_m107",70,5,0],                             // Sniper (M107)
    ["rhsusf_army_ocp_sniper_m24sws",70,5,0],                           // Sniper (M24 SWS)
    ["rhsusf_army_ocp_combatcrewman",10,0,0],                           // Crewman
    ["rhsusf_army_ocp_rifleman_101st",20,0,0],                          // Para Trooper
    ["rhsusf_army_ocp_helicrew",10,0,0],                                // Helicopter Crew
    ["rhsusf_army_ocp_helipilot",10,0,0],                               // Helicopter Pilot
    ["rhsusf_airforce_jetpilot",10,0,0]                                 // Pilot
];

/*
	Supply Cost:
		CROWS - Unmanned Gun       - +20
		LD    - Laser Designator   - +20
	
	Ammo Cost:
		LMG - Light Machine Gun    - 30/ea
		HMG - Heavy Machine Gun    - 60/ea
		RMG - Rotary Machine Gun   - 90/ea
		GMG - Grendade Machine Gun - 120/ea
		AT  - Anti-tank            - 150/ea 
		AA  - Anti-air             - 150/ea
		AC  - Autocannon           - 200/ea
		HC  - Heavy Cannon         - 300/ea
		MA  - Mortar Artillery     - 500
		RA  - Rocket Artillery     - 1000
		PY  - Weapon Pylons        - 250/ea
		CW  - CWIS                 - 250/ea
		CM  - Cruise Missile       - 750/ea
*/
light_vehicles = [
    // Personal vehicles
	["edaly_horse_01",25,0,0],
	["edaly_horse_02",25,0,0],
	["edaly_horse_03",25,0,0],
    ["B_T_Quadbike_01_F",40,0,25],
	["CUP_I_Datsun_4seat",60,0,35],
	["CUP_O_Hilux_unarmed_CR_CIV_Tan",60,0,35],
	
	// Unarmed Cars
	["CUP_I_M151_SYND",65,0,35],
	["CUP_B_LR_Transport_GB_W",70,0,40],
	["rhsusf_m998_w_2dr_halftop",80,0,45],
	["rhsusf_m998_w_2dr",80,0,45],
	["rhsusf_m998_w_4dr_fulltop",85,0,45],
	["rhsusf_m998_w_4dr_halftop",85,0,45],
	["rhsusf_m998_w_4dr",85,0,45],
	["rhsusf_m1025_w",90,0,55],
	["rhsusf_m1043_w",95,0,55],
	["rhsusf_m1151_usarmy_wd",100,0,60],
	["rhsusf_m1152_usarmy_wd",105,0,60],
	["rhsusf_m1165_usarmy_wd",110,0,60],
	
	// Armed Cars
	["CUP_I_M151_M2_SYND",65,60,35],							// 1HMG
	["CUP_B_LR_MG_GB_W",70,60,40],								// 1HMG
	["CUP_B_LR_Special_M2_GB_W",70,60,40],						// 1HMG
	["CUP_B_LR_Special_GMG_GB_W",70,120,40],					// 1GMG
	["CUP_B_Jackal2_L2A1_GB_W",75,60,55],						// 1HMG
	["CUP_B_Jackal2_GMG_GB_W",75,120,55],						// 1GMG
	["CUP_B_BAF_Coyote_L2A1_W",80,60,55],						// 1HMG
	["CUP_B_BAF_Coyote_GMG_W",80,120,55],						// 1GMG
	["rhsusf_m1025_w_m2",90,60,55],								// 1HMG
	["rhsusf_m1025_w_mk19",90,120,55],							// 1GMG
	["rhsusf_m966_w",90,150,50],								// 1AT
	["rhsusf_m1043_w_m2",95,60,55],								// 1HMG
	["rhsusf_m1043_w_mk19",90,120,55],							// 1GMG
	["rhsusf_m1045_w",95,150,55],								// 1AT
	["CUP_B_nM1097_AVENGER_USA_WDL",150,150,70],				// 1AA
	["rhsusf_m1151_m240_v1_usarmy_wd",100,30,60],				// 1LMG
	["rhsusf_m1151_m2_v1_usarmy_wd",105,60,60],					// 1HMG
	["rhsusf_m1151_m2_lras3_v1_usarmy_wd",130,70,60],			// LD,1HMG
	["rhsusf_m1151_m2crows_usarmy_wd",140,60,65],				// CROWS,1HMG
	["rhsusf_m1151_mk19crows_usarmy_wd",135,120,65],			// CROWS,1GMG
	["rhsusf_m1151_mk19_v1_usarmy_wd",105,120,60],				// 1GMG
	["rhsusf_m1151_m240_v2_usarmy_wd",100,30,60],				// 1LMG
	["rhsusf_m1151_m2_v2_usarmy_wd",115,60,65],					// 1HMG
	["rhsusf_m1151_mk19_v2_usarmy_wd",115,120,65],				// 1GMG
	["rhsusf_m1151_m2_v3_usmc_wd",120,60,65],					// 1HMG
	["CUP_B_M1165_GMV_WDL_USA",120,90,65],						// 1RMG

	// Unarmed Trucks
	["CUP_B_MTVR_USMC",120,0,80],
	["rhsusf_M1083A1P2_WD_fmtv_usarmy",130,0,85],
	["rhsusf_M1083A1P2_B_WD_fmtv_usarmy",140,0,90],
	["rhsusf_M1084A1P2_WD_fmtv_usarmy",135,0,85],
	["rhsusf_M1084A1P2_B_WD_fmtv_usarmy",145,0,90],
	["rhsusf_M977A4_usarmy_wd",160,0,100],
	["rhsusf_M977A4_BKIT_usarmy_wd",170,0,105],

	// Armed Trucks
	["rhsusf_M1083A1P2_B_M2_WD_fmtv_usarmy",140,60,90],			// 1HMG
	["rhsusf_M1084A1P2_B_M2_WD_fmtv_usarmy",145,60,90],			// 1HMG
	["rhsusf_M977A4_BKIT_M2_usarmy_wd",170,60,105],				// 1HMG
	["rhsusf_M142_usarmy_WD",165,1000,100],						// 1RA
	
	// Unarmed MRAPs
	["rhsusf_CGRCAT1A2_usmc_wd",300,0,130],
	["rhsusf_M1220_usarmy_wdwa",315,0,135],
	["rhsusf_M1232_usarmy_wd",325,0,140],

	// Armed MRAPs
	["CUP_B_Ridgback_LMG_GB_W",305,30,130]						// 1LMG
	["rhsusf_CGRCAT1A2_M2_usmc_wd",300,60,130]					// 1HMG
	["rhsusf_CGRCAT1A2_Mk19_usmc_wd",300,120,130]				// 1GMG
	["rhsusf_M1220_M2_usarmy_wd",315,60,140],					// 1HMG
	["rhsusf_M1220_MK19_usarmy_wd",315,120,140],				// 1GMG
	["rhsusf_M1220_M153_M2_usarmy_wd",335,60,140],				// CROWS,1HMG
	["rhsusf_M1220_M153_MK19_usarmy_wd",335,120,140],			// CROWS,1GMG
	["CUP_B_Wolfhound_LMG_GB_W",300,30,145],					// 1LMG
	["CUP_B_Mastiff_LMG_GB_W",320,30,145],						// 1LMG
	["rhsusf_M1232_MC_M2_usmc_wd",320,60,150],					// 1HMG
	["rhsusf_M1230_M2_usarmy_wd",320,60,140],					// 1HMG
	["rhsusf_M1230_MK19_usarmy_wd",320,120,140],				// 1GMG
	["rhsusf_M1232_M2_usarmy_wd",325,60,145],					// 1HMG
	["rhsusf_M1232_MK19_usarmy_wd",325,120,145],				// 1GMG
	["rhsusf_M1237_M2_usarmy_wd",330,60,145],					// 1HMG
	["rhsusf_M1237_MK19_usarmy_wd",330,120,145],				// 1GMG
	["rhsusf_M1117_W",300,180,130],								// 1HMG,1GMG
		
	// Unarmed Boats
	["rhsgref_hidf_canoe",25,0,0],
	["C_Scooter_Transport_01_F",40,0,15],
	["pook_PBX_BLUFOR",50,0,25],
	["rhsgref_hidf_rhib",60,0,30],
	["CUP_B_MK10_GB",700,0,175],
	["CUP_B_LCU1600_USMC",850,0,250],
	
	// Armed Boats
	["pook_PBR_Transport_BLUFOR",80,60,45],						// 1HMG
	["pook_PBR_GUNBOAT_BLUFOR",80,270,45],						// 1LMG,2HMG,1GMG
	["pook_SOCR_M2_USMC",95,300,55],							// 2LMG,2HMG,1GMG
	["pook_SOCR_M134_USMC",95,300,55],							// 2LMG,1HMG,2RMG
	["pook_SOCR_M2b_USMC",95,390,55],							// 1LMG,2HMG,2GMG
	["pook_SOCR_M134b_USMC",95,480,55],							// 1HMG,2RMG,2GMG
	["pook_SOCR_H_M2_USMC",115,300,60],							// 2LMG,2HMG,1GMG
	["pook_SOCR_H_M134_USMC",115,300,60],						// 2LMG,1HMG,2RMG
	["pook_SOCR_H_M2b_USMC",115,390,60],						// 1LMG,2HMG,2GMG
	["pook_SOCR_H_M134b_USMC",115,480,60],						// 1HMG,2RMG,2GMG
	["CUP_B_RHIB_USMC",125,60,65],								// 1HMG
	["CUP_B_RHIB2Turret_USMC",125,180,65],						// 1HMG,1GMG
	["rhsusf_mkvsoc",750,330,200],								// 2HMG,1RMG,1GMG
	["pook_LCAC_USMC",775,120,225],								// 2HMG
	["CUP_B_Frigate_ANZAC",5425,1450,1575]						// 1CW,1AA,1HC,1CM
];

heavy_vehicles = [
	// Unarmed APCs
	["rhsusf_m113_usarmy_unarmed",400,0,250],
	["CUP_B_AAV_Unarmed_USMC",430,0,275],

	// Armed APCs
	["rhsusf_m113_usarmy_M240",400,30,250],						// 1LMG
	["rhsusf_m113_usarmy_M2_90",400,60,250],					// 1HMG
	["rhsusf_m113_usarmy",410,60,250],							// 1HMG
	["rhsusf_m113_usarmy_MK19",400,120,250],					// 1GMG
	["CUP_B_LAV25_HQ_USMC",400,30,200],							// 1LMG
	["CUP_B_LAV25_USMC",405,230,200],							// 1LMG,1AC
	["CUP_B_LAV25M240_USMC",405,260,200],						// 2LMG,1AC
	["rhsusf_stryker_m1126_m2_wd",415,60,215],					// 1HMG
	["rhsusf_stryker_m1127_m2_wd",435,60,215],					// LD,1HMG
	["rhsusf_stryker_m1126_mk19_wd",415,120,215],				// 1GMG
	["rhsusf_stryker_m1132_m2_np_wd",420,60,220],				// 1HMG
	["rhsusf_stryker_m1132_m2_wd",425,60,220],					// 1HMG
	["rhsusf_stryker_m1134_wd",420,180,220],					// 1LMG,1AT
	["CUP_B_FV432_Bulldog_GB_W",430,30,270],					// 1LMG
	["CUP_B_FV432_Bulldog_GB_W_RWS",450,60,270],				// CROWS,1HMG
	["CUP_B_MCV80_GB_W",470,230,280],							// 1LMG,1AC
	["CUP_B_MCV80_GB_W_SLAT",480,230,280],						// 1LMG,1AC
	["CUP_B_FV510_GB_W",500,230,290],							// 1LMG,1AC
	["CUP_B_FV510_GB_W_SLAT",510,230,290],						// 1LMG,1AC
	["RHS_M2A2_wd",550,380,300],								// 1LMG,1AC,1AT
	["RHS_M6_wd",550,380,300],									// 1LMG,1AC,1AA
	["RHS_M2A2_BUSKI_WD",570,380,310],							// LD,1LMG,1AC,1AT
	["RHS_M2A3_wd",580,350,330],								// LD,1LMG,1AC,1AT
	["RHS_M2A3_BUSKI_wd",590,350,340],							// LD,1LMG,1AC,1AT
	["RHS_M2A3_BUSKIII_wd",600,350,350],						// LD,1LMG,1AC,1AT
	["CUP_B_AAV_USMC",610,180,330],								// 1HMG,1GMG

	// Armed Tanks
	["CUP_B_M60A3_TTS_USMC",750,750,300],
	["CUP_B_Leopard2A6_GER",750,750,300],
	["CUP_B_Challenger2_Woodland_BAF",750,750,300],
	["rhsusf_m1a1hc_wd",750,750,300],
	["rhsusf_m1a1aimwd_usarmy",750,750,300],
	["rhsusf_m1a1fep_wd",750,750,300],
	["rhsusf_m1a2sep1wd_usarmy",750,750,300],
	["rhsusf_m1a2sep2wd_usarmy",750,750,300],
	["rhsusf_m1a1aim_tuski_wd",1000,750,400],
	["rhsusf_m1a2sep1tuskiwd_usarmy",1000,750,400],
	["rhsusf_m1a2sep1tuskiiwd_usarmy",1000,750,400],
	["rhsusf_m109_usarmy",600,1250,300]
];

air_vehicles = [
	// Unarmed Helicopters
	["RHS_MELB_H6M",300,0,150],
	["RHS_MELB_MH6M",300,0,150],
	["RHS_UH1Y_UNARMED",300,0,150],
	["RHS_UH60M2",300,0,150],
	["RHS_UH60M_ESSS",300,0,150],
	["CUP_B_Merlin_HC3_GBd",300,0,150],
	["RHS_CH_47F_cargo",300,0,150],
	["rhsusf_CH53E_USMC",300,0,150],
	["rhsusf_CH53e_USMC_cargo",300,0,150],
	
	// Armed Helicopters
	["RHS_UH1Y_FFAR",300,300,150],
	["RHS_UH60M",300,300,150],
	["CUP_B_Merlin_HC3A_Armed_GB",300,300,150],
	["RHS_CH_47F",300,300,150],
	["rhsusf_CH53E_USMC_GAU21",300,300,150],

	// Attack Helicopters
	["RHS_MELB_AH6M",600,600,300],
	["CUP_B_AW159_GB",600,600,300],
	["RHS_AH1Z_wd",600,600,300],
	["RHS_AH64D_wd",600,600,300],
	
	// Unarmed Planes
	["CUP_B_CESSNA_T41_UNARMED_USA",300,0,150],
	["CUP_B_C47_USA",300,0,150],
	["CUP_B_MV22_USMC",300,0,150],
	["USAF_C130J",300,0,150],
	["USAF_C130J_Cargo",300,0,150],

	// Planes
	["CUP_B_CESSNA_T41_ARMED_USA",300,100,150],
	["CUP_B_AC47_Spooky_USA",300,100,150],
	["CUP_B_MV22_USMC_RAMPGUN",300,100,150],
	
	// Unarmed Jets
	["usaf_kc135",750,0,350],
	["USAF_C17d",750,0,350],
	
	// Jets
	["RHS_A10",1000,1000,400],              
	["CUP_B_AV8B_DYN_USMC",1000,1000,400],
    ["USAF_A10",1500,1000,400],             
    ["FIR_F15C",1250,1250,450],             
    ["FIR_F15D",1250,1250,450],             
    ["FIR_F15E",1250,1500,450],             
	["FIR_F18C_VFA15",1250,1500,450],
	["FIR_F18D_VMFAAW224_02",1250,1500,450],
    ["USAF_F22",1800,2000,500],             
    ["USAF_F22_EWP_AA",1800,2100,500],      
    ["USAF_F22_EWP_AG",1800,2100,500],      
    ["USAF_F22_Heavy",1800,2250,500],       
    ["USAF_F35A_STEALTH",2250,2000,750],    
    ["USAF_F35A",2250,2250,750]             
];

static_vehicles = [
	["B_W_Static_Designator_01_F",50,0,0],
	["CUP_B_SearchLight_static_USMC",50,0,0],
	["RHS_M2StaticMG_MiniTripod_WD",50,100,0],
	["RHS_M2StaticMG_WD",50,100,0],
	["I_E_HMG_02_F",50,100,0],
	["I_E_HMG_02_high_F",50,100,0],
	["RHS_MK19_TriPod_WD",50,150,0],
	["CUP_B_M134_A_USMC",50,150,0],
	["rhsgref_cdf_b_ZU23",50,150,0],
	["RHS_TOW_TriPod_WD",50,250,0],
	["RHS_Stinger_AA_pod_WD",50,250,0],                              
	["RHS_M252_WD",80,250,0],                                     
	["RHS_M119_WD",100,250,0],                                        
    ["B_SAM_System_03_F",250,500,0]
];

buildings = [
    ["Flag_NATO_F",0,0,0],												// Flag
    ["Flag_US_F",0,0,0],												// Flag
    ["BWA3_Flag_Ger_F",0,0,0],											// Flag
    ["Flag_UK_F",0,0,0],												// Flag
    ["Flag_White_F",0,0,0],												// Flag
	["Flag_RedCrystal_F",0,0,0],										// Flag
	["Land_Sign_WarningMilitaryArea_F",0,0,0],							// Sign
    ["Land_Sign_WarningMilAreaSmall_F",0,0,0],							// Sign
    ["Land_Sign_WarningMilitaryVehicles_F",0,0,0],						// Sign
	["Land_HelipadCircle_F",0,0,0],                                     // Marking
    ["Land_HelipadRescue_F",0,0,0],                                     // Marking
    ["Land_PortableLight_single_F",0,0,0],								// Light
    ["Land_PortableLight_double_F",0,0,0],								// Light
    ["Land_LampSolar_F",5,0,0],											// Light
    ["Land_LampHalogen_F",5,0,0],										// Light
    ["Land_LampStreet_small_F",5,0,0],									// Light
	["Land_LampDecor_F",5,0,0],											// Light
	["Land_LampHarbour_F",5,0,0],										// Light
    ["Land_LampShabby_F",5,0,0],										// Light
	["Land_LampStreet_F",5,0,0],										// Light
	["Land_LampAirport_F",5,0,0],										// Light
    ["PortableHelipadLight_01_blue_F",5,0,0],							// Light
    ["PortableHelipadLight_01_green_F",5,0,0],							// Light
    ["PortableHelipadLight_01_red_F",5,0,0],							// Light
	["Land_BarrelWater_F",0,0,0],										// Cover
    ["Land_BarrelWater_grey_F",0,0,0],									// Cover
    ["Land_WaterBarrel_F",0,0,0],										// Cover
    ["Land_WaterTank_F",0,0,0],											// Cover
	["Land_CinderBlocks_F",0,0,0],										// Cover
	["Land_Coil_F",0,0,0],												// Cover
	["Land_Pallet_vertical_F",0,0,0],									// Cover
	["Land_Bricks_V1_F",0,0,0],											// Cover
	["Land_Bricks_V4_F",0,0,0],											// Cover
	["Land_Tank_rust_F",0,0,0],											// Cover
	["Land_WoodenBox_F",0,0,0],											// Cover
	["Vec03",0,0,0],													// Cover
	["Pile_of_wood",0,0,0],												// Cover
    ["Land_Razorwire_F",0,0,0],											// Fencing
	["Land_Pipe_fence_4m_F",0,0,0],										// Fencing
	["WireFence",0,0,0],												// Fencing
	["Wire",0,0,0],														// Fencing
	["Land_GameProofFence_01_l_5m_F",0,0,0],							// Fencing
	["Land_GameProofFence_01_l_gate_F",0,0,0],							// Fencing
	["Land_GameProofFence_01_l_pole_F",0,0,0],							// Fencing
	["Land_WiredFence_01_16m_F",0,0,0],									// Fencing
	["Land_WiredFence_01_4m_F",0,0,0],									// Fencing
	["Land_WiredFence_01_8m_F",0,0,0],									// Fencing
	["Land_WiredFence_01_pole_45_F",0,0,0],								// Fencing
	["Land_WiredFence_01_gate_F",0,0,0],								// Fencing
	["Land_WiredFence_01_pole_F",0,0,0],								// Fencing
	["Land_TinWall_02_l_4m_F",0,0,0],									// Fencing
	["Land_TinWall_02_l_8m_F",0,0,0],									// Fencing
	["Land_TinWall_02_l_pole_F",0,0,0],									// Fencing
	["Land_Wall_Tin_Pole",0,0,0],										// Fencing
	["Land_BarGate_F",0,0,0],											// Fencing
	["Land_BarGate2",0,0,0],											// Fencing
	["Land_RoadBarrier_01_F",0,0,0],									// Fencing
	["Land_CrashBarrier_01_4m_F",0,0,0],								// Fencing
	["Land_CrashBarrier_01_8m_F",0,0,0],								// Fencing
	["Land_CrashBarrier_01_end_L_F",0,0,0],								// Fencing
	["Land_CrashBarrier_01_end_R_F",0,0,0],								// Fencing
	["Land_PipeFence_02_s_4m_F",0,0,0],									// Fencing
	["Land_PipeFence_02_s_8m_F",0,0,0],									// Fencing
	["Land_TinWall_01_m_4m_v2_F",0,0,0],								// Fencing
	["Land_WoodenWall_01_m_4m_F",0,0,0],								// Fencing
	["Land_WoodenWall_01_m_8m_F",0,0,0],								// Fencing
	["Land_Slums02_4m",0,0,0],											// Fencing
	["Land_PoleWall_01_3m_F",0,0,0],									// Fencing
	["Land_PoleWall_01_6m_F",0,0,0],									// Fencing
	["Land_PoleWall_01_pole_F",0,0,0],									// Fencing
	["Land_SlumWall_01_s_2m_F",0,0,0],									// Fencing
	["Land_SlumWall_01_s_4m_F",0,0,0],									// Fencing
	["Land_WoodenWall_04_s_gate_F",0,0,0],								// Fencing
	["Land_WoodenWall_05_m_4m_v1_F",0,0,0],								// Fencing
	["Land_WoodenWall_05_m_end_F",0,0,0],								// Fencing
	["Hedgehog",10,0,0],												// Anti-vehicle barrier
	["Hhedgehog_concrete",10,0,0],										// Anti-vehicle barrier
	["Land_jezekbeton",10,0,0],											// Anti-vehicle barrier
	["Land_DragonsTeeth_01_4x2_old_F",10,0,0],							// Anti-tank barrier
	["Land_DragonsTeeth_01_4x2_old_redwhite_F",10,0,0],					// Anti-tank barrier
	["Land_DragonsTeeth_01_1x1_old_F",10,0,0],							// Anti-tank barrier
	["Land_DragonsTeeth_01_1x1_old_redwhite_F",10,0,0],					// Anti-tank barrier
    ["Land_BagFence_Round_F",0,0,0],									// Sandbag barrier
    ["Land_BagFence_Short_F",0,0,0],									// Sandbag barrier
    ["Land_BagFence_Long_F",0,0,0],										// Sandbag barrier
    ["Land_BagFence_Corner_F",0,0,0],									// Sandbag barrier
    ["Land_BagFence_End_F",0,0,0],										// Sandbag barrier
	["Land_SandbagBarricade_01_half_F",0,0,0],							// Sandbag barrier
	["Land_SandbagBarricade_01_F",0,0,0],								// Sandbag barrier
	["Land_SandbagBarricade_01_hole_F",0,0,0],							// Sandbag barrier
	["Land_fort_bagfence_long",0,0,0],									// Sandbag barrier
	["Land_fort_bagfence_corner",0,0,0],								// Sandbag barrier
	["Land_fort_bagfence_round",0,0,0],									// Sandbag barrier
    ["Land_HBarrier_1_F",5,0,0],										// H-barrier
    ["Land_HBarrier_3_F",5,0,0],										// H-barrier
    ["Land_HBarrier_5_F",5,0,0],										// H-barrier
    ["Land_HBarrier_Big_F",5,0,0],										// H-barrier
    ["Land_HBarrierWall4_F",5,0,0],										// H-barrier
    ["Land_HBarrierWall6_F",5,0,0],										// H-barrier
    ["Land_HBarrierWall_corner_F",5,0,0],								// H-barrier
    ["Land_HBarrierWall_corridor_F",5,0,0],								// H-barrier
	["Base_WarfareBBarrier10x",5,0,0],									// H-barrier
	["Base_WarfareBBarrier10xTall",5,0,0],								// H-barrier
    ["Land_HBarrierTower_F",10,0,0],									// H-barrier
	["Land_BagBunker_Small_F",0,0,0],									// Sandbag structure
    ["Land_BagBunker_Large_F",0,0,0],									// Sandbag structure
    ["Land_BagBunker_Tower_F",10,0,0],									// H-barrier structure
	["Land_Pipes_large_F",0,0,0],										// Makeshift barrier
	["Land_Timbers_F",0,0,0],											// Makeshift barrier
	["Land_Sea_Wall_F",0,0,0],											// Makeshift barrier
	["Land_Tyres_F",0,0,0],												// Makeshift barrier
	["Land_Tyre_01_line_x5_F",0,0,0],									// Makeshift barrier
	["Land_BasaltKerb_01_pile_F",0,0,0],								// Makeshift barrier
	["Land_SCF_01_heap_sugarcane_F",0,0,0],								// Makeshift barrier
	["Land_SCF_01_heap_bagasse_F",0,0,0],								// Makeshift barrier
	["Land_wagon_box",0,0,0],											// Makeshift barrier
	["Land_wagon_flat",0,0,0],											// Makeshift barrier
	["Land_wagon_tanker",0,0,0],										// Makeshift barrier
	["Land_Mound03_8m_F",0,0,0],										// Makeshift barrier
	["Land_Mound04_8m_F",0,0,0],										// Makeshift barrier
	["Fort_EnvelopeBig",5,0,0],											// Barrier
	["Fort_EnvelopeSmall",5,0,0],										// Barrier
	["Land_CncBarrier_F",5,0,0],										// Barrier
    ["Land_CncBarrierMedium_F",5,0,0],									// Barrier
    ["Land_CncBarrierMedium4_F",5,0,0],									// Barrier
	["pook_Land_fort_rampart",5,0,0],									// Barrier
	["pook_Land_fort_artillery_nest",5,0,0],							// Barrier
	["Land_prolejzacka",5,0,0],											// Barrier
	["Land_Trench_01_forest_F",5,0,0],									// Barrier
	["Land_TrenchFrame_01_F",5,0,0],									// Barrier
	["Land_Ancient_Wall_4m_F",5,0,0],									// Barrier
	["Land_Ancient_Wall_8m_F",5,0,0],									// Barrier
	["Land_Stone_4m_F",10,0,0],											// Wall
	["Land_Stone_Gate_F",10,0,0],										// Wall
	["Land_Stone_8m_F",10,0,0],											// Wall
	["Land_Stone_8mD_F",10,0,0],										// Wall
	["Land_Stone_pillar_F",10,0,0],										// Wall
	["Land_Wall_IndCnc_4_F",10,0,0],									// Wall
	["Land_Wall_IndCnc_4_D_F",10,0,0],									// Wall
	["Land_Wall_IndCnc_Pole_F",10,0,0],									// Wall
	["Land_Mil_WallBig_4m_F",10,0,0],									// Wall
	["Land_Mil_WallBig_Corner_F",10,0,0],								// Wall
	["Land_Concrete_SmallWall_4m_F",10,0,0],							// Wall
    ["Land_Concrete_SmallWall_8m_F",10,0,0],							// Wall
	["Land_PipeWall_concretel_8m_F",10,0,0],							// Wall
	["Land_ConcreteWall_01_l_pole_F",10,0,0],							// Wall
	["Land_ConcreteWall_01_l_4m_F",10,0,0],								// Wall
	["Land_ConcreteWall_01_l_8m_F",10,0,0],								// Wall
	["Land_ConcreteWall_01_l_gate_F",10,0,0],							// Wall
	["Land_Bunker_01_blocks_1_F",10,0,0],								// Wall
	["Land_Bunker_01_blocks_3_F",10,0,0],								// Wall
	["Land_PillboxWall_01_3m_round_F",10,0,0],							// Wall
	["Land_PillboxWall_01_6m_round_F",10,0,0],							// Wall
	["Land_BrickWall_01_l_5m_F",10,0,0],								// Wall
	["Land_BrickWall_01_l_5m_d_F",10,0,0],								// Wall
	["Land_BrickWall_01_l_corner_F",10,0,0],							// Wall
	["Land_BrickWall_01_l_end_F",10,0,0],								// Wall
	["Land_BrickWall_01_l_pole_F",10,0,0],								// Wall
	["Land_Mil_WallBig_4m_battered_F",20,0,0],							// Tall wall
	["Land_Mil_WallBig_corner_battered_F",20,0,0],						// Tall wall
	["Land_Mil_WallBig_4m_damaged_center_F",20,0,0],					// Tall wall
	["Land_Mil_WallBig_4m_damaged_left_F",20,0,0],						// Tall wall
	["Land_Mil_WallBig_Gate_F",20,0,0],									// Tall wall
    ["Land_CncWall1_F",15,0,0],											// Tall wall
    ["Land_CncWall4_F",15,0,0],											// Tall wall
	["Land_A_Castle_Wall1_20",15,0,0],									// Tall wall
	["Land_A_Castle_Wall1_Corner",15,0,0],								// Tall wall
	["Land_A_Castle_Wall1_Corner_2",15,0,0],							// Tall wall
	["Land_A_Castle_Wall1_End",15,0,0],									// Tall wall
	["Land_A_Castle_Wall1_End_2",15,0,0],								// Tall wall
	["Land_A_Castle_Wall1_20_Turn",15,0,0],								// Tall wall
	["Land_A_Castle_Wall2_30",15,0,0],									// Tall wall
	["Land_A_Castle_Wall2_Corner",15,0,0],								// Tall wall
	["Land_A_Castle_Wall2_Corner_2",15,0,0],							// Tall wall
	["Land_A_Castle_Wall2_End",15,0,0],									// Tall wall
	["Land_A_Castle_Wall2_End_2",15,0,0],								// Tall wall
	["Land_A_Castle_Bastion",15,0,0],									// Tall wall
	["Land_BasaltWall_01_8m_F",15,0,0],									// Tall wall
	["Land_BasaltWall_01_d_right_F",15,0,0],							// Tall wall
	["Land_Fortress_01_10m_F",15,0,0],									// Tall wall
	["Land_Fortress_01_5m_F",15,0,0],									// Tall wall
	["Land_Fortress_01_d_L_F",15,0,0],									// Tall wall
	["Land_Fortress_01_innerCorner_110_F",15,0,0],						// Tall wall
	["Land_Fortress_01_innerCorner_70_F",15,0,0],						// Tall wall
	["Land_Fortress_01_innerCorner_90_F",15,0,0],						// Tall wall
	["Land_Fortress_01_outterCorner_50_F",15,0,0],						// Tall wall
	["Land_Fortress_01_outterCorner_80_F",15,0,0],						// Tall wall
	["Land_Fortress_01_outterCorner_90_F",15,0,0],						// Tall wall
	["Land_CncShelter_F",10,0,0],										// Structure
	["Land_BeachBooth_01_F",10,0,0],									// Structure
	["Land_ConcretePipe_F",10,0,0],										// Structure
	["Land_A_Castle_Gate",10,0,0],										// Structure
	["Land_BasaltWall_01_gate_F",10,0,0],								// Structure
	["Land_Shed_Small_F",10,0,0],										// Structure
	["Land_Shed_Big_F",10,0,0],											// Structure
	["Land_WoodenShelter_01_F",10,0,0],									// Structure
	["Land_MetalShelter_02_F",10,0,0],									// Structure
	["Land_MetalShelter_01_F",10,0,0],									// Structure
	["CamoNet_BLUFOR_F",0,0,0],											// Camo netting
    ["CamoNet_BLUFOR_open_F",0,0,0],									// Camo netting
    ["CamoNet_BLUFOR_big_F",0,0,0],										// Camo netting
	["Land_MedicalTent_01_NATO_tropic_generic_outer_F",0,0,0],			// Tent	
	["Land_MedicalTent_01_NATO_tropic_generic_inner_F",0,0,0],			// Tent	
	["Land_CanvasCover_01_F",0,0,0],									// Tent
	["Land_CanvasCover_02_F",0,0,0],									// Tent
	["Land_ConnectorTent_01_NATO_tropic_closed_F",0,0,0],				// Tent
	["Land_ConnectorTent_01_NATO_tropic_cross_F",0,0,0],				// Tent
	["Land_ConnectorTent_01_NATO_tropic_open_F",0,0,0],					// Tent
	["CampEmpty",0,0,0],												// Tent
	["CampEast",0,0,0],													// Tent
	["Land_tent_east",0,0,0],											// Tent
    ["Land_Cargo_House_V1_F",20,0,0],									// Building
	["Land_Ind_IlluminantTower",20,0,0],								// Building
	["Land_Mil_House_EP1",20,0,0],										// Building
	["Land_Barracks_01_camo_F",20,0,0],									// Building
	["Land_i_Barracks_V2_F",20,0,0],									// Building
	["Land_Mil_Barracks",20,0,0],										// Building
	["Land_Dome_01_big_green_ruins_v1_F",20,0,0],						// Building
	["Land_Warehouse_03_F",20,0,0],										// Building
    ["Land_Medevac_house_V1_F",20,0,0],									// Building
    ["Land_Medevac_HQ_V1_F",20,0,0],									// Building
	["Land_Hangar_2",20,0,0],											// Vehicle storage
	["Land_Airport_01_hangar_F",20,0,0],								// Vehicle storage
	["Land_Hangar_F",20,0,0],											// Vehicle storage
	["Land_GarageShelter_01_F",20,0,0],									// Vehicle storage
	["Land_PillboxBunker_01_big_F",20,0,0],								// Bunker
	["Land_PillboxBunker_01_hex_F",20,0,0],								// Bunker
	["Land_PillboxBunker_01_rectangle_F",20,0,0],						// Bunker
	["Land_Bunker_01_small_F",20,0,0],									// Bunker
	["Land_Bunker_01_big_F",20,0,0],									// Bunker
	["Land_Misc_deerstand",30,0,0],										// Tower
	["Land_dp_smallTank_F",30,0,0],										// Tower
    ["Land_dp_bigTank_F",30,0,0],										// Tower
	["Land_Cargo_Tower_V1_F",30,0,0],									// Tower
	["Land_Airport_Tower_F",30,0,0],									// Tower
	["Land_LifeguardTower_01_F",30,0,0],								// Tower
	["Land_Castle_01_tower_F",30,0,0],									// Tower
	["Land_A_Castle_Bergfrit",30,0,0],									// Tower
	["Land_A_Castle_Donjon",30,0,0],									// Tower
	["Land_Cargo_Patrol_V1_F",30,0,0],									// Tower
	["CargoPlaftorm_01_green_F",30,0,0],								// Tower
	["Land_Mil_ControlTower",30,0,0],									// Tower
	["Land_ControlTower_01_F",30,0,0],									// Tower
	["Land_Airport_01_controlTower_F",30,0,0],							// Tower
	["Land_Pallet_F",0,0,0],											// Bridge
	["Land_WorkStand_F",0,0,0],											// Bridge
	["Land_prebehlavka",0,0,0],											// Bridge
	["Land_Climbing_Obstacle",0,0,0],									// Bridge
	["Land_A_Castle_Stairs_A",0,0,0],									// Stairs
	["Land_Tribune_F",0,0,0],											// Stairs
	["Land_FireEscape_01_short_F",0,0,0],								// Stairs
	["Land_FireEscape_01_tall_F",0,0,0],								// Stairs
	["Land_WoodenRamp",0,0,0],											// Ramp
	["ConcreteRamp",0,0,0],												// Ramp
	["Land_ConcreteRamp",0,0,0],										// Ramp
	["Land_Pier_Box_F",10,0,0],											// Platform
	["Land_Podesta_1_cube",10,0,0],										// Platform
	["Land_Podesta_1_cube_long",10,0,0],								// Platform
	["Land_Podesta_1_stairs4",10,0,0],									// Platform
	["Land_ConcreteBlock",10,0,0],										// Platform
	["Land_Podesta_10",10,0,0],											// Platform
	["Land_Podesta_5",10,0,0],											// Platform
	["Land_BC_Court_F",10,0,0],											// Platform
	["Land_AirstripPlatform_01_F",10,0,0],								// Raised platform
	["Land_MedicalTent_01_floor_light_F",0,0,0],						// Floor
	["Land_MedicalTent_01_floor_dark_F",0,0,0],							// Floor
	["Land_GardenPavement_01_F",0,0,0],									// Floor
	["Land_GardenPavement_02_F",0,0,0],									// Floor
	["Land_Sidewalk_01_4m_F",0,0,0],									// Floor
	["Land_Sidewalk_01_8m_F",0,0,0],									// Floor
	["Land_Sidewalk_01_corner_F",0,0,0],								// Floor
    ["Land_CampingChair_V1_F",0,0,0],									// Clutter
    ["Land_CampingChair_V2_F",0,0,0],									// Clutter
    ["Land_CampingTable_F",0,0,0],										// Clutter
    ["MapBoard_altis_F",0,0,0],											// Clutter
    ["MapBoard_stratis_F",0,0,0],										// Clutter
    ["MapBoard_seismic_F",0,0,0],										// Clutter
    ["Land_Pallet_MilBoxes_F",0,0,0],									// Clutter
    ["Land_PaperBox_open_empty_F",0,0,0],								// Clutter
    ["Land_PaperBox_open_full_F",0,0,0],								// Clutter
    ["Land_PaperBox_closed_F",0,0,0],									// Clutter
    ["Land_DieselGroundPowerUnit_01_F",0,0,0],							// Clutter
    ["Land_ToolTrolley_02_F",0,0,0],									// Clutter
    ["Land_WeldingTrolley_01_F",0,0,0],									// Clutter
    ["Land_Workbench_01_F",0,0,0],										// Clutter
    ["Land_GasTank_01_blue_F",0,0,0],									// Clutter
    ["Land_GasTank_01_khaki_F",0,0,0],									// Clutter
    ["Land_GasTank_01_yellow_F",0,0,0],									// Clutter
    ["Land_GasTank_02_F",0,0,0],										// Clutter
	["Land_Grave_dirt_F",0,0,0],										// Clutter
	["Land_Grave_forest_F",0,0,0],										// Clutter
	["Land_TreeBin_F",0,0,0],											// Clutter
	["Land_StallWater_F",0,0,0],										// Clutter
	["Land_WheelCart_F",0,0,0],											// Clutter
	["Land_BC_Basket_F",0,0,0],											// Clutter
	["RoadBarrier_long",0,0,0],											// Clutter
	["RoadBarrier_light",0,0,0],										// Clutter
	["Body",0,0,0],														// Clutter
	["GraveCrossHelmet_EP1",0,0,0],										// Clutter
    ["Land_ClutterCutter_large_F",0,0,0]								// Grass remover
];

support_vehicles = [
    [Arsenal_typename,100,200,0],
    [Respawn_truck_typename,200,0,100],
    [FOB_box_typename,300,500,0],
    [FOB_truck_typename,300,500,75],
    [KP_liberation_small_storage_building,0,0,0],
    [KP_liberation_large_storage_building,0,0,0],
    [KP_liberation_recycle_building,250,0,0],
    [KP_liberation_air_vehicle_building,1000,0,0],
    [KP_liberation_heli_slot_building,250,0,0],
    [KP_liberation_plane_slot_building,500,0,0],
    ["ACE_medicalSupplyCrate_advanced",50,0,0],
    ["ACE_Box_82mm_Mo_HE",50,40,0],
    ["ACE_Box_82mm_Mo_Smoke",50,10,0],
    ["ACE_Box_82mm_Mo_Illum",50,10,0],
    ["ACE_Wheel",10,0,0],
    ["ACE_Track",10,0,0],
    ["USAF_missileCart_W_AGM114",50,150,0],                             // Missile Cart (AGM-114)
    ["USAF_missileCart_AGMMix",50,150,0],                               // Missile Cart (AGM-65 Mix)
    ["USAF_missileCart_AGM1",50,150,0],                                 // Missile Cart (AGM-65D)
    ["USAF_missileCart_AGM2",50,150,0],                                 // Missile Cart (AGM-65E)
    ["USAF_missileCart_AGM3",50,150,0],                                 // Missile Cart (AGM-65K)
    ["USAF_missileCart_AA1",50,150,0],                                  // Missile Cart (AIM-9M/AIM-120)
    ["USAF_missileCart_AA2",50,150,0],                                  // Missile Cart (AIM-9X/AIM-120)
    ["USAF_missileCart_GBU12_green",50,150,0],                          // Missile Cart (GBU12 Green)
    ["USAF_missileCart_GBU12_maritime",50,150,0],                       // Missile Cart (GBU12 Maritime)
    ["USAF_missileCart_GBU12",50,150,0],                                // Missile Cart (GBU12)
    ["USAF_missileCart_Gbu31",50,150,0],                                // Missile Cart (GBU31)
    ["USAF_missileCart_GBU39",50,150,0],                                // Missile Cart (GBU39)
    ["USAF_missileCart_Mk82",50,150,0],                                 // Missile Cart (Mk82)
    ["CUP_B_TowingTractor_NATO",50,0,25],                               // Towing Tractor
    ["B_APC_Tracked_01_CRV_F",500,250,350],                             // CRV-6e Bobcat
    ["rhsusf_M977A4_REPAIR_BKIT_usarmy_wd",325,0,75],                   // M977A4 Repair
    ["rhsusf_M978A4_BKIT_usarmy_wd",125,0,275],                         // M978A4 Fuel
    ["rhsusf_M977A4_AMMO_BKIT_usarmy_wd",125,200,75],                   // M977A4 Ammo
    ["B_Slingload_01_Repair_F",275,0,0],                                // Huron Repair
    ["B_Slingload_01_Fuel_F",75,0,200],                                 // Huron Fuel
    ["B_Slingload_01_Ammo_F",75,200,0]                                  // Huron Ammo
];

/*
    --- Squads ---
    Pre-made squads for the commander build menu.
    These shouldn't exceed 10 members.
*/

// Light infantry squad.
blufor_squad_inf_light = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// Heavy infantry squad.
blufor_squad_inf = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_riflemanat",
    "rhsusf_army_ocp_grenadier",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_autorifleman",
    "rhsusf_army_ocp_machinegunner",
    "rhsusf_army_ocp_marksman",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_engineer"
];

// AT specialists squad.
blufor_squad_at = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_javelin",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// AA specialists squad.
blufor_squad_aa = [
    "rhsusf_army_ocp_teamleader",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_rifleman",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_aa",
    "rhsusf_army_ocp_medic",
    "rhsusf_army_ocp_rifleman"
];

// Force recon squad.
blufor_squad_recon = [
    "rhsusf_usmc_recon_marpat_wd_teamleader",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman",
    "rhsusf_usmc_recon_marpat_wd_rifleman_at",
    "rhsusf_usmc_recon_marpat_wd_autorifleman",
    "rhsusf_usmc_recon_marpat_wd_machinegunner",
    "rhsusf_usmc_recon_marpat_wd_marksman",
    "rhsusf_usmc_recon_marpat_wd_sniper_M107",
    "rhsusf_army_ucp_medic",
    "rhsusf_army_ucp_engineer"
];

// Paratroopers squad (The units of this squad will automatically get parachutes on build)
blufor_squad_para = [
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st",
    "rhsusf_army_ocp_rifleman_101st"
];

/*
    --- Elite vehicles ---
    Classnames below have to be unlocked by capturing military bases.
    Which base locks a vehicle is randomized on the first start of the campaign.
*/
elite_vehicles = [
    "rhsusf_mkvsoc",                                                    // Mk.V SOCOM
    "rhsusf_m1a1aim_tuski_wd",                                          // M1A1SA (Tusk I)
    "rhsusf_m1a2sep1tuskiiwd_usarmy",                                   // M1A2SEPv1 (Tusk II)
    "rhsusf_m109_usarmy",                                               // M109A6
    "RHS_AH64D_wd",                                                     // AH-64D (Multi-Role)
    "B_UAV_02_dynamicLoadout_F",                                        // MQ-4A Greyhawk
    "B_T_UAV_03_dynamicLoadout_F",                                      // MQ-12 Falcon
    "B_UAV_05_F",                                                       // UCAV Sentinel
    "RHS_A10",                                                          // A-10A (CAS)
    "USAF_MQ9",                                                         // MQ-9 Reaper
    "USAF_A10",                                                         // A-10C Thunderbolt II
    "USAF_F22",                                                         // F-22A Raptor
    "USAF_F22_EWP_AA",                                                  // F-22A Raptor (EWP-AA)
    "USAF_F22_EWP_AG",                                                  // F-22A Raptor (EWP-AG)
    "USAF_F22_Heavy",                                                   // F-22A Raptor (Heavy)
    "USAF_F35A_STEALTH",                                                // F-35A Lightning II
    "USAF_F35A",                                                        // F-35A Lightning II (Heavy)
    "FIR_F15C",                                                         // F-15C Eagle
    "FIR_F15D",                                                         // F-15D Eagle
    "FIR_F15E",                                                         // F-15E Strike Eagle
    "JS_JC_FA18E",                                                      // F/A-18 E Super Hornet
    "JS_JC_FA18F",                                                      // F/A-18 F Super Hornet
    "B_Plane_Fighter_01_F",                                             // F/A-181 Black Wasp II
    "B_Plane_Fighter_01_Stealth_F",                                     // F/A-181 Black Wasp II (Stealth)
    "B_T_VTOL_01_armed_F"                                               // V-44 X Blackfish (Armed)
];
