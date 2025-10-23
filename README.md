# www.therapywithjgp.com

This is the source code for www.therapywithjgp.com. The source code is hosted here: https://github.com/therapywithjgp/therapywithjgp.

## Requirements

To make changes to the website make sure you have:

* Visual Studio Code with:
    * Live Server extension (by Rick Day, id ritwickdey.LiveServer)
    * Copilot extension

## How to Publish Changes

1. Open Visual Studio Code
2. Open the website folder (you should see README.md in the root of the folder)
3. Right click on docs/index.html and select Open with Live Server
4. Your bowser should open to a local copy of the website and automatically update as you make changes
5. Edit the docs/index.html file, you can ask Copilot to make the changes for you. Make sure they look correct in your Browser.
6. Open the Terminal tab (CMD + J) and type "bash scripts/publish.sh" to publish the changes and it will deploy changes which may take up to 5 minutes to reflect on the published website.
