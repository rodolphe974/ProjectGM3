//Load the save file
SaveFile = file_text_open_read("Player_Data.txt");
//skip the first line 
file_text_readln(SaveFile);

//keep reading until the end of the  file
index = 0
while  !file_text_eof(SaveFile) {

    WeaponType = file_text_read_real(SaveFile);
    instance_create(x,y,WeaponType);
    file_text_readln(SaveFile);
    index +=1;
} 
file_text_close(SaveFile);
