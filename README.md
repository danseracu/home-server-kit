# Home Server Kit - **Work in progress**

**Notice** This is a personal project i am working on for fun in my personal time. I provide no guarantees for the code here. I take NO responsibility and/or liability for how you choose to use any of the source code available here. By using any of the files available in this repository, you understand that you are AGREEING TO USE AT YOUR OWN RISK.

This project is an attempt to automatise setting up a home server for hobbyists. In it's first form it consists of a script design to install and configure prerequisites, applications, containers and everything else in an automated manner. The mechanism is designed to be extensible, so new modules and services can always be added, agnostic of implementation design, as long as they conform to a few standards. For this, the repository home-server-kit will be used a single source of truth (for the time being) for retrieving the list of available modules, as well as their configurations and dependecies. 

The script should allow installing in simplified manner, and in expert manner. When intalling in simplified manner certain parameters (such as volume locations, extra configs etc.) will be prefilled with standard values, and it should be fine for most installations. Expert installation allows configuring more paramaters of the installation. For a list of all parameters available and differences please consult each service. 

# Definitions

- **Module**: A module is the base kind of entity in HSK. A module can be of different types (e.g. Service, Stack, Prereq). Each module has a **manifest** file describing it (see below). Modules can either be hosted on the central repository, or they can be self hosted, as long as they have an available public endpoint
- **Manifest**: A manifest is a file called **manifest.json** that sits at the root of every module. This file contains all the relevant information related to the module, and each must fill in the required data (see TODO developing a module page). 
- **Prerequisite**: A prerequisite module is always installed before the installation progresses further. This are generally applications like Docker, Node or other. They can either be required, or not. A check script can be specified, if it is the script will be invoked to check if the module is already installed, skipping the installation if it is. If the module is required, this script is mandatory.  
- **Service**: A service module represents an application that will be installed on the server. In can be of multiple types (only docker planned for first phase), and can expose configurations where user input is required, that will be displayed by the wizard. These configurations can be mandatory or not. Post and pre setup scripts can be specified to fynalise everything. 
- **Stack**: A stack module is a collection of services, that usually are deployed together and/or share resources. When deploying a stack the user can specify if he wants to deploy all services or only specific ones. DASDASDASDSAaAAAAASDADASDDSAAa
