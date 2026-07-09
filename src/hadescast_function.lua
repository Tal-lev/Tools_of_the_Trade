function mod.ModsNikkelMHadesBiomesHandleHadesCastDeath_Kirbymod(projectileData, triggerArgs)
	if game.SessionMapState.HandlingDeath or game.MapState.BlockSpawns or (triggerArgs and triggerArgs.BlockSpawns) then
		return
	end

	local newSpawnData = game.EnemyData[projectileData.SpawnName]
	if newSpawnData == nil then
		return
	end

	-- Hit
	local victim = triggerArgs.TriggeredByTable
	local attacker = triggerArgs.AttackerTable
	-- Prevent the effect being added if the player currently has a hit shield active (from Nitro Boost, Lovers etc.), or is invulnerable (e.g. Skull Persephone special)
	if victim ~= nil and (victim.ObjectId == game.CurrentRun.Hero.ObjectId or victim.WeaponOptions or victim.Name == "NPC_Skelly_01") and not victim.ModsNikkelMHadesBiomesBoilingBloodShieldActive and game.TableLength(game.CurrentRun.Hero.InvulnerableFlags or {}) == 0 then --removed victim needing to be hero
		CreateAnimation({ Name = "BloodstoneHitFxHades", DestinationId = victim.ObjectId, OffsetY = -100 })
		if victim.IsDead then
			return
		end

		if victim.StoredAmmo == nil then
			victim.StoredAmmo = {}
		end

		local storedAmmo = {}
		storedAmmo.Id = game._worldTime
		storedAmmo.AttackerId = attacker.ObjectId
		storedAmmo.LocationX = triggerArgs.LocationX
		storedAmmo.LocationY = triggerArgs.LocationY
		local offset = game.CalcOffset(math.rad(triggerArgs.Angle), projectileData.AmmoDropDistance or 50) or {}
		storedAmmo.LocationX = storedAmmo.LocationX + offset.X
		storedAmmo.LocationY = storedAmmo.LocationY + offset.Y
		storedAmmo.Angle = triggerArgs.Angle

		if game.IsEmpty(victim.StoredAmmo) then
			if victim.ObjectId == game.CurrentRun.Hero.ObjectId then
				game.AddIncomingDamageModifier(victim,
				{
					Name = "StoredAmmoVulnerability",
					NonPlayerMultiplier = projectileData.StoredAmmoMultiplier or 2.0,
				})
			else
				game.AddIncomingDamageModifier(victim,
				{
					Name = "StoredAmmoVulnerability",
					PlayerMultiplier = projectileData.StoredAmmoMultiplier or 2.0,
				})
				game.AddIncomingDamageModifier(victim,
				{
					Name = "StoredAmmoVulnerability",
					NonPlayerMultiplier = projectileData.StoredAmmoMultiplier or 2.0,
				})
			end
			-- Do this before CastEmbeddedPresentationStart, so we get to decide the vignette being used
			if game.ScreenAnchors.BloodstoneVignetteId == nil then
				game.ScreenAnchors.BloodstoneVignetteId = CreateScreenObstacle({
					Name = "BlankObstacle",
					Group = "Combat_Menu",
					Animation = "HadesBloodstoneVignette",
					X = game.ScreenCenterX,
					Y = game.ScreenCenterY,
					ScaleX = game.ScreenScaleX,
					ScaleY = game.ScreenScaleY,
				})
			end
			mod.CastEmbeddedPresentationStart( victim )
		end
		table.insert(victim.StoredAmmo, storedAmmo)

		local offsetX = 575
		local offsetY = -75
		game.ScreenAnchors.StoredAmmo = game.ScreenAnchors.StoredAmmo or {}
		offsetX = offsetX - (#game.ScreenAnchors.StoredAmmo * 22)
		local screenId = CreateScreenObstacle({
			Name = "BlankObstacle",
			Group = "Combat_Menu",
			DestinationId = game.ScreenAnchors.HealthBack,
			X = 10 + offsetX,
			Y = ScreenHeight - 50 + offsetY
		})
		SetThingProperty({ Property = "SortMode", Value = "Id", DestinationId = { Data = storedAmmo, Id = screenId } })

		table.insert(game.ScreenAnchors.StoredAmmo, screenId)
		SetAnimation({ Name = projectileData.StoredAmmoIcon or "AmmoEmbeddedInEnemyIcon", DestinationId = screenId })
		--game.thread(game.PlayVoiceLines, game.HeroVoiceLines.HitByHadesAmmoVoiceLines, true)
		--game.thread(game.InCombatText, victim.ObjectId, "HitByHadesAmmo", 0.8, { OffsetY = -60 }) -- Changed game.CurrentRun.Hero to victim

		if victim.ObjectId == game.CurrentRun.Hero.ObjectId then 
			thread(game.DropStoredAmmoHero, projectileData, storedAmmo.Id)
		else
			thread(mod.DropStoredAmmoEnemy, projectileData, storedAmmo.Id, victim)
		end
		return
	end

	-- Miss
	local spawnPointId = SpawnObstacle({
		Name = "InvisibleTarget",
		LocationX = triggerArgs.LocationX,
		LocationY = triggerArgs.LocationY,
		Group = "Scripting"
	})

	local newUnit = game.DeepCopyTable(newSpawnData) or {}
	newUnit.ObjectId = SpawnUnit({ Name = projectileData.SpawnName, DestinationId = spawnPointId, Group = "Standing" })

	if projectileData.SpawnsSkipActivatePresentation then
		newUnit.UseActivatePresentation = false
	end

	game.SetupUnit(newUnit)
	Destroy({ Id = spawnPointId })
end

function mod.DropStoredAmmoEnemy( projectileData, id, victim )
	local ammoDelay = projectileData.AmmoDropDelay or 12

	wait( ammoDelay, "DropStoredAmmovictim" )

	if victim.IsDead or IsEmpty(victim.StoredAmmo) then
		return
	end
	local ammoData = victim.StoredAmmo[1]
	if id ~= nil then
		ammoData = nil
		for i, ammo in pairs(victim.StoredAmmo) do
			if ammo.Id == id then
				ammoData = ammo
			end
		end
	end
	if not ammoData then
		return
	end

	--CreateAnimation({ Name = "ExitWoundsFx", DestinationId = CurrentRun.victim.ObjectId })
	ammoData.ForceMin = ammoData.ForceMin or 75
	ammoData.ForceMax = ammoData.ForceMax or 200
	ammoData.UpwardForceMin = ammoData.UpwardForceMin or 500
	ammoData.UpwardForceMax = ammoData.UpwardForceMax or 700
	ammoData.Angle = nil
	ammoData.LocationX = nil
	ammoData.LocationY = nil
	if projectileData.AmmoDropProjectile then
		CreateProjectileFromUnit({ Name = projectileData.AmmoDropProjectile, Id = ammoData.AttackerId, DestinationId = victim.ObjectId, FireFromTarget = true })
	end
	local ammoAnchors = ScreenAnchors.StoredAmmo
	if ammoAnchors ~= nil and ammoAnchors[#ammoAnchors] ~= nil then
		Destroy({ Id = ammoAnchors[#ammoAnchors] })
		ammoAnchors[#ammoAnchors] = nil
	end
	wait(0.1)
	if #ammoAnchors == 0 then
		RemoveIncomingDamageModifier(victim, "StoredAmmoVulnerability")
		CastEmbeddedPresentationEnd()
	end

	RemoveValueAndCollapse( victim.StoredAmmo, ammoData )
end


function mod.CastEmbeddedPresentationStart( victim )
	if ScreenAnchors.BloodstoneVignetteId == nil then
		ScreenAnchors.BloodstoneVignetteId = CreateScreenObstacle({ Name = "BlankObstacle", Group = "Combat_Menu",
			Animation = "BloodstoneVignette",
			X = ScreenCenterX,
			Y = ScreenCenterY,
			ScaleX = ScreenScaleX,
			ScaleY = ScreenScaleY,
			})
	end

	--thread( PlayVoiceLines, GlobalVoiceLines.ZagreusBoilingBloodVoiceLines, true )

	thread( InCombatText, victim.ObjectId, "HitByHadesAmmo", 0.8, {OffsetY = -60} )

end
