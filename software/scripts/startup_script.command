# define the path value to be able to run the application (node, adb, etc)
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH" 

# Start the application
cd ~/Documents/simple.webplatform && npm start &

# wait 3 seconds and open the URL of the main page of the app
sleep 5 && open http://localhost:8000/streamPlayerScreen