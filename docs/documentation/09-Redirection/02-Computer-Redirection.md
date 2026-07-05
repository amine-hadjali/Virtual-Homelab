# Computer Redirection (redircmp)
### Create a Target OU
#### Open:
    Server Manager
        → Tools
        → Active Directory Users and Computers
#### Enable:
    View
    → Advanced Features
#### Create a new Organizational Unit intended to store computer objects.
#### Example:
    COMPUTERSS
        └── Clients
### Retrieve the Distinguished Name
#### Right-click the target OU:
    Clients
    → Properties
    → Attribute Editor
#### Locate and copy the value of:
    distinguishedName
#### Example:
    OU=Clients,OU=COMPUTERSS,DC=lab,DC=local
### Configure Computer Redirection
#### Open a Command Prompt as Administrator.
#### Run:
    redircmp OU=Clients,OU=COMPUTERSS,DC=lab,DC=local
#### Expected result:
    Redirection successful.
#### This configures Active Directory to place newly joined computer accounts in the specified Organizational Unit instead of the default Computers container.
