-----------------------------------
--  Area: Korroloka Tunnel (173)
--   Mob: Falcatus_Aranei
-----------------------------------

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob,killer)	

    -- Set Falcatus_Aranei's Window Open Time
    wait = math.random((7200),(14400));
    SetServerVariable("[POP]Falcatus_Aranei", os.time(t) + wait); -- 1-2 hours
    DeterMob(mob:getID(), true);
    
    -- Set PH back to normal, then set to respawn spawn
    PH = GetServerVariable("[PH]Falcatus_Aranei");
    SetServerVariable("[PH]Falcatus_Aranei", 0);
    DeterMob(PH, false);
    GetMobByID(PH):setRespawnTime(GetMobRespawnTime(PH));

end;
