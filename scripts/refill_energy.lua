[ENABLE]
{$lua}

local energyFull = 28.0

local alist = getAddressList()
local mrEnergy = alist.getMemoryRecordByDescription('Energy')
local mrEnergyDisp = alist.getMemoryRecordByDescription('Energy Display')
local addrEnergy = mrEnergy.getCurrentAddress()

if mrEnergy.Type == vtDouble then
	if readDouble(addrEnergy) < energyFull then
		mrEnergy.Value = "28"
		mrEnergyDisp.Value = "28"
	end
end

[DISABLE]