return function()
	local gradient = Instance.new("UIGradient");
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(26, 10, 46)),
		ColorSequenceKeypoint.new(0.2, Color3.fromRGB(114, 9, 183)),
		ColorSequenceKeypoint.new(0.45, Color3.fromRGB(247, 37, 133)),
		ColorSequenceKeypoint.new(0.65, Color3.fromRGB(76, 201, 240)),
		ColorSequenceKeypoint.new(0.85, Color3.fromRGB(181, 23, 158)),
		ColorSequenceKeypoint.new(1, Color3.fromRGB(26, 10, 46)),
	});
	return gradient;
end
