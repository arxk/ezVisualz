return function()
	local gradient = Instance.new("UIGradient");
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 120, 200)),
		ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 105, 180)),
		ColorSequenceKeypoint.new(0.6, Color3.fromRGB(200, 160, 255)),
		ColorSequenceKeypoint.new(0.8, Color3.fromRGB(255, 255, 255)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 120, 200)),
	});
	gradient.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.35, 0),
		NumberSequenceKeypoint.new(0.5, 0.15),
		NumberSequenceKeypoint.new(0.65, 0),
		NumberSequenceKeypoint.new(1, 0),
	});
	return gradient;
end
