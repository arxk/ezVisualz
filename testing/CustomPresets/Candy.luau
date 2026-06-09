local RunService = game:GetService("RunService");
local ReplicatedStorage = game:GetService("ReplicatedStorage");

local EasyVisuals = require(ReplicatedStorage.EasyVisuals);

return function(uiInstance: GuiObject, speed: number, size: number, customColor: ColorSequence | Color3?, customTransparency: NumberSequence | number?, useScaledSize: boolean?)
	local template = EasyVisuals.Templates.Candy;
	local color = customColor or template.Color;
	local transparency = customTransparency or template.Transparency;

	local mainGradient = EasyVisuals.Gradient.new(uiInstance, color, transparency);
	mainGradient:SetRotation(-75, 1);
	mainGradient:SetOffsetSpeed(speed, 1);
	mainGradient:SetTransparencyOffsetSpeed(speed * 0.6, 1);

	local mainStroke = EasyVisuals.Stroke.new(uiInstance, size, nil, nil, useScaledSize);
	local strokeGradient = EasyVisuals.Gradient.new(mainStroke.Instance, color, 0);
	strokeGradient:SetRotation(75, 1);
	strokeGradient:SetOffsetSpeed(-speed * 0.8, 1);

	local rotation = 0;
	local rotationConnection;
	rotationConnection = RunService.Heartbeat:Connect(function(dt)
		if not mainGradient.Instance or mainGradient.Instance.Parent == nil then
			rotationConnection:Disconnect();
			return;
		end;

		rotation = rotation + speed * dt * 25;
		local wobble = math.sin(rotation * 0.12) * 18;
		mainGradient:SetRotation(-75 + wobble, 0.12);
		strokeGradient:SetRotation(75 - wobble, 0.12);
	end);

	local pulseConnection;
	pulseConnection = RunService.Heartbeat:Connect(function()
		if not mainStroke.Instance or mainStroke.Instance.Parent == nil then
			pulseConnection:Disconnect();
			return;
		end;

		local t = tick() * speed * 2.5;
		local pulse = 0.65 + 0.35 * ((math.sin(t) + 1) / 2);
		mainStroke:SetSize(size * pulse, 0.12);
	end);

	return {
		Effects = { mainGradient, strokeGradient, mainStroke },
		Connections = { rotationConnection, pulseConnection },
	};
end
