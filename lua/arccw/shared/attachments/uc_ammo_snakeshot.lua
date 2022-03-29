att.PrintName = "\"SS\" Snake-Shot Rounds"
att.AbbrevName = "\"SS\" Snake-Shot"
att.SortOrder = 5
att.Icon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth")
att.Description = "Snake shot refers to handgun and rifle cartridges loaded with small lead shot. It is generally used for shooting snakes, rodents, birds, and other pests at very close range."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
}
att.Slot = "uc_ammo"

att.AutoStats = true

att.Override_Num = 5
att.Mult_Range = 0.5
att.Override_AccuracyMOA = 35
att.Override_AccuracyMOA_Priority = 0
att.Mult_Recoil = 0.75

att.Mult_Damage = 0.2
att.Mult_DamageMin = 0.05

att.Override_IsShotgun = true
att.Override_Ammo = "buckshot"

att.Hook_Compatible = function(wep)
    if wep:GetIsShotgun() then
        return false
    end
end