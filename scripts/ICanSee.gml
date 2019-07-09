Thing = argument0;
Result = false;

if instance_exists(Thing){
    DirectionToThing = point_direction(x,y,Thing.x,Thing.y);
    RelativeDirectionToThing = abs(image_angle - DirectionToThing);
    
//   if ((RelativeDirectionToThing < HalfFieldOfView) or (RelativeDirectionToThing > HalfFieldOfView-360)) and (distance_to_object(Thing) < ViewRange){
    if ((RelativeDirectionToThing < HalfFieldOfView) and (distance_to_object(Thing) < ViewRange)){
                if collision_line(x,y,Thing.x,Thing.y,oSolid,true,true)=noone {
            Result = true;
        }
    }
}
return Result;
