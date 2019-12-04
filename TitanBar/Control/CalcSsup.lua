-- Support functions for CalcStat. These consist of implementations of more complex calculation types, decode methods for parameter "C" and rounding/min/max/compare functions for floating point numbers.
-- Created by Giseldah

-- Floating point numbers bring errors into the calculation, both inside the Lotro-client and in this function collection. This is why a 100% match with the stats in Lotro is impossible.
-- Anyway, to compensate for some errors, we use a calculation deviation correction value. This makes for instance 24.49999999 round to 25, as it's assumed that 24.5 was intended as outcome of a formula.
DblCalcDev = 0.00000001;

-- ****************** Calculation Type support functions ******************

-- DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
-- DataTableValue: Takes a value from an array table.

function DataTableValue(vDataArray, Index)

	lI = Index;
	if lI < 1 then
		lI = 1;
	end
	if lI > #vDataArray then
		lI = #vDataArray;
	end

	return vDataArray[lI];

end

-- EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
-- ExpFmod: Exponential function based on percentage.
-- Common percentage values are around ~5.5% for between levels and ~20% jumps between level segments.

function ExpFmod(dVal, dLstart, dPlvl, dLvl)

	if SmallerDbl(dLvl,dLstart) then
		return dVal;
	else
		return dVal*(1+dPlvl/100)^(dLvl-dLstart+1);
	end

end

-- NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
-- NamedRangeValue: Takes a value from a named spreadsheet table.
-- This function doesn't have a meaning outside a spreadsheet and so is not implemented here.

function NamedRangeValue(RName, RowIndex, ColIndex)

	return 0;

end

-- PPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPPP
-- CalcPercAB: Calculates the percentage out of a rating based on the AB formula.

function CalcPercAB(dA, dB, dPCap, dR)

	if dR <= 0 then
		return 0;
	else
		return MinDbl(dA/(1+dB/dR),dPCap);
	end

end

-- RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR
-- CalcRatAB: Calculates the rating out of a percentage based on the AB formula.

function CalcRatAB(dA, dB, dCapR, dP)

	if dP <= 0 then
		return 0;
	else
		return MinDbl(dB/(dA/dP-1),dCapR);
	end
end

-- TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
-- LinFmod: Linear line function between 2 points with some optional modifications.
-- Connects point (dLstart,dVal*dFstart) with (dLend,dVal*dFend).
-- Usually used with dVal=1 and dFstart/dFend containing unrelated points or dVal=# and dFstart/dFend containing multiplier factors.
-- Modification for in-between points on the line: rounding (in general to multiples of dRound=10).

function LinFmod(dVal, dFstart, dFend, dLstart, dLend, dLvl, dRound)

	if IsDbl(dLvl,dLstart) then
		return dVal*dFstart;
	elseif IsDbl(dLvl,dLend) then
		return dVal*dFend;
	elseif dRound == nil then
		return dVal*(dFstart*(dLend-dLvl)+(dLvl-dLstart)*dFend)/(dLend-dLstart);
	else
		return RoundDbl((dVal*(dFstart*(dLend-dLvl)+(dLvl-dLstart)*dFend)/((dLend-dLstart)*dRound)))*dRound;
	end

end

-- ****************** Parameter "C" decode support functions ******************

-- ArmCodeIndex: returns a specified index from an Armour Code.
-- acode string:
-- 1st position: H=heavy, M=medium, L=light
-- 2nd position: H=head, S=shoulders, CL=cloak/back, C=chest, G=gloves, L=leggings, B=boots, Sh=shield
-- 3rd position: W=white/common, Y=yellow/uncommon, P=purple/rare, T=teal/blue/incomparable, G=gold/legendary/epic
-- Note: no such thing exists as a heavy, medium or light cloak, so no H/M/L in cloak codes (cloaks go automatically in the M class since U23, although historically this was L)

function ArmCodeIndex(acode, ii)

	local armourcode = string.upper(string.match(acode,"(%a+)"));

	-- get positional codes and make some corrections
	local sarmclass = string.sub(armourcode,1,1);
	local sarmtype = string.sub(armourcode,2,2);
	local sarmcol = string.sub(armourcode,3,3);
	if sarmtype == "S" and sarmcol == "H" then
		sarmtype = "SH";
		sarmcol = string.sub(armourcode,4,4);
	elseif sarmclass == "C" and sarmtype == "L" then
		sarmclass = "M";
		sarmtype = "CL";
	else
		sarmtype = " "..sarmtype;
	end
	
	if ii == 1 then
		return string.find("HML",sarmclass);
	elseif ii == 2 then
		return (string.find(" H SCL C G L BSH",sarmtype)+1)/2;
	elseif ii == 3 then
		return string.find("WYPTG",sarmcol);
	end
	
	return 0;
	
end

-- RomanRankDecode: converts a string with a Roman number in characters, to an integer number.
-- used for Legendary Item Title calculation.

local RomanCharsToValues = {["M"]=1000,["CM"]=900,["D"]=500,["CD"]=400,["C"]=100,["XC"]=90,["L"]=50,["XL"]=40,["X"]=10,["IX"]=9,["V"]=5,["IV"]=4,["I"]=1};

function RomanRankDecode(srank)

	if srank ~= nil then
		if srank ~= "" then
			for schars, ivalue in pairs(RomanCharsToValues) do
				if string.sub(string.upper(srank),1,string.len(schars)) == schars then
					return ivalue+RomanRankDecode(string.sub(srank,string.len(schars)+1));
				end
			end
		end
	end
	
	return 0;
	
end

-- ****************** Misc. floating point support functions ******************

-- Misc. functions for floating point: rounding etc.
-- For roundings: iDec is number of decimals.

function RoundDbl(dNum, iDec)

	if iDec == nil then
		iDec = 0;
	end
	if iDec == 0 then
		return math.floor(dNum+0.5+DblCalcDev);
	else
		return math.floor(dNum*10^iDec+0.5+DblCalcDev)/10^iDec;
	end
	
end

function CeilDbl(dNum, iDec)

	if iDec == nil then
		iDec = 0;
	end
	if iDec == 0 then
		return math.floor(dNum+1-DblCalcDev);
	else
		return math.floor(dNum*10^iDec+1-DblCalcDev)/10^iDec;
	end
	
end

function FloorDbl(dNum, iDec)

	if iDec == nil then
		iDec = 0;
	end
	if iDec == 0 then
		return math.floor(dNum+DblCalcDev);
	else
		return math.floor(dNum*10^iDec+DblCalcDev)/10^iDec;
	end

end

function IsDbl(dNum1, dNum2)

	return (math.abs(dNum1-dNum2) <= DblCalcDev);

end

function SmallerDbl(dNum1, dNum2)

	return ((dNum2-dNum1) > DblCalcDev);

end

function GreaterDbl(dNum1, dNum2)

	return ((dNum1-dNum2) > DblCalcDev);

end

function MinDbl(dNum1, dNum2)

	if dNum1 <= dNum2 then
		return dNum1;
	else
		return dNum2;
	end

end

function MaxDbl(dNum1, dNum2)

	if dNum1 >= dNum2 then
		return dNum1;
	else
		return dNum2;
	end

end
