///ExplodeIntoChunks(NumberOfBitsToCreate,ChunkType)
NumberOfBitsToCreate = argument0;
ChunkType = argument1;

audio_play_sound(aPlayerExplosion,1,false);
BitsCreatedSoFar = 0;
while BitsCreatedSoFar < NumberOfBitsToCreate
{
    NewBit = instance_create(x,y,ChunkType);
    BitsCreatedSoFar +=1;
}
instance_destroy();

