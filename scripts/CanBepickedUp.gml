//PICKUP WEAPONS
if instance_exists(Owner) = false{
    WeaponTouch = instance_place(x,y,oPlayer);
    
    if instance_exists(WeaponTouch)
    {
        Owner = oPlayer.id;
        Owner.Weapon[Owner.WeaponCount] = self.id;
        Owner.WeaponCount +=1;
        
    }
}
