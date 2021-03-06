-----------------------------------
-- Ability: Warcry
-----------------------------------

require("scripts/globals/status");

-----------------------------------
-- OnUseAbility
-----------------------------------

function OnAbilityCheck(player,target,ability)
    return 0,0;
end;

function OnUseAbility(player, target, ability)
    local merit = target:getMerit(MERIT_SAVAGERY);
    local power = 0;
    local duration = 30;

    if player:getMainJob() == 1 then
        power = math.floor((player:getMainLvl()/4)+4.75)/256;
    else
        power = math.floor((player:getSubLvl()/4)+4.75)/256;
    end

    power = power * 100;
    duration = duration + player:getStat(MOD_WARCRY_DURATION);


    player:addStatusEffect(EFFECT_WARCRY,power,0,duration,0,merit);
end;