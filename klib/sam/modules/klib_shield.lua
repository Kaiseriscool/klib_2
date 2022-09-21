if SAM_LOADED then return end
local sam, command, language = sam, sam.command, sam.language

command.set_category( "Shields" )

/*
	Remove Player Shield Cooldown
*/
command.new( "removecooldown" )
	:SetPermission( "removecooldown", "admin" )
	:AddArg( "player" )
	:Help( "Remove Cooldown" )
	
	:OnExecute(function(ply, targets, amount)
		for i = 1, #targets do
			targets[i]:RemoveShieldCD()
		end
		if sam.is_command_silent then return end
		sam.player.send_message(nil, "{A} Removed {T} Sheild Cooldown", {
			A = ply, T = targets,
		})
	end)
:End()
