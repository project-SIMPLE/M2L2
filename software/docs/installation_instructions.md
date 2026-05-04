# Using the installation script: instructions

## NOTE: Before running this script, make sure you have downloaded the webplatform available [here](https://github.com/project-SIMPLE/simple.webplatform/archive/refs/heads/main.zip) and have placed it in the folder ~/Documents so the full adress of the web platform is ~/Documents/simple.webplatform

### To automate the installation of all the dependencies and the setup of the web platform, the script "Installation_script.command" was created.

- To use it, download it, grant it execution permission (you can do this by using the command ```chmod +x file/path/to/installation_script.command``` )

- Then open it. Apple will refuse to run this script, to run it once, go to the system settings, privacy and security, then scroll all the way down

- you should see the that Apple refused to run the script, but gives you a button called "open anyways"

- enter the mac Mini password, then the script will open a terminal that will:

  - download homebrew 
  - download node
  - download adb
  - initialize the .env file using the .env.example file
  - run the application a first time

