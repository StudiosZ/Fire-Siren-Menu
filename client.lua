Config = {} --Don't Touch this Line

-- Start of Config Area

local JobName = "fire" -- Write the Job name here
local JobGrade = 5 -- Write the Job grade here

local FirstLabel = "Siren Paleto Bay" --Write the Label of the siren here
local FirstName = "pb" --Write here the station name from the client.lua from the inferno-fire-ems-pager script

local SecondLabel = "Siren Sandy Shores" --Write the Label of the siren here 
local SecondName = "ss" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

local ThirdLabel = "Siren East Los Santos" --Write the Label of the siren here 
local ThirdName = "els" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

local FourthLabel = "Siren South Los Santos" --Write the Label of the siren here 
local FourthName = "sls" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

local FithLabel = "Siren Del Perro Beach" --Write the Label of the siren here 
local FithName = "dpb" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

local SixLabel = "Siren LSIA" --Write the Label of the siren here 
local SixName = "lsia" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

local SevenLabel = "Siren Rockford Hills" --Write the Label of the siren here 
local SevenName = "rh" --Write here the station name from the client.lua from the inferno-fire-ems-pager script 

-- If you want to add more sirens or if you have a lower count contact the support 

-- End of Config Area -- 
-- Don't touch unless you know what you're doing! 

ESX = nil local Keys = { ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18, ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182, ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81, ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178, ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173, ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118 } 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) Citizen.CreateThread(function() while true do Citizen.Wait(0) 

if IsControlJustPressed(0, 58) then -- Normal: G 
PlayerData = ESX.GetPlayerData() 
if PlayerData.job and PlayerData.job.name == JobName then 
if PlayerData.job and PlayerData.job.grade == JobGrade then 
OpenSirenMenu() 
end 
end 
end 
end 
end) 

function OpenSirenMenu() 
ESX.UI.Menu.Open( 
'default', GetCurrentResourceName(), 'sz_sirens_menu', 
{ title = "Siren Menu",
align = 'right', elements = {
{ label = "Execute " .. FirstLabel , value = "sirenone" },
{ label = "Execute " .. SecondLabel, value = "sirentwo" }, 
{ label = "Execute " .. ThirdLabel, value = "sirenthree" }, 
{ label = "Execute " .. FourthLabel, value = "sirenfour" }, 
{ label = "Execute " .. FithLabel, value = "sirenfive" }, 
{ label = "Execute " .. SixLabel, value = "sirensix" }, 
{ label = "Execute " .. SevenLabel, value = "sirenseven" }, 
{ label = "Creditss", value = "studiosz" } } }, 

function(data, menu) local action = data.current.value 
if action == "sirenone" then 
ExecuteCommand('firesiren ' .. FirstName) 
end 

if action == "sirentwo" then 
ExecuteCommand('firesiren ' .. SecondName) 
end 

if action == "sirenthree" then 
ExecuteCommand('firesiren ' .. ThirdName) 
end 

if action == "sirenfour" then 
ExecuteCommand('firesiren ' .. FourthName) 
end 

if action == "sirenfive" then 
ExecuteCommand('firesiren ' .. FithName) 
end 

if action == "sirensix" then 
ExecuteCommand('firesiren ' .. SixName) 
end 

if action == "sirenseven" then 
ExecuteCommand('firesiren' .. SevenName) 
end 

if action == "studiosz" ESX.ShowNotification("~b~Made by StudiosZ | Discord: https://discord.gg/w5zf7BA7wM") 
menu.close() 
end 
end, function(data, menu) 
menu.close() 
end) 
end
