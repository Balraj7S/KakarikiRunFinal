function ScrHighscoreLoad()
{
    // The name of the file where the high score is saved
    var file = working_directory + "highscore.save";
	
    try 
    {
        // Open the file so we can read whats inside
        var handle = file_text_open_read(file);

        // get the number in the file (the saved high score)
        global.high_score = file_text_read_real(handle);

        // close the file after we are done with it
        file_text_close(handle);
    }
    catch (_exception)
    {
        // if the file does not exist or something goes wrong
        // just set the high score to 0
        global.high_score = 0;
    }
}
