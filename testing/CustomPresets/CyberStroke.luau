local ReplicatedStorage = game:GetService("ReplicatedStorage");

local EasyVisuals = require(ReplicatedStorage.EasyVisuals);

return function(uiInstance: GuiObject, speed: number, size: number, customColor: ColorSequence | Color3?, customTransparency: NumberSequence | number?, useScaledSize: boolean?)
	local color = customColor or EasyVisuals.Templates.Cyber.Color;

	local mainGradient = EasyVisuals.Gradient.new(uiInstance, color, 0);
	mainGradient:SetRotation(-60, 1);
	mainGradient:SetOffsetSpeed(speed, 1);
	mainGradient:SetRotationSpeed(speed * 10, 1);

	local mainStroke = EasyVisuals.Stroke.new(uiInstance, size, nil, nil, useScaledSize);
	local strokeGradient = EasyVisuals.Gradient.new(mainStroke.Instance, color, 0);
	strokeGradient:SetRotation(60, 1);
	strokeGradient:SetOffsetSpeed(-speed * 0.75, 1);
	strokeGradient:SetRotationSpeed(-speed * 10, 1);

	return {
		Effects = { mainGradient, strokeGradient, mainStroke },
	};
end
