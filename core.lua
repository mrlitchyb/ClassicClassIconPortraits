-- Code adapted from ClassIconNotPortrait by machinelfgaming:
-- https://wow.curseforge.com/projects/classiconnotportrait

local TEXTURE_NAME = "Interface\\AddOns\\ClassicClassIconPortraits\\Textures\\%s.tga"
local CLEAN_TEXTURE_NAME = "Interface\\AddOns\\ClassicClassIconPortraits\\Clean_Textures\\%s.tga"

hooksecurefunc("UnitFramePortrait_Update", function(self)
	if self.portrait then
		if UnitIsPlayer(self.unit) then
			local _, class = UnitClass(self.unit)
			if class then
				self.portrait:SetTexture(CLEAN_TEXTURE_NAME:format(class))
			else
				--@alpha@
				print(("ClassicClassIconPortraits Error: UnitClass returned nil for unit %q"):format(self.unit))
				--@end-alpha@
			end
		end
	end
end)
