function TauntIt()
	-- Es wird 10 mal Tab gedrückt und überprüft ob man die Aggro verloren hat.
	for i = 1, 10 do
		-- Wenn das Target des Spielers nicht den Spieler und auch nicht Nichts im Target hat darf gespottet werden.
		if UnitName("targettarget") ~= UnitName("player") and UnitName("targettarget") ~= nil then
			CastSpellByName("Spott")
			return
		else
			TargetNearestEnemy()
		end	
	end
end