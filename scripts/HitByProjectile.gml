Incoming = instance_place(x,y,oProjectile);

if instance_exists(Incoming)
{
    //if the projectile is not the player chunk
    if Incoming.object_index != oPlayerChunk 
    {
        with Incoming {instance_destroy()}
    }
    return true;
}else
{
    return false;
}

