# How to set your web platform up to automatically start when you boot your mac computer:
---
first, open the startup_script.command file using your favorite text editor, and change line 3, initially "cd path/to/application", and change it to the actual path to your application. 

Next, give execution permissions to this script by using the command "chmod +x ./startup_script.command" in a terminal located in the same folder as the startup script.

Next, click on the Apple logo on the top left, then system settings, General, and finally login items. 

Finally, click on the "+" on the bottom left of the table, and select the startup_script.command file. 

The next time you boot up your computer after completing these steps, a pop up will appear to inform you that login items have been added. You can now open a browser page at localhost:8000 and find the application there. A terminal should also be opened, and is used to run the application. 