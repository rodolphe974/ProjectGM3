if file_exists ("Progress.txt"){
    //Load the save file
    SaveFile = file_text_open_read("Progress.txt");
    //skip the first line 
    file_text_readln(SaveFile);        
    RoomToGoTo = file_text_read_real(SaveFile);
    file_text_close(SaveFile);
    if room_exists(RoomToGoTo){
        room_goto(RoomToGoTo)    
    }
}
