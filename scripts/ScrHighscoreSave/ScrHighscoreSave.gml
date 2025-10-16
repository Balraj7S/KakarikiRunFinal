function ScrHighscoreSave(File_Name) 
{
    // The name of the file where we want to save the high score
    var File = working_directory + File_Name;

    // open the file so we can write to it
    var Handle = file_text_open_write(File);

    // Write the current high score into the file
    file_text_write_real(Handle, global.High_score);

    // Close the file after we are done saving
    file_text_close(Handle);
}
