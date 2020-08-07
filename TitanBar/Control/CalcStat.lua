import (string.gsub(getfenv(1)._.Name,"%.CalcStat","")..".CalcSsup");

function CalcStat(sname, slvl, sparam)

	local sn = string.upper(string.match(sname,"(%w+)"));

	local L = slvl;
	local N = 1;
	local C = "";

	if sparam ~= nil then
		if type(sparam) == "number" then
			N = sparam;
		else
			C = sparam;
		end
	end

	if sn < "PARTBLOCKPRATPC" then
		if sn < "EVADEPRATPCAPR" then
			if sn < "CRITDEFPRATPA" then
				if sn < "BPEPPRAT" then
					if sn < "BLOCKPBONUS" then
						if sn < "ARMOURLOWRAW" then
							if sn < "ADJTRAITPROGRATINGS" then
								if sn == "-VERSION" then
									return "1.1.1p";
								else
									return 0;
								end
							elseif sn > "ADJTRAITPROGRATINGS" then
								if sn == "ARMCATMP" then
									if L-DblCalcDev <= 0 then
										return 0;
									elseif L-DblCalcDev <= 1 then
										return 14877/12350;
									elseif L-DblCalcDev <= 2 then
										return 12415/12350;
									else
										return 9880/12350;
									end
								else
									return 0;
								end
							else
								if L-DblCalcDev <= 105 then
									return LinFmod(1,CalcStat("TraitProg",1,N),0.8*CalcStat("TraitProg",105,N),1,105,L)/CalcStat("TraitProg",L,N);
								elseif L-DblCalcDev <= 106 then
									return LinFmod(1,0.8*CalcStat("TraitProg",105,N),CalcStat("TraitProg",106,N),105,106,L)/CalcStat("TraitProg",L,N);
								elseif L-DblCalcDev <= 121 then
									return 1;
								elseif L-DblCalcDev <= 130 then
									return LinFmod(1,CalcStat("TraitProg",121,N),0.9*CalcStat("TraitProg",130,N),121,130,L)/CalcStat("TraitProg",L,N);
								else
									return 0.9;
								end
							end
						elseif sn > "ARMOURLOWRAW" then
							if sn < "ARMPROGMP" then
								if sn == "ARMPROG" then
									if L-DblCalcDev <= 400 then
										return CalcStat("ItemProg",L,N)/CalcStat("StdProg",75,N);
									elseif L-DblCalcDev <= 449 then
										return LinFmod(1,CalcStat("ItemProg",400,N)/CalcStat("StdProg",75,N),0.9*(CalcStat("ItemProg",449,N)/CalcStat("StdProg",75,N)),400,449,L);
									else
										return 0.9*(CalcStat("ItemProg",L,N)/CalcStat("StdProg",75,N));
									end
								else
									return 0;
								end
							elseif sn > "ARMPROGMP" then
								if sn > "ARMQTYLOWMP" then
									if sn == "ARMTYPEMP" then
										if L-DblCalcDev <= 0 then
											return 0;
										else
											return DataTableValue({9,9,18.75,30,15,25,12,37.5},L);
										end
									else
										return 0;
									end
								elseif sn == "ARMQTYLOWMP" then
									if L-DblCalcDev <= 0 then
										return 0;
									else
										return DataTableValue({50,50,50,50,50,49.8,50,50},L);
									end
								else
									return 0;
								end
							else
								if L-DblCalcDev <= 0 then
									return 0;
								elseif L-DblCalcDev <= 1 then
									return CalcStat("ArmProg",N,CalcStat("ProgBMitHeavy",L));
								elseif L-DblCalcDev <= 2 then
									return CalcStat("ArmProg",N,CalcStat("ProgBMitMedium",L));
								else
									return CalcStat("ArmProg",N,CalcStat("ProgBMitLight",L));
								end
							end
						else
							return CalcStat("ArmTypeMP",ArmCodeIndex(C,2))*CalcStat("ArmQtyLowMP",ArmCodeIndex(C,2))*CalcStat("ArmCatMP",ArmCodeIndex(C,1))*CalcStat("ArmProgMP",ArmCodeIndex(C,1),L);
						end
					elseif sn > "BLOCKPBONUS" then
						if sn < "BLOCKPRATPB" then
							if sn < "BLOCKPRATP" then
								if sn == "BLOCKPPRAT" then
									return CalcStat("BPEPPRat",L,N);
								else
									return 0;
								end
							elseif sn > "BLOCKPRATP" then
								if sn == "BLOCKPRATPA" then
									return CalcStat("BPEPRatPA",L);
								else
									return 0;
								end
							else
								return CalcStat("BPEPRatP",L,N);
							end
						elseif sn > "BLOCKPRATPB" then
							if sn < "BLOCKPRATPCAP" then
								if sn == "BLOCKPRATPC" then
									return CalcStat("BPEPRatPC",L);
								else
									return 0;
								end
							elseif sn > "BLOCKPRATPCAP" then
								if sn > "BLOCKPRATPCAPR" then
									if sn == "BPEPBONUS" then
										return 0;
									else
										return 0;
									end
								elseif sn == "BLOCKPRATPCAPR" then
									return CalcStat("BPEPRatPCapR",L);
								else
									return 0;
								end
							else
								return CalcStat("BPEPRatPCap",L);
							end
						else
							return CalcStat("BPEPRatPB",L);
						end
					else
						return CalcStat("BPEPBonus",L);
					end
				elseif sn > "BPEPPRAT" then
					if sn < "BRATMASTERY" then
						if sn < "BPEPRATPC" then
							if sn < "BPEPRATPA" then
								if sn == "BPEPRATP" then
									return CalcPercAB(CalcStat("BPEPRatPA",L),CalcStat("BPEPRatPB",L),CalcStat("BPEPRatPCap",L),N);
								else
									return 0;
								end
							elseif sn > "BPEPRATPA" then
								if sn == "BPEPRATPB" then
									return CalcStat("BratLow",L);
								else
									return 0;
								end
							else
								return 26;
							end
						elseif sn > "BPEPRATPC" then
							if sn < "BPEPRATPCAPR" then
								if sn == "BPEPRATPCAP" then
									return 13;
								else
									return 0;
								end
							elseif sn > "BPEPRATPCAPR" then
								if sn > "BRATHIGH" then
									if sn == "BRATLOW" then
										return CalcStat("BratProg",L,CalcStat("ProgBLow",L));
									else
										return 0;
									end
								elseif sn == "BRATHIGH" then
									return CalcStat("BratProg",L,CalcStat("ProgBHigh",L));
								else
									return 0;
								end
							else
								return CalcStat("BPEPRatPB",L)*CalcStat("BPEPRatPC",L);
							end
						else
							return 1;
						end
					elseif sn > "BRATMASTERY" then
						if sn < "BRATMITMEDIUM" then
							if sn < "BRATMITHEAVY" then
								if sn == "BRATMEDIUM" then
									return CalcStat("BratProg",L,CalcStat("ProgBMedium",L));
								else
									return 0;
								end
							elseif sn > "BRATMITHEAVY" then
								if sn == "BRATMITLIGHT" then
									return CalcStat("BratProg",L,CalcStat("ProgBMitLight",L));
								else
									return 0;
								end
							else
								return CalcStat("BratProg",L,CalcStat("ProgBMitHeavy",L));
							end
						elseif sn > "BRATMITMEDIUM" then
							if sn < "CRITDEFPBONUS" then
								if sn == "BRATPROG" then
									if L-DblCalcDev <= 75 then
										return LinFmod(RoundDbl(N),1,75,1,75,L);
									elseif L-DblCalcDev <= 76 then
										return LinFmod(1,RoundDbl(N)*75,CalcStat("StdProg",76,N),75,76,L);
									elseif L-DblCalcDev <= 100 then
										return LinFmod(1,CalcStat("StdProg",76,N),CalcStat("StdProg",100,N),75,100,L,10);
									elseif L-DblCalcDev <= 101 then
										return CalcStat("StdProg",L,N);
									elseif L-DblCalcDev <= 105 then
										return LinFmod(1,CalcStat("StdProg",101,N),CalcStat("StdProg",105,N),100,105,L,10);
									elseif L-DblCalcDev <= 106 then
										return CalcStat("StdProg",L,N);
									elseif L-DblCalcDev <= 115 then
										return LinFmod(1,CalcStat("StdProg",106,N),CalcStat("StdProg",115,N),106,115,L,10);
									elseif L-DblCalcDev <= 116 then
										return CalcStat("StdProg",L,N);
									elseif L-DblCalcDev <= 120 then
										return LinFmod(1,CalcStat("StdProg",116,N),CalcStat("StdProg",120,N),116,120,L,10);
									elseif L-DblCalcDev <= 121 then
										return CalcStat("StdProg",L,N);
									elseif L-DblCalcDev <= 130 then
										return LinFmod(1,CalcStat("StdProg",121,N),CalcStat("StdProg",130,N),121,130,L,10);
									elseif L-DblCalcDev <= 131 then
										return CalcStat("StdProg",L,N);
									else
										return LinFmod(1,CalcStat("StdProg",131,N),CalcStat("StdProg",140,N),131,140,L,10);
									end
								else
									return 0;
								end
							elseif sn > "CRITDEFPBONUS" then
								if sn > "CRITDEFPPRAT" then
									if sn == "CRITDEFPRATP" then
										return CalcPercAB(CalcStat("CritDefPRatPA",L),CalcStat("CritDefPRatPB",L),CalcStat("CritDefPRatPCap",L),N);
									else
										return 0;
									end
								elseif sn == "CRITDEFPPRAT" then
									return CalcRatAB(CalcStat("CritDefPRatPA",L),CalcStat("CritDefPRatPB",L),CalcStat("CritDefPRatPCapR",L),N);
								else
									return 0;
								end
							else
								return 0;
							end
						else
							return CalcStat("BratProg",L,CalcStat("ProgBMitMedium",L));
						end
					else
						return CalcStat("BratProg",L,CalcStat("ProgBMastery",L));
					end
				else
					return CalcRatAB(CalcStat("BPEPRatPA",L),CalcStat("BPEPRatPB",L),CalcStat("BPEPRatPCapR",L),N);
				end
			elseif sn > "CRITDEFPRATPA" then
				if sn < "CRITMAGNPRATPC" then
					if sn < "CRITHITPRATPB" then
						if sn < "CRITDEFPRATPCAPR" then
							if sn < "CRITDEFPRATPC" then
								if sn == "CRITDEFPRATPB" then
									return CalcStat("BratLow",L);
								else
									return 0;
								end
							elseif sn > "CRITDEFPRATPC" then
								if sn == "CRITDEFPRATPCAP" then
									return 80;
								else
									return 0;
								end
							else
								return 1;
							end
						elseif sn > "CRITDEFPRATPCAPR" then
							if sn < "CRITHITPPRAT" then
								if sn == "CRITHITPBONUS" then
									return 0;
								else
									return 0;
								end
							elseif sn > "CRITHITPPRAT" then
								if sn > "CRITHITPRATP" then
									if sn == "CRITHITPRATPA" then
										return 50;
									else
										return 0;
									end
								elseif sn == "CRITHITPRATP" then
									return CalcPercAB(CalcStat("CritHitPRatPA",L),CalcStat("CritHitPRatPB",L),CalcStat("CritHitPRatPCap",L),N);
								else
									return 0;
								end
							else
								return CalcRatAB(CalcStat("CritHitPRatPA",L),CalcStat("CritHitPRatPB",L),CalcStat("CritHitPRatPCapR",L),N);
							end
						else
							return CalcStat("CritDefPRatPB",L)*CalcStat("CritDefPRatPC",L);
						end
					elseif sn > "CRITHITPRATPB" then
						if sn < "CRITMAGNPBONUS" then
							if sn < "CRITHITPRATPCAP" then
								if sn == "CRITHITPRATPC" then
									return 1;
								else
									return 0;
								end
							elseif sn > "CRITHITPRATPCAP" then
								if sn == "CRITHITPRATPCAPR" then
									return CalcStat("CritHitPRatPB",L)*CalcStat("CritHitPRatPC",L);
								else
									return 0;
								end
							else
								return 25;
							end
						elseif sn > "CRITMAGNPBONUS" then
							if sn < "CRITMAGNPRATP" then
								if sn == "CRITMAGNPPRAT" then
									return CalcRatAB(CalcStat("CritMagnPRatPA",L),CalcStat("CritMagnPRatPB",L),CalcStat("CritMagnPRatPCapR",L),N);
								else
									return 0;
								end
							elseif sn > "CRITMAGNPRATP" then
								if sn > "CRITMAGNPRATPA" then
									if sn == "CRITMAGNPRATPB" then
										return CalcStat("BratHigh",L);
									else
										return 0;
									end
								elseif sn == "CRITMAGNPRATPA" then
									if L-DblCalcDev <= 120 then
										return 200;
									elseif L-DblCalcDev <= 127 then
										return (-5)*L+750;
									else
										return 112.5;
									end
								else
									return 0;
								end
							else
								return CalcPercAB(CalcStat("CritMagnPRatPA",L),CalcStat("CritMagnPRatPB",L),CalcStat("CritMagnPRatPCap",L),N);
							end
						else
							return 0;
						end
					else
						return CalcStat("BratLow",L);
					end
				elseif sn > "CRITMAGNPRATPC" then
					if sn < "DEVHITPRATPCAP" then
						if sn < "DEVHITPPRAT" then
							if sn < "CRITMAGNPRATPCAPR" then
								if sn == "CRITMAGNPRATPCAP" then
									if L-DblCalcDev <= 120 then
										return 100;
									else
										return 75;
									end
								else
									return 0;
								end
							elseif sn > "CRITMAGNPRATPCAPR" then
								if sn == "DEVHITPBONUS" then
									return 0;
								else
									return 0;
								end
							else
								return CalcStat("CritMagnPRatPB",L)*CalcStat("CritMagnPRatPC",L);
							end
						elseif sn > "DEVHITPPRAT" then
							if sn < "DEVHITPRATPA" then
								if sn == "DEVHITPRATP" then
									return CalcPercAB(CalcStat("DevHitPRatPA",L),CalcStat("DevHitPRatPB",L),CalcStat("DevHitPRatPCap",L),N);
								else
									return 0;
								end
							elseif sn > "DEVHITPRATPA" then
								if sn > "DEVHITPRATPB" then
									if sn == "DEVHITPRATPC" then
										return 1;
									else
										return 0;
									end
								elseif sn == "DEVHITPRATPB" then
									return CalcStat("BratMedium",L);
								else
									return 0;
								end
							else
								return 20;
							end
						else
							return CalcRatAB(CalcStat("DevHitPRatPA",L),CalcStat("DevHitPRatPB",L),CalcStat("DevHitPRatPCapR",L),N);
						end
					elseif sn > "DEVHITPRATPCAP" then
						if sn < "EVADEPRATP" then
							if sn < "EVADEPBONUS" then
								if sn == "DEVHITPRATPCAPR" then
									return CalcStat("DevHitPRatPB",L)*CalcStat("DevHitPRatPC",L);
								else
									return 0;
								end
							elseif sn > "EVADEPBONUS" then
								if sn == "EVADEPPRAT" then
									return CalcStat("BPEPPRat",L,N);
								else
									return 0;
								end
							else
								return CalcStat("BPEPBonus",L);
							end
						elseif sn > "EVADEPRATP" then
							if sn < "EVADEPRATPB" then
								if sn == "EVADEPRATPA" then
									return CalcStat("BPEPRatPA",L);
								else
									return 0;
								end
							elseif sn > "EVADEPRATPB" then
								if sn > "EVADEPRATPC" then
									if sn == "EVADEPRATPCAP" then
										return CalcStat("BPEPRatPCap",L);
									else
										return 0;
									end
								elseif sn == "EVADEPRATPC" then
									return CalcStat("BPEPRatPC",L);
								else
									return 0;
								end
							else
								return CalcStat("BPEPRatPB",L);
							end
						else
							return CalcStat("BPEPRatP",L,N);
						end
					else
						return 10;
					end
				else
					return CalcStat("CritMagnPRatPCap",L)/(CalcStat("CritMagnPRatPA",L)-CalcStat("CritMagnPRatPCap",L));
				end
			else
				return 160;
			end
		elseif sn > "EVADEPRATPCAPR" then
			if sn < "MITMEDIUMPPRAT" then
				if sn < "ITEMPROG" then
					if sn < "ILVLTOLVL" then
						if sn < "FINESSEPRATPA" then
							if sn < "FINESSEPPRAT" then
								if sn == "FINESSEPBONUS" then
									return 0;
								else
									return 0;
								end
							elseif sn > "FINESSEPPRAT" then
								if sn == "FINESSEPRATP" then
									return CalcPercAB(CalcStat("FinessePRatPA",L),CalcStat("FinessePRatPB",L),CalcStat("FinessePRatPCap",L),N);
								else
									return 0;
								end
							else
								return CalcRatAB(CalcStat("FinessePRatPA",L),CalcStat("FinessePRatPB",L),CalcStat("FinessePRatPCapR",L),N);
							end
						elseif sn > "FINESSEPRATPA" then
							if sn < "FINESSEPRATPC" then
								if sn == "FINESSEPRATPB" then
									return CalcStat("BratLow",L);
								else
									return 0;
								end
							elseif sn > "FINESSEPRATPC" then
								if sn > "FINESSEPRATPCAP" then
									if sn == "FINESSEPRATPCAPR" then
										return CalcStat("FinessePRatPB",L)*CalcStat("FinessePRatPC",L);
									else
										return 0;
									end
								elseif sn == "FINESSEPRATPCAP" then
									return 50;
								else
									return 0;
								end
							else
								return 1;
							end
						else
							return 100;
						end
					elseif sn > "ILVLTOLVL" then
						if sn < "INHEALPRATPA" then
							if sn < "INHEALPPRAT" then
								if sn == "INHEALPBONUS" then
									return 0;
								else
									return 0;
								end
							elseif sn > "INHEALPPRAT" then
								if sn == "INHEALPRATP" then
									return CalcPercAB(CalcStat("InHealPRatPA",L),CalcStat("InHealPRatPB",L),CalcStat("InHealPRatPCap",L),N);
								else
									return 0;
								end
							else
								return CalcRatAB(CalcStat("InHealPRatPA",L),CalcStat("InHealPRatPB",L),CalcStat("InHealPRatPCapR",L),N);
							end
						elseif sn > "INHEALPRATPA" then
							if sn < "INHEALPRATPC" then
								if sn == "INHEALPRATPB" then
									return CalcStat("BratLow",L);
								else
									return 0;
								end
							elseif sn > "INHEALPRATPC" then
								if sn > "INHEALPRATPCAP" then
									if sn == "INHEALPRATPCAPR" then
										return CalcStat("InHealPRatPB",L)*CalcStat("InHealPRatPC",L);
									else
										return 0;
									end
								elseif sn == "INHEALPRATPCAP" then
									return 25;
								else
									return 0;
								end
							else
								return 1;
							end
						else
							return 50;
						end
					else
						if L-DblCalcDev <= 79 then
							return LinFmod(1,1,75,1,79,L)*N;
						elseif L-DblCalcDev <= 80 then
							return LinFmod(1,75,76,79,80,L)*N;
						elseif L-DblCalcDev <= 200 then
							return LinFmod(1,76,100,80,200,L)*N;
						elseif L-DblCalcDev <= 205 then
							return LinFmod(1,100,101,200,205,L)*N;
						elseif L-DblCalcDev <= 225 then
							return LinFmod(1,101,105,205,225,L)*N;
						elseif L-DblCalcDev <= 300 then
							return LinFmod(1,105,106,225,300,L)*N;
						elseif L-DblCalcDev <= 349 then
							return LinFmod(1,106,115,300,349,L)*N;
						elseif L-DblCalcDev <= 350 then
							return LinFmod(1,115,116,349,350,L)*N;
						elseif L-DblCalcDev <= 399 then
							return LinFmod(1,116,120,350,399,L)*N;
						elseif L-DblCalcDev <= 400 then
							return LinFmod(1,120,121,399,400,L)*N;
						elseif L-DblCalcDev <= 449 then
							return LinFmod(1,121,130,400,449,L)*N;
						elseif L-DblCalcDev <= 450 then
							return LinFmod(1,130,131,449,450,L)*N;
						else
							return LinFmod(1,131,140,450,499,L)*N;
						end
					end
				elseif sn > "ITEMPROG" then
					if sn < "MITLIGHTPBONUS" then
						if sn < "MITHEAVYPRATPA" then
							if sn < "MITHEAVYPPRAT" then
								if sn == "MITHEAVYPBONUS" then
									return 0;
								else
									return 0;
								end
							elseif sn > "MITHEAVYPPRAT" then
								if sn == "MITHEAVYPRATP" then
									return CalcPercAB(CalcStat("MitHeavyPRatPA",L),CalcStat("MitHeavyPRatPB",L),CalcStat("MitHeavyPRatPCap",L),N);
								else
									return 0;
								end
							else
								return CalcRatAB(CalcStat("MitHeavyPRatPA",L),CalcStat("MitHeavyPRatPB",L),CalcStat("MitHeavyPRatPCapR",L),N);
							end
						elseif sn > "MITHEAVYPRATPA" then
							if sn < "MITHEAVYPRATPC" then
								if sn == "MITHEAVYPRATPB" then
									return CalcStat("BratMitHeavy",L);
								else
									return 0;
								end
							elseif sn > "MITHEAVYPRATPC" then
								if sn > "MITHEAVYPRATPCAP" then
									if sn == "MITHEAVYPRATPCAPR" then
										return CalcStat("MitHeavyPRatPB",L)*CalcStat("MitHeavyPRatPC",L);
									else
										return 0;
									end
								elseif sn == "MITHEAVYPRATPCAP" then
									return 60;
								else
									return 0;
								end
							else
								return 1.2;
							end
						else
							return 110;
						end
					elseif sn > "MITLIGHTPBONUS" then
						if sn < "MITLIGHTPRATPB" then
							if sn < "MITLIGHTPRATP" then
								if sn == "MITLIGHTPPRAT" then
									return CalcRatAB(CalcStat("MitLightPRatPA",L),CalcStat("MitLightPRatPB",L),CalcStat("MitLightPRatPCapR",L),N);
								else
									return 0;
								end
							elseif sn > "MITLIGHTPRATP" then
								if sn == "MITLIGHTPRATPA" then
									return 65;
								else
									return 0;
								end
							else
								return CalcPercAB(CalcStat("MitLightPRatPA",L),CalcStat("MitLightPRatPB",L),CalcStat("MitLightPRatPCap",L),N);
							end
						elseif sn > "MITLIGHTPRATPB" then
							if sn < "MITLIGHTPRATPCAP" then
								if sn == "MITLIGHTPRATPC" then
									return 1.6;
								else
									return 0;
								end
							elseif sn > "MITLIGHTPRATPCAP" then
								if sn > "MITLIGHTPRATPCAPR" then
									if sn == "MITMEDIUMPBONUS" then
										return 0;
									else
										return 0;
									end
								elseif sn == "MITLIGHTPRATPCAPR" then
									return CalcStat("MitLightPRatPB",L)*CalcStat("MitLightPRatPC",L);
								else
									return 0;
								end
							else
								return 40;
							end
						else
							return CalcStat("BratMitLight",L);
						end
					else
						return 0;
					end
				else
					return CalcStat("StatProg",CalcStat("ILvlToLvl",L),N);
				end
			elseif sn > "MITMEDIUMPPRAT" then
				if sn < "PARRYPRATPA" then
					if sn < "OUTHEALPRATP" then
						if sn < "MITMEDIUMPRATPC" then
							if sn < "MITMEDIUMPRATPA" then
								if sn == "MITMEDIUMPRATP" then
									return CalcPercAB(CalcStat("MitMediumPRatPA",L),CalcStat("MitMediumPRatPB",L),CalcStat("MitMediumPRatPCap",L),N);
								else
									return 0;
								end
							elseif sn > "MITMEDIUMPRATPA" then
								if sn == "MITMEDIUMPRATPB" then
									return CalcStat("BratMitMedium",L);
								else
									return 0;
								end
							else
								return 85;
							end
						elseif sn > "MITMEDIUMPRATPC" then
							if sn < "MITMEDIUMPRATPCAPR" then
								if sn == "MITMEDIUMPRATPCAP" then
									return 50;
								else
									return 0;
								end
							elseif sn > "MITMEDIUMPRATPCAPR" then
								if sn > "OUTHEALPBONUS" then
									if sn == "OUTHEALPPRAT" then
										return CalcRatAB(CalcStat("OutHealPRatPA",L),CalcStat("OutHealPRatPB",L),CalcStat("OutHealPRatPCapR",L),N);
									else
										return 0;
									end
								elseif sn == "OUTHEALPBONUS" then
									return 0;
								else
									return 0;
								end
							else
								return CalcStat("MitMediumPRatPB",L)*CalcStat("MitMediumPRatPC",L);
							end
						else
							return 10/7;
						end
					elseif sn > "OUTHEALPRATP" then
						if sn < "OUTHEALPRATPCAP" then
							if sn < "OUTHEALPRATPB" then
								if sn == "OUTHEALPRATPA" then
									return 140;
								else
									return 0;
								end
							elseif sn > "OUTHEALPRATPB" then
								if sn == "OUTHEALPRATPC" then
									return 1;
								else
									return 0;
								end
							else
								return CalcStat("BratMedium",L);
							end
						elseif sn > "OUTHEALPRATPCAP" then
							if sn < "PARRYPBONUS" then
								if sn == "OUTHEALPRATPCAPR" then
									return CalcStat("OutHealPRatPB",L)*CalcStat("OutHealPRatPC",L);
								else
									return 0;
								end
							elseif sn > "PARRYPBONUS" then
								if sn > "PARRYPPRAT" then
									if sn == "PARRYPRATP" then
										return CalcStat("BPEPRatP",L,N);
									else
										return 0;
									end
								elseif sn == "PARRYPPRAT" then
									return CalcStat("BPEPPRat",L,N);
								else
									return 0;
								end
							else
								return CalcStat("BPEPBonus",L);
							end
						else
							return 70;
						end
					else
						return CalcPercAB(CalcStat("OutHealPRatPA",L),CalcStat("OutHealPRatPB",L),CalcStat("OutHealPRatPCap",L),N);
					end
				elseif sn > "PARRYPRATPA" then
					if sn < "PARTBLOCKMITPRATPB" then
						if sn < "PARRYPRATPCAPR" then
							if sn < "PARRYPRATPC" then
								if sn == "PARRYPRATPB" then
									return CalcStat("BPEPRatPB",L);
								else
									return 0;
								end
							elseif sn > "PARRYPRATPC" then
								if sn == "PARRYPRATPCAP" then
									return CalcStat("BPEPRatPCap",L);
								else
									return 0;
								end
							else
								return CalcStat("BPEPRatPC",L);
							end
						elseif sn > "PARRYPRATPCAPR" then
							if sn < "PARTBLOCKMITPPRAT" then
								if sn == "PARTBLOCKMITPBONUS" then
									return CalcStat("PartMitPBonus",L);
								else
									return 0;
								end
							elseif sn > "PARTBLOCKMITPPRAT" then
								if sn > "PARTBLOCKMITPRATP" then
									if sn == "PARTBLOCKMITPRATPA" then
										return CalcStat("PartMitPRatPA",L);
									else
										return 0;
									end
								elseif sn == "PARTBLOCKMITPRATP" then
									return CalcStat("PartMitPRatP",L,N);
								else
									return 0;
								end
							else
								return CalcStat("PartMitPPRat",L,N);
							end
						else
							return CalcStat("BPEPRatPCapR",L);
						end
					elseif sn > "PARTBLOCKMITPRATPB" then
						if sn < "PARTBLOCKPBONUS" then
							if sn < "PARTBLOCKMITPRATPCAP" then
								if sn == "PARTBLOCKMITPRATPC" then
									return CalcStat("PartMitPRatPC",L);
								else
									return 0;
								end
							elseif sn > "PARTBLOCKMITPRATPCAP" then
								if sn == "PARTBLOCKMITPRATPCAPR" then
									return CalcStat("PartMitPRatPCapR",L);
								else
									return 0;
								end
							else
								return CalcStat("PartMitPRatPCap",L);
							end
						elseif sn > "PARTBLOCKPBONUS" then
							if sn < "PARTBLOCKPRATP" then
								if sn == "PARTBLOCKPPRAT" then
									return CalcStat("PartBPEPPRat",L,N);
								else
									return 0;
								end
							elseif sn > "PARTBLOCKPRATP" then
								if sn > "PARTBLOCKPRATPA" then
									if sn == "PARTBLOCKPRATPB" then
										return CalcStat("PartBPEPRatPB",L);
									else
										return 0;
									end
								elseif sn == "PARTBLOCKPRATPA" then
									return CalcStat("PartBPEPRatPA",L);
								else
									return 0;
								end
							else
								return CalcStat("PartBPEPRatP",L,N);
							end
						else
							return CalcStat("PartBPEPBonus",L);
						end
					else
						return CalcStat("PartMitPRatPB",L);
					end
				else
					return CalcStat("BPEPRatPA",L);
				end
			else
				return CalcRatAB(CalcStat("MitMediumPRatPA",L),CalcStat("MitMediumPRatPB",L),CalcStat("MitMediumPRatPCapR",L),N);
			end
		else
			return CalcStat("BPEPRatPCapR",L);
		end
	elseif sn > "PARTBLOCKPRATPC" then
		if sn < "PHYMITLPRATPC" then
			if sn < "PARTPARRYMITPPRAT" then
				if sn < "PARTEVADEMITPRATPCAPR" then
					if sn < "PARTBPEPRATPCAP" then
						if sn < "PARTBPEPPRAT" then
							if sn < "PARTBLOCKPRATPCAPR" then
								if sn == "PARTBLOCKPRATPCAP" then
									return CalcStat("PartBPEPRatPCap",L);
								else
									return 0;
								end
							elseif sn > "PARTBLOCKPRATPCAPR" then
								if sn == "PARTBPEPBONUS" then
									return 0;
								else
									return 0;
								end
							else
								return CalcStat("PartBPEPRatPCapR",L);
							end
						elseif sn > "PARTBPEPPRAT" then
							if sn < "PARTBPEPRATPA" then
								if sn == "PARTBPEPRATP" then
									return CalcPercAB(CalcStat("PartBPEPRatPA",L),CalcStat("PartBPEPRatPB",L),CalcStat("PartBPEPRatPCap",L),N);
								else
									return 0;
								end
							elseif sn > "PARTBPEPRATPA" then
								if sn > "PARTBPEPRATPB" then
									if sn == "PARTBPEPRATPC" then
										return 1;
									else
										return 0;
									end
								elseif sn == "PARTBPEPRATPB" then
									return CalcStat("BratMedium",L);
								else
									return 0;
								end
							else
								return 70;
							end
						else
							return CalcRatAB(CalcStat("PartBPEPRatPA",L),CalcStat("PartBPEPRatPB",L),CalcStat("PartBPEPRatPCapR",L),N);
						end
					elseif sn > "PARTBPEPRATPCAP" then
						if sn < "PARTEVADEMITPRATP" then
							if sn < "PARTEVADEMITPBONUS" then
								if sn == "PARTBPEPRATPCAPR" then
									return CalcStat("PartBPEPRatPB",L)*CalcStat("PartBPEPRatPC",L);
								else
									return 0;
								end
							elseif sn > "PARTEVADEMITPBONUS" then
								if sn == "PARTEVADEMITPPRAT" then
									return CalcStat("PartMitPPRat",L,N);
								else
									return 0;
								end
							else
								if L-DblCalcDev <= 1 then
									return 35;
								else
									return CalcStat("PartMitPBonus",L);
								end
							end
						elseif sn > "PARTEVADEMITPRATP" then
							if sn < "PARTEVADEMITPRATPB" then
								if sn == "PARTEVADEMITPRATPA" then
									return CalcStat("PartMitPRatPA",L);
								else
									return 0;
								end
							elseif sn > "PARTEVADEMITPRATPB" then
								if sn > "PARTEVADEMITPRATPC" then
									if sn == "PARTEVADEMITPRATPCAP" then
										return CalcStat("PartMitPRatPCap",L);
									else
										return 0;
									end
								elseif sn == "PARTEVADEMITPRATPC" then
									return CalcStat("PartMitPRatPC",L);
								else
									return 0;
								end
							else
								return CalcStat("PartMitPRatPB",L);
							end
						else
							return CalcStat("PartMitPRatP",L,N);
						end
					else
						return 35;
					end
				elseif sn > "PARTEVADEMITPRATPCAPR" then
					if sn < "PARTMITPBONUS" then
						if sn < "PARTEVADEPRATPA" then
							if sn < "PARTEVADEPPRAT" then
								if sn == "PARTEVADEPBONUS" then
									return CalcStat("PartBPEPBonus",L);
								else
									return 0;
								end
							elseif sn > "PARTEVADEPPRAT" then
								if sn == "PARTEVADEPRATP" then
									return CalcStat("PartBPEPRatP",L,N);
								else
									return 0;
								end
							else
								return CalcStat("PartBPEPPRat",L,N);
							end
						elseif sn > "PARTEVADEPRATPA" then
							if sn < "PARTEVADEPRATPC" then
								if sn == "PARTEVADEPRATPB" then
									return CalcStat("PartBPEPRatPB",L);
								else
									return 0;
								end
							elseif sn > "PARTEVADEPRATPC" then
								if sn > "PARTEVADEPRATPCAP" then
									if sn == "PARTEVADEPRATPCAPR" then
										return CalcStat("PartBPEPRatPCapR",L);
									else
										return 0;
									end
								elseif sn == "PARTEVADEPRATPCAP" then
									return CalcStat("PartBPEPRatPCap",L);
								else
									return 0;
								end
							else
								return CalcStat("PartBPEPRatPC",L);
							end
						else
							return CalcStat("PartBPEPRatPA",L);
						end
					elseif sn > "PARTMITPBONUS" then
						if sn < "PARTMITPRATPB" then
							if sn < "PARTMITPRATP" then
								if sn == "PARTMITPPRAT" then
									return CalcRatAB(CalcStat("PartMitPRatPA",L),CalcStat("PartMitPRatPB",L),CalcStat("PartMitPRatPCapR",L),N);
								else
									return 0;
								end
							elseif sn > "PARTMITPRATP" then
								if sn == "PARTMITPRATPA" then
									return 100;
								else
									return 0;
								end
							else
								return CalcPercAB(CalcStat("PartMitPRatPA",L),CalcStat("PartMitPRatPB",L),CalcStat("PartMitPRatPCap",L),N);
							end
						elseif sn > "PARTMITPRATPB" then
							if sn < "PARTMITPRATPCAP" then
								if sn == "PARTMITPRATPC" then
									return 1;
								else
									return 0;
								end
							elseif sn > "PARTMITPRATPCAP" then
								if sn > "PARTMITPRATPCAPR" then
									if sn == "PARTPARRYMITPBONUS" then
										return CalcStat("PartMitPBonus",L);
									else
										return 0;
									end
								elseif sn == "PARTMITPRATPCAPR" then
									return CalcStat("PartMitPRatPB",L)*CalcStat("PartMitPRatPC",L);
								else
									return 0;
								end
							else
								return 50;
							end
						else
							return CalcStat("BratMedium",L);
						end
					else
						return 10;
					end
				else
					return CalcStat("PartMitPRatPCapR",L);
				end
			elseif sn > "PARTPARRYMITPPRAT" then
				if sn < "PHYDMGPRATPA" then
					if sn < "PARTPARRYPRATP" then
						if sn < "PARTPARRYMITPRATPC" then
							if sn < "PARTPARRYMITPRATPA" then
								if sn == "PARTPARRYMITPRATP" then
									return CalcStat("PartMitPRatP",L,N);
								else
									return 0;
								end
							elseif sn > "PARTPARRYMITPRATPA" then
								if sn == "PARTPARRYMITPRATPB" then
									return CalcStat("PartMitPRatPB",L);
								else
									return 0;
								end
							else
								return CalcStat("PartMitPRatPA",L);
							end
						elseif sn > "PARTPARRYMITPRATPC" then
							if sn < "PARTPARRYMITPRATPCAPR" then
								if sn == "PARTPARRYMITPRATPCAP" then
									return CalcStat("PartMitPRatPCap",L);
								else
									return 0;
								end
							elseif sn > "PARTPARRYMITPRATPCAPR" then
								if sn > "PARTPARRYPBONUS" then
									if sn == "PARTPARRYPPRAT" then
										return CalcStat("PartBPEPPRat",L,N);
									else
										return 0;
									end
								elseif sn == "PARTPARRYPBONUS" then
									return CalcStat("PartBPEPBonus",L);
								else
									return 0;
								end
							else
								return CalcStat("PartMitPRatPCapR",L);
							end
						else
							return CalcStat("PartMitPRatPC",L);
						end
					elseif sn > "PARTPARRYPRATP" then
						if sn < "PARTPARRYPRATPCAP" then
							if sn < "PARTPARRYPRATPB" then
								if sn == "PARTPARRYPRATPA" then
									return CalcStat("PartBPEPRatPA",L);
								else
									return 0;
								end
							elseif sn > "PARTPARRYPRATPB" then
								if sn == "PARTPARRYPRATPC" then
									return CalcStat("PartBPEPRatPC",L);
								else
									return 0;
								end
							else
								return CalcStat("PartBPEPRatPB",L);
							end
						elseif sn > "PARTPARRYPRATPCAP" then
							if sn < "PHYDMGPBONUS" then
								if sn == "PARTPARRYPRATPCAPR" then
									return CalcStat("PartBPEPRatPCapR",L);
								else
									return 0;
								end
							elseif sn > "PHYDMGPBONUS" then
								if sn > "PHYDMGPPRAT" then
									if sn == "PHYDMGPRATP" then
										return CalcPercAB(CalcStat("PhyDmgPRatPA",L),CalcStat("PhyDmgPRatPB",L),CalcStat("PhyDmgPRatPCap",L),N);
									else
										return 0;
									end
								elseif sn == "PHYDMGPPRAT" then
									return CalcRatAB(CalcStat("PhyDmgPRatPA",L),CalcStat("PhyDmgPRatPB",L),CalcStat("PhyDmgPRatPCapR",L),N);
								else
									return 0;
								end
							else
								return 0;
							end
						else
							return CalcStat("PartBPEPRatPCap",L);
						end
					else
						return CalcStat("PartBPEPRatP",L,N);
					end
				elseif sn > "PHYDMGPRATPA" then
					if sn < "PHYMITHPRATPB" then
						if sn < "PHYDMGPRATPCAPR" then
							if sn < "PHYDMGPRATPC" then
								if sn == "PHYDMGPRATPB" then
									return CalcStat("BratMastery",L);
								else
									return 0;
								end
							elseif sn > "PHYDMGPRATPC" then
								if sn == "PHYDMGPRATPCAP" then
									return 200;
								else
									return 0;
								end
							else
								return 1;
							end
						elseif sn > "PHYDMGPRATPCAPR" then
							if sn < "PHYMITHPPRAT" then
								if sn == "PHYMITHPBONUS" then
									return CalcStat("MitHeavyPBonus",L);
								else
									return 0;
								end
							elseif sn > "PHYMITHPPRAT" then
								if sn > "PHYMITHPRATP" then
									if sn == "PHYMITHPRATPA" then
										return CalcStat("MitHeavyPRatPA",L);
									else
										return 0;
									end
								elseif sn == "PHYMITHPRATP" then
									return CalcStat("MitHeavyPRatP",L,N);
								else
									return 0;
								end
							else
								return CalcStat("MitHeavyPPRat",L,N);
							end
						else
							return CalcStat("PhyDmgPRatPB",L)*CalcStat("PhyDmgPRatPC",L);
						end
					elseif sn > "PHYMITHPRATPB" then
						if sn < "PHYMITLPBONUS" then
							if sn < "PHYMITHPRATPCAP" then
								if sn == "PHYMITHPRATPC" then
									return CalcStat("MitHeavyPRatPC",L);
								else
									return 0;
								end
							elseif sn > "PHYMITHPRATPCAP" then
								if sn == "PHYMITHPRATPCAPR" then
									return CalcStat("MitHeavyPRatPCapR",L);
								else
									return 0;
								end
							else
								return CalcStat("MitHeavyPRatPCap",L);
							end
						elseif sn > "PHYMITLPBONUS" then
							if sn < "PHYMITLPRATP" then
								if sn == "PHYMITLPPRAT" then
									return CalcStat("MitLightPPRat",L,N);
								else
									return 0;
								end
							elseif sn > "PHYMITLPRATP" then
								if sn > "PHYMITLPRATPA" then
									if sn == "PHYMITLPRATPB" then
										return CalcStat("MitLightPRatPB",L);
									else
										return 0;
									end
								elseif sn == "PHYMITLPRATPA" then
									return CalcStat("MitLightPRatPA",L);
								else
									return 0;
								end
							else
								return CalcStat("MitLightPRatP",L,N);
							end
						else
							return CalcStat("MitLightPBonus",L);
						end
					else
						return CalcStat("MitHeavyPRatPB",L);
					end
				else
					return 400;
				end
			else
				return CalcStat("PartMitPPRat",L,N);
			end
		elseif sn > "PHYMITLPRATPC" then
			if sn < "TACDMGPPRAT" then
				if sn < "PROGBMITMEDIUM" then
					if sn < "PHYMITMPRATPCAP" then
						if sn < "PHYMITMPPRAT" then
							if sn < "PHYMITLPRATPCAPR" then
								if sn == "PHYMITLPRATPCAP" then
									return CalcStat("MitLightPRatPCap",L);
								else
									return 0;
								end
							elseif sn > "PHYMITLPRATPCAPR" then
								if sn == "PHYMITMPBONUS" then
									return CalcStat("MitMediumPBonus",L);
								else
									return 0;
								end
							else
								return CalcStat("MitLightPRatPCapR",L);
							end
						elseif sn > "PHYMITMPPRAT" then
							if sn < "PHYMITMPRATPA" then
								if sn == "PHYMITMPRATP" then
									return CalcStat("MitMediumPRatP",L,N);
								else
									return 0;
								end
							elseif sn > "PHYMITMPRATPA" then
								if sn > "PHYMITMPRATPB" then
									if sn == "PHYMITMPRATPC" then
										return CalcStat("MitMediumPRatPC",L);
									else
										return 0;
									end
								elseif sn == "PHYMITMPRATPB" then
									return CalcStat("MitMediumPRatPB",L);
								else
									return 0;
								end
							else
								return CalcStat("MitMediumPRatPA",L);
							end
						else
							return CalcStat("MitMediumPPRat",L,N);
						end
					elseif sn > "PHYMITMPRATPCAP" then
						if sn < "PROGBLOW" then
							if sn < "PNTMPDEFENCE" then
								if sn == "PHYMITMPRATPCAPR" then
									return CalcStat("MitMediumPRatPCapR",L);
								else
									return 0;
								end
							elseif sn > "PNTMPDEFENCE" then
								if sn == "PROGBHIGH" then
									return 500;
								else
									return 0;
								end
							else
								return 351/13000;
							end
						elseif sn > "PROGBLOW" then
							if sn < "PROGBMEDIUM" then
								if sn == "PROGBMASTERY" then
									return 270;
								else
									return 0;
								end
							elseif sn > "PROGBMEDIUM" then
								if sn > "PROGBMITHEAVY" then
									if sn == "PROGBMITLIGHT" then
										return 280/3;
									else
										return 0;
									end
								elseif sn == "PROGBMITHEAVY" then
									return 174;
								else
									return 0;
								end
							else
								return 400;
							end
						else
							return 200;
						end
					else
						return CalcStat("MitMediumPRatPCap",L);
					end
				elseif sn > "PROGBMITMEDIUM" then
					if sn < "RESISTPRATPCAPR" then
						if sn < "RESISTPRATP" then
							if sn < "RESISTPBONUS" then
								if sn == "RATDEFENCET" then
									return CalcStat("PntMPDefence",L)*CalcStat("TraitProg",L,CalcStat("ProgBMedium",L))*CalcStat("AdjTraitProgRatings",L,CalcStat("ProgBMedium",L))*N;
								else
									return 0;
								end
							elseif sn > "RESISTPBONUS" then
								if sn == "RESISTPPRAT" then
									return CalcRatAB(CalcStat("ResistPRatPA",L),CalcStat("ResistPRatPB",L),CalcStat("ResistPRatPCapR",L),N);
								else
									return 0;
								end
							else
								return 0;
							end
						elseif sn > "RESISTPRATP" then
							if sn < "RESISTPRATPB" then
								if sn == "RESISTPRATPA" then
									return 100;
								else
									return 0;
								end
							elseif sn > "RESISTPRATPB" then
								if sn > "RESISTPRATPC" then
									if sn == "RESISTPRATPCAP" then
										return 50;
									else
										return 0;
									end
								elseif sn == "RESISTPRATPC" then
									return 1;
								else
									return 0;
								end
							else
								return CalcStat("BratLow",L);
							end
						else
							return CalcPercAB(CalcStat("ResistPRatPA",L),CalcStat("ResistPRatPB",L),CalcStat("ResistPRatPCap",L),N);
						end
					elseif sn > "RESISTPRATPCAPR" then
						if sn < "T2PENARMOUR" then
							if sn < "STATPROG" then
								if sn == "RESISTT" then
									return CalcStat("RatDefenceT",L,N);
								else
									return 0;
								end
							elseif sn > "STATPROG" then
								if sn == "STDPROG" then
									if L-DblCalcDev <= 75 then
										return LinFmod(N,1,75,1,75,L);
									elseif L-DblCalcDev <= 76 then
										return LinFmod(1,N*75,RoundDbl(N*82.5,-2),75,76,L);
									elseif L-DblCalcDev <= 100 then
										return LinFmod(1,RoundDbl(N*82.5,-2),N*150,76,100,L);
									elseif L-DblCalcDev <= 101 then
										return LinFmod(N,150,165,100,101,L);
									elseif L-DblCalcDev <= 105 then
										return LinFmod(N,165,225,101,105,L);
									elseif L-DblCalcDev <= 106 then
										return LinFmod(N,225,270,105,106,L);
									elseif L-DblCalcDev <= 115 then
										return LinFmod(N,270,450,106,115,L);
									elseif L-DblCalcDev <= 116 then
										return LinFmod(N,450,495,115,116,L);
									elseif L-DblCalcDev <= 120 then
										return LinFmod(N,495,1125,116,120,L);
									elseif L-DblCalcDev <= 121 then
										return LinFmod(N,1125,1575,120,121,L);
									elseif L-DblCalcDev <= 130 then
										return LinFmod(N,1575,3150,121,130,L);
									elseif L-DblCalcDev <= 131 then
										return LinFmod(N,3150,3780,130,131,L);
									else
										return LinFmod(N,3780,6300,130,140,L);
									end
								else
									return 0;
								end
							else
								if L-DblCalcDev <= 75 then
									return LinFmod(RoundDbl(N),1,75,1,75,L);
								elseif L-DblCalcDev <= 76 then
									return LinFmod(1,RoundDbl(N)*75,CalcStat("StdProg",76,N),75,76,L);
								else
									return CalcStat("StdProg",L,N);
								end
							end
						elseif sn > "T2PENARMOUR" then
							if sn < "T2PENMIT" then
								if sn == "T2PENBPE" then
									if L-DblCalcDev <= 115 then
										return (-40)*L;
									elseif L-DblCalcDev <= 116 then
										return ExpFmod(CalcStat("T2penBPE",115),116,20,L);
									elseif L-DblCalcDev <= 120 then
										return ExpFmod(CalcStat("T2penBPE",116),117,5.5,L);
									elseif L-DblCalcDev <= 121 then
										return ExpFmod(CalcStat("T2penBPE",120),121,20,L);
									elseif L-DblCalcDev <= 125 then
										return ExpFmod(CalcStat("T2penBPE",121),122,5.5,L);
									elseif L-DblCalcDev <= 126 then
										return ExpFmod(CalcStat("T2penBPE",125),126,20,L);
									else
										return ExpFmod(CalcStat("T2penBPE",126),127,5.5,L);
									end
								else
									return 0;
								end
							elseif sn > "T2PENMIT" then
								if sn > "T2PENRESIST" then
									if sn == "TACDMGPBONUS" then
										return 0;
									else
										return 0;
									end
								elseif sn == "T2PENRESIST" then
									if L-DblCalcDev <= 115 then
										return (-90)*L;
									elseif L-DblCalcDev <= 116 then
										return ExpFmod(CalcStat("T2penResist",115),116,20,L);
									elseif L-DblCalcDev <= 120 then
										return ExpFmod(CalcStat("T2penResist",116),117,5.5,L);
									elseif L-DblCalcDev <= 121 then
										return ExpFmod(CalcStat("T2penResist",120),121,20,L);
									elseif L-DblCalcDev <= 125 then
										return ExpFmod(CalcStat("T2penResist",121),122,5.5,L);
									elseif L-DblCalcDev <= 126 then
										return ExpFmod(CalcStat("T2penResist",125),126,20,L);
									else
										return ExpFmod(CalcStat("T2penResist",126),127,5.5,L);
									end
								else
									return 0;
								end
							else
								if L-DblCalcDev <= 115 then
									return FloorDbl(L*13.5)*-5;
								elseif L-DblCalcDev <= 116 then
									return ExpFmod(CalcStat("T2penMit",115),116,20,L);
								elseif L-DblCalcDev <= 120 then
									return ExpFmod(CalcStat("T2penMit",116),117,5.5,L);
								elseif L-DblCalcDev <= 121 then
									return ExpFmod(CalcStat("T2penMit",120),121,20,L);
								elseif L-DblCalcDev <= 125 then
									return ExpFmod(CalcStat("T2penMit",121),122,5.5,L);
								elseif L-DblCalcDev <= 126 then
									return ExpFmod(CalcStat("T2penMit",125),126,20,L);
								else
									return ExpFmod(CalcStat("T2penMit",126),127,5.5,L);
								end
							end
						else
							return CalcStat("T2penMit",L);
						end
					else
						return CalcStat("ResistPRatPB",L)*CalcStat("ResistPRatPC",L);
					end
				else
					return 382/3;
				end
			elseif sn > "TACDMGPPRAT" then
				if sn < "TACMITLPRATPA" then
					if sn < "TACMITHPRATP" then
						if sn < "TACDMGPRATPC" then
							if sn < "TACDMGPRATPA" then
								if sn == "TACDMGPRATP" then
									return CalcPercAB(CalcStat("TacDmgPRatPA",L),CalcStat("TacDmgPRatPB",L),CalcStat("TacDmgPRatPCap",L),N);
								else
									return 0;
								end
							elseif sn > "TACDMGPRATPA" then
								if sn == "TACDMGPRATPB" then
									return CalcStat("BratMastery",L);
								else
									return 0;
								end
							else
								return 400;
							end
						elseif sn > "TACDMGPRATPC" then
							if sn < "TACDMGPRATPCAPR" then
								if sn == "TACDMGPRATPCAP" then
									return 200;
								else
									return 0;
								end
							elseif sn > "TACDMGPRATPCAPR" then
								if sn > "TACMITHPBONUS" then
									if sn == "TACMITHPPRAT" then
										return CalcStat("MitHeavyPPRat",L,N);
									else
										return 0;
									end
								elseif sn == "TACMITHPBONUS" then
									return CalcStat("MitHeavyPBonus",L);
								else
									return 0;
								end
							else
								return CalcStat("TacDmgPRatPB",L)*CalcStat("TacDmgPRatPC",L);
							end
						else
							return 1;
						end
					elseif sn > "TACMITHPRATP" then
						if sn < "TACMITHPRATPCAP" then
							if sn < "TACMITHPRATPB" then
								if sn == "TACMITHPRATPA" then
									return CalcStat("MitHeavyPRatPA",L);
								else
									return 0;
								end
							elseif sn > "TACMITHPRATPB" then
								if sn == "TACMITHPRATPC" then
									return CalcStat("MitHeavyPRatPC",L);
								else
									return 0;
								end
							else
								return CalcStat("MitHeavyPRatPB",L);
							end
						elseif sn > "TACMITHPRATPCAP" then
							if sn < "TACMITLPBONUS" then
								if sn == "TACMITHPRATPCAPR" then
									return CalcStat("MitHeavyPRatPCapR",L);
								else
									return 0;
								end
							elseif sn > "TACMITLPBONUS" then
								if sn > "TACMITLPPRAT" then
									if sn == "TACMITLPRATP" then
										return CalcStat("MitLightPRatP",L,N);
									else
										return 0;
									end
								elseif sn == "TACMITLPPRAT" then
									return CalcStat("MitLightPPRat",L,N);
								else
									return 0;
								end
							else
								return CalcStat("MitLightPBonus",L);
							end
						else
							return CalcStat("MitHeavyPRatPCap",L);
						end
					else
						return CalcStat("MitHeavyPRatP",L,N);
					end
				elseif sn > "TACMITLPRATPA" then
					if sn < "TACMITMPRATPB" then
						if sn < "TACMITLPRATPCAPR" then
							if sn < "TACMITLPRATPC" then
								if sn == "TACMITLPRATPB" then
									return CalcStat("MitLightPRatPB",L);
								else
									return 0;
								end
							elseif sn > "TACMITLPRATPC" then
								if sn == "TACMITLPRATPCAP" then
									return CalcStat("MitLightPRatPCap",L);
								else
									return 0;
								end
							else
								return CalcStat("MitLightPRatPC",L);
							end
						elseif sn > "TACMITLPRATPCAPR" then
							if sn < "TACMITMPPRAT" then
								if sn == "TACMITMPBONUS" then
									return CalcStat("MitMediumPBonus",L);
								else
									return 0;
								end
							elseif sn > "TACMITMPPRAT" then
								if sn > "TACMITMPRATP" then
									if sn == "TACMITMPRATPA" then
										return CalcStat("MitMediumPRatPA",L);
									else
										return 0;
									end
								elseif sn == "TACMITMPRATP" then
									return CalcStat("MitMediumPRatP",L,N);
								else
									return 0;
								end
							else
								return CalcStat("MitMediumPPRat",L,N);
							end
						else
							return CalcStat("MitLightPRatPCapR",L);
						end
					elseif sn > "TACMITMPRATPB" then
						if sn < "TPENARMOUR" then
							if sn < "TACMITMPRATPCAP" then
								if sn == "TACMITMPRATPC" then
									return CalcStat("MitMediumPRatPC",L);
								else
									return 0;
								end
							elseif sn > "TACMITMPRATPCAP" then
								if sn == "TACMITMPRATPCAPR" then
									return CalcStat("MitMediumPRatPCapR",L);
								else
									return 0;
								end
							else
								return CalcStat("MitMediumPRatPCap",L);
							end
						elseif sn > "TPENARMOUR" then
							if sn < "TPENCHOICE" then
								if sn == "TPENBPE" then
									return CalcStat("TpenChoice",N)*CalcStat("RatDefenceT",L);
								else
									return 0;
								end
							elseif sn > "TPENCHOICE" then
								if sn > "TPENRESIST" then
									if sn == "TRAITPROG" then
										if L-DblCalcDev <= 105 then
											return LinFmod(1,CalcStat("StatProg",1,N),CalcStat("StatProg",105,N),1,105,L);
										else
											return CalcStat("StatProg",L,N);
										end
									else
										return 0;
									end
								elseif sn == "TPENRESIST" then
									return CalcStat("TpenChoice",N)*CalcStat("ResistT",L,2);
								else
									return 0;
								end
							else
								return DataTableValue({0,-1,-2},L);
							end
						else
							return CalcStat("TpenChoice",N)*(CalcStat("ArmourLowRaw",1,"MSh")/CalcStat("TraitProg",1,CalcStat("ProgBMitMedium",L)))*CalcStat("TraitProg",L,CalcStat("ProgBMitMedium",L))*CalcStat("AdjTraitProgRatings",L,CalcStat("ProgBMitMedium",L));
						end
					else
						return CalcStat("MitMediumPRatPB",L);
					end
				else
					return CalcStat("MitLightPRatPA",L);
				end
			else
				return CalcRatAB(CalcStat("TacDmgPRatPA",L),CalcStat("TacDmgPRatPB",L),CalcStat("TacDmgPRatPCapR",L),N);
			end
		else
			return CalcStat("MitLightPRatPC",L);
		end
	else
		return CalcStat("PartBPEPRatPC",L);
	end

end
