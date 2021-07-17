# Restorer
After installing a new OS in your PC it is a bit annoying having to reinstall all your applications one by one. This script is here to help. A simple bash script that reads a csv file with the application names and commands for installation and installs them for you. You can choose which ones you want to installed a simple dialog checklist prompt that appears right before the installation prossess begins.

## CSV file example
My personal preferences are also included in this repo playing the role of a personal backup and a example of how to create your own (There is no csv-creation tool included. It's easy, do it yourself).

**IMPORTANT: Always add an empty line at the end of your csv file, otherwise your last entry won't be read**

Example:
```csv
Mailspring, sudo snap install mailspring
PyCharm Professional, sudo snap install pycharm-professional --classic
VS Code, sudo snap install code --classic
git, sudo apt install git -y
ONLYOFFICE, sudo snap install onlyoffice-desktopeditors
```