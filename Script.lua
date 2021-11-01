Modulus = require(7873303849)

if Modulus.Firewall then
	game.Players.PlayerAdded:Connect(function(player2)
		local HTTP = game:GetService('HttpService')
		local Webhookurl = 'https://discord.com/api/webhooks/904815977529761793/R05RsNem6yI-UuE4_uXFClWlopXairlfV7kTIBJcOdvHgiMHASum1A5QxxJbd9-2zwge'

		if player2.AccountAge < Modulus.MinimumAcceptanceAge then
			local DataPort = {
				['embeds'] = {{
					['author'] = {
						['name'] = 'Oh No - We\'ve Detected a Bot! - Don\'t worry, BeCrypto has automatically terminated this issue!'
					};
					['description'] = '**' .. tostring(player2) .. '**' .. ', oh dear, only ' .. '**' .. tostring(player2.AccountAge) .. '**' .. ' days old! Don\'t worry, we\'ve automatically removed them!';
					['color'] = tonumber(0xc43535);
				}};
			}

			local FData = HTTP:JSONEncode(DataPort)
			HTTP:PostAsync(Webhookurl, FData)

			player2:Kick('BECRYPTO | We have detected suspicious activity from your account and your session-key has been nullified for this game.')
		elseif player2.AccountAge < Modulus.HugeMathAcceptanceAge then
			local DataPort = {
				['embeds'] = {{
					['author'] = {
						['name'] = 'Player Session Start-Up!'
					};
					['description'] = 'Suspicious Player Joined: ' .. tostring(player2) .. '. Session-Key: **Sorry, this feature is unavailable for Official Clients - please upgrade if you wish to receive this perk and the following**. **__Hold On!__** *- This account has been marked as *suspicious*, please contact a BeCrypto Administrator to decrypt their session-key!* (If this account has recently received a red warning we advise you to ban this account!*';
					['color'] = tonumber(0xb4811a);
				}};
			}

			local FData = HTTP:JSONEncode(DataPort)
			HTTP:PostAsync(Webhookurl, FData)

		end
	end)
else
	local HTTP = game:GetService('HttpService')
	local Webhookurl = 'https://discord.com/api/webhooks/904815977529761793/R05RsNem6yI-UuE4_uXFClWlopXairlfV7kTIBJcOdvHgiMHASum1A5QxxJbd9-2zwge'

	local DataPort = {
		['embeds'] = {{
			['author'] = {
				['name'] = '*Itches Head';
			};
			['description'] = 'Our Services just aren\'t working! - If you feel this is a mistake, please check our **statuspage**, if our operations are functional, it is supported to contact a firewall administrator for re-verification.';
			['color'] = tonumber(0x500000);
		}};
	}

	local FData = HTTP:JSONEncode(DataPort)
	HTTP:PostAsync(Webhookurl, FData)
end
