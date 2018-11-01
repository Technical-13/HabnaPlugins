-- Written by Garan

import "Turbine.UI";
import "Turbine.UI.Lotro";
FontMetric = class( Turbine.UI.Label );

function FontMetric:Constructor()
	Turbine.UI.Control.Constructor( self );
	self.Text=Turbine.UI.Label();
	self.Text:SetParent(self);
	self.VScroll=Turbine.UI.Lotro.ScrollBar();
	self.VScroll:SetOrientation(Turbine.UI.Orientation.Vertical);
	self.VScroll:SetParent(self);
	self.Text:SetVerticalScrollBar(self.VScroll);
	self.HScroll=Turbine.UI.Lotro.ScrollBar();
	self.HScroll:SetOrientation(Turbine.UI.Orientation.Horizontal);
	self.HScroll:SetParent(self);
	self.Text:SetHorizontalScrollBar(self.HScroll);
	self.fontHeight=12;
	self.SetFont=function(sender,font)
		self.Text:SetFont(font);
		if font==Turbine.UI.Lotro.Font.Arial12 then self.fontHeight=12
		elseif font==Turbine.UI.Lotro.Font.TrajanPro13 then self.fontHeight=13
		elseif font==Turbine.UI.Lotro.Font.TrajanPro14 then self.fontHeight=14
		elseif font==Turbine.UI.Lotro.Font.TrajanPro15 then self.fontHeight=15
		elseif font==Turbine.UI.Lotro.Font.TrajanPro16 then self.fontHeight=16
		elseif font==Turbine.UI.Lotro.Font.TrajanPro18 then self.fontHeight=18
		elseif font==Turbine.UI.Lotro.Font.TrajanPro19 then self.fontHeight=19
		elseif font==Turbine.UI.Lotro.Font.TrajanPro20 then self.fontHeight=20
		elseif font==Turbine.UI.Lotro.Font.TrajanPro21 then self.fontHeight=21
		elseif font==Turbine.UI.Lotro.Font.TrajanPro23 then self.fontHeight=23
		elseif font==Turbine.UI.Lotro.Font.TrajanPro24 then self.fontHeight=24
		elseif font==Turbine.UI.Lotro.Font.TrajanPro25 then self.fontHeight=25
		elseif font==Turbine.UI.Lotro.Font.TrajanPro26 then self.fontHeight=26
		elseif font==Turbine.UI.Lotro.Font.TrajanPro28 then self.fontHeight=28
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold16 then self.fontHeight=16
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold22 then self.fontHeight=22
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold24 then self.fontHeight=24
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold25 then self.fontHeight=25
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold30 then self.fontHeight=30
		elseif font==Turbine.UI.Lotro.Font.TrajanProBold36 then self.fontHeight=36
		elseif font==Turbine.UI.Lotro.Font.Verdana10 then self.fontHeight=10
		elseif font==Turbine.UI.Lotro.Font.Verdana12 then self.fontHeight=12
		elseif font==Turbine.UI.Lotro.Font.Verdana14 then self.fontHeight=14
		elseif font==Turbine.UI.Lotro.Font.Verdana16 then self.fontHeight=16
		elseif font==Turbine.UI.Lotro.Font.Verdana18 then self.fontHeight=18
		elseif font==Turbine.UI.Lotro.Font.Verdana20 then self.fontHeight=20
		elseif font==Turbine.UI.Lotro.Font.Verdana22 then self.fontHeight=22
		elseif font==Turbine.UI.Lotro.Font.Verdana23 then self.fontHeight=23
		elseif font==0x42000021 then self.fontHeight=12
		elseif font==0x4200000e then self.fontHeight=20
		elseif font==0x4200000f then self.fontHeight=22
		elseif font==0x42000010 then self.fontHeight=24
		elseif font==0x4200002b then self.fontHeight=14
		else self.fontHeight=12 -- default is Verdana 12
		end
	end
	self.GetTextWidth=function(sender,text,height)
		if height==nil or height<self.fontHeight then height=self.fontHeight end
		self.Text:SetHeight(height);
		self.Text:SetMultiline(false);
		local width=string.len(text);
		self.Text:SetText(text);
		self.Text:SetWidth(width);
		while self.HScroll:IsVisible() do
			width=width+1;
			self.Text:SetWidth(width);
		end
		return width;
	end
	self.GetTextHeight=function(sender,text,width)
		if width~=nil then self.Text:SetWidth(width) end
		self.Text:SetMultiline(true);
		local height=self.fontHeight;
		self.Text:SetText(text);
		self.Text:SetHeight(height);
		while self.HScroll:IsVisible() or self.VScroll:IsVisible() do
			height=height+1;
			self.Text:SetHeight(height);
		end
		return height;
	end

end
