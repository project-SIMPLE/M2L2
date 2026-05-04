export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH" # define the path value to be able to run the application (node, adb, etc)
cd ~/Documents/simple.webplatform 
npm start & # start the application, and in parallel:
sleep 3
open -a Safari http://localhost:8000  # wait 3 seconds and open the URL of the main page of the app