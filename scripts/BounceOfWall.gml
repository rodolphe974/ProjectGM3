//Bounce of room edge
if (y < 0)              {vspeed = abs(vspeed)}
if (y > room_height)    {vspeed = -abs(vspeed)}
if (x < 0)              {hspeed = abs(hspeed)}
if (x > room_width)     {hspeed = -abs(hspeed)}


//Bounce of solid walls
CollisionChecks = 0;
while place_meeting (x+ hspeed, y + vspeed, oSolid) and CollisionChecks <5 {
        //stops
        direction = direction + 45;
        CollisionChecks +=1;
}
//Avoid to be shunt into wall
if place_meeting(x+hspeed+ShuntX, y+vspeed+ShuntY, oSolid){
    ResetShunts();
}
