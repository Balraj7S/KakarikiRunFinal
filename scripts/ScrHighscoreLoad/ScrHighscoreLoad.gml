function ScrHighscoreLoad()
{
    // The name of the file where the high score is saved
    var File = working_directory + "highscore.save";
	
    try 
    {
        // Open the file so we can read whats inside
        var Handle = file_text_open_read(File);

        // get the number in the file (the saved high score)
        global.High_score = file_text_read_real(Handle);

        // close the file after we are done with it
        file_text_close(Handle);
    }
    catch (_Exception)
    {
        // if the file does not exist or something goes wrong
        // just set the high score to 0
        global.High_score = 0;
    }
}
