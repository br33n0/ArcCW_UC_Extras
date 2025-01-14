att.PrintName = "Glock .50 GI Conversion"
att.AbbrevName = ".50 GI"

if !GetConVar("arccw_truenames"):GetBool() then
    att.PrintName = "GEN3 .50 GI Custom Conversion"
end

att.SortOrder = 120
att.Icon = Material("entities/att/acwatt_ud_glock_caliber.png", "smooth mips")
att.Description = "Custom slide and ammunition provided by esteemed manufacturer, Guncrafter Industries.\nBetter minimum range, accuracy and overall damage compared to .45 ACP, but suffers from abysmal magazine capacity and most unreliable of all calibers."
att.Desc_Pros = { "uce.gi.pro"
}
att.Desc_Cons = { "uc.jam", "uce.gi.con"
}
att.Desc_Neutrals = {
}
att.Slot = "ud_glock_caliber"

att.AutoStats = true

att.Override_ShellScale = 1.30
att.Override_Trivia_Calibre = ".50 Guncrafter Industries"
att.Override_Trivia_Manufacturer = "Guncrafter Industries"
att.AddSuffix = " .50 GI Custom Complete"

att.Mult_Damage = 1.50
att.Mult_DamageMin = 1.50
att.Mult_Penetration = 1.15
att.Mult_AccuracyMOA = 0.85
att.Override_PhysBulletMuzzleVelocity = 370

att.Mult_RangeMin = 0.66
att.Mult_Recoil = 1.50
att.Mult_RecoilSide = 1.50
att.Mult_RPM = 0.70
att.Mult_MalfunctionMean = 0.66
att.Mult_ClipSize = 0.47
att.Mult_ReloadTime = 1.05
att.Mult_SightTime = 1.1
--att.Mult_ShootPitch = 0.85


att.Hook_GetShootSound = function(wep, sound)
    if wep:GetBuff_Override("Silencer") then
        return "weapons/arccw_ud/glock/fire_supp_50.ogg" -- Placeholder
    else
        return "weapons/arccw_ud/glock/fire_50.ogg" -- Not Placeholder
    end
end

att.Hook_GetDistantShootSound = function(wep, distancesound)
    if distancesound == wep.DistantShootSound then
        return "weapons/arccw_ud/glock/fire_dist_50.ogg" end
end
