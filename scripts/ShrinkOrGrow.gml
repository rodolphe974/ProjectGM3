///ShrinkOrGrow(ChangeFactor,ChangeSpeed(True or False))
ChangeFactor = argument0;
ChangeSpeed = argument1;
    //Shrink ourself
    image_xscale = image_xscale + ChangeFactor ;
    image_yscale = image_xscale;
    
    //Destroy us if we 've shrunk ourselves to oblivion and respawn twice
    if image_xscale <= 0
    {
    instance_destroy();
    audio_play_sound(aKillFire,1, false);
    
    }
    
    if ChangeSpeed = true and ChangeFactor!=0
    {
    //Adapt speed to new size
    hspeed = -hspeed/(ChangeFactor *5);
    vspeed = -vspeed/(ChangeFactor *5);
    }
