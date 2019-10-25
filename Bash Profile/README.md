# Bash Profile

To help make the workflow go faster, I use the commands found in the [Terminal Commands](https://github.com/iMatthewCM/RollYourOwnConfigProfile/tree/master/Terminal%20Commands) section of these resources in my bash profile as functions.

Whether or not you already have a bash profile run the following command in Terminal:

`sudo nano ~/.bash_profile`

If you had a bash profile, great, here it is, you should see some text in this window. If you didn't already have a bash profile, you're likely looking at an empty editor. Regardless, go to the last available line in the file (past your last curly brace `}` if you had code in here already), and then **copy and paste** the all of the code from bash_profile.sh into the editor window. (Yes, you can paste directly into Terminal here!)

There are a few things to configure, which I will reference based on the line they appear on here on GitHub:

**Line 33:** This line should reflect the date your signing certificate will expire. It's actually OK if this value isn't configured, but the use case is that when you go and sign your profiles, Terminal will remind you when your certificate is going to expire so that you can make changes if needed. There are no checks on how this is formatted. The example given is "September 18, 2019" but "09/18/19" or "Sept 18 2019" or whatever you want is fine here.

**Line 39:** This is the path to where the signing certificate is sitting on your computer. I put mine in a folder inside of /Users/Shared, but, feel free to put yours wherever you'd like. Update this variable accordingly.

**Line 42:** This is the path to the Private Key, which was placed on the Desktop after the `csr` function ran. Just move that file into a safe location (again, I put mine in the same folder in /Users/Shared) and note the path here.

Once those variables are all configured, hit `Control + X`, then `Y`, then `Enter` to save your changes and close out of the nano editor.

Finally, type `. ~/.bash_profile ` to reload the profile and make your new funtions active! 

**If you need to go back in and update your variables later on:**

1. `sudo nano ~/.bash_profile`
2. Make your change
3. `Control + X`, then `Y`, then `Enter` 
4. `. ~/.bash_profile `


## macOS Catalina, zsh, and bash profiles

With macOS Catalina, bash took a backseat and zsh became the new default shell for Terminal. Therefore, with no changes, bash profiles don't work anymore! Because it's not a zsh profile, it's bash profile!

Luckily there is a ***very*** easy solution to this problem. We'll make a file that zsh recognizes as a profile, and then redirect it to read our bash profile.

Run the following command in Terminal:

`sudo nano ~/.zshrc`

This is probably an empty file. All we need to add is a single line:

`source /Users/USERNAME/.bash_profile`

Just swap out USERNAME for the name of your home folder where your bash profile is already hanging out.

Then just like before, to get out of nano hit `Control + X`, then `Y`, then `Enter` to save your changes and close out.

Reload the .zshrc file by running:

`. ~/.zshrc`

After that, your bash profile commands should be working again on Catalina!
