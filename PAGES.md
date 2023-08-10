# Start Page

Introduction about project. Short info about process

# Prerequisites Loading Page

Page that shows loading ui as the prerequisites are loaded in the background and checked if they exist. Once all the checks have exited, redirects to the **Select Prerequisites Page**. 

# Select Prerequisites Page

Page that shows a table with the prerequisites missing. The user is able to select optional ones. Mandatory ones are preselected and disabled. When the next button is pressed, the installation process begins, disaplying the **Prerequisites Loading Page** when installing each module.

# Select Mode Page

A simple page that allows selecting installing in Basic or Expert mode. If installing in basic mode an option should be present to auto install stacks. 

# Select Stacks Page

A page that displays a table of all the available stacks, their number of services,  and a short description, and allows selecting which stacks should be installed.

# Install Stack Page

A page that displays a table, and allows selecting which services will be installed for this stack. If installing in **Basic** mode and the **Auto Install** options is checked this page will not be shown, and the stack installation will start automatically. 

# Install Service Page

A page that will display configurations and optional modules to be installed for this particular service. In **Basic** mode, only the required configurations will be displayed. If no configurations are marked as required, this page will not display, and will skip to **Install Service Status Page**. In **Expert** mode all configurations and optional modules are displayed. When next is clicked, the service begins installing, and it redirects to **Install Service Status Page**.

# Install Service Status Page

A page that will disaply a loading ui as the service is intalled. ?? In **Expert** mode, the logs from the installation will be displayed next to the loading ui. 