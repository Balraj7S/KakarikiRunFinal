function ScrHighscoreSave(file_name) 
{
    // The name of the file where we want to save the high score
    var file = working_directory + file_name;

    // open the file so we can write to it
    var handle = file_text_open_write(file);

    // Write the current high score into the file
    file_text_write_real(handle, global.high_score);

    // Close the file after we are done saving
    file_text_close(handle);
}
