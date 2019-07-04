//Create the save file
SaveFile = file_text_open_write("Player_Data.txt");
//Write a line of text to it
file_text_write_string(SaveFile,"Inventory:");
file_text_writeln(SaveFile);

//Write a list of our weapon
index = 0
while  index < WeaponCount {
    //Record that we have this weapon
    file_text_write_real(SaveFile,Weapon[index].object_index);
    file_text_writeln(SaveFile);
    index +=1;
} 
file_text_close(SaveFile);
