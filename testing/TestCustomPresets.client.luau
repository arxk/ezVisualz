local Players = game:GetService("Players");
local ReplicatedStorage = game:GetService("ReplicatedStorage");

local EasyVisuals = require(ReplicatedStorage.EasyVisuals);

local CustomPresetsFolder = script.Parent:WaitForChild("CustomPresets");
local CustomTemplatesFolder = script.Parent:WaitForChild("CustomGradientTemplates");

EasyVisuals.SetCustomFolders(CustomPresetsFolder, CustomTemplatesFolder);

local Player = Players.LocalPlayer;
local PlayerGui = Player:WaitForChild("PlayerGui");
local MainUI = PlayerGui:WaitForChild("MainUI");
local CustomPresetsUI = MainUI:WaitForChild("CustomPresets");

local candyEffect = EasyVisuals.new(CustomPresetsUI.CustomPreset1, "Candy", 0.55, 3.5);
local cyberStrokeEffect = EasyVisuals.new(CustomPresetsUI.CustomPreset2, "CyberStroke", 0.35, 4);

task.delay(8, function()
	print("Pausing Candy effect!");
	candyEffect:Pause();
end);

task.delay(12, function()
	print("Resuming Candy effect!");
	candyEffect:Resume();
end);
