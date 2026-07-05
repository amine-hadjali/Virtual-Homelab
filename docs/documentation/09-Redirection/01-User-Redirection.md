# User Redirection (redirusr)
### Retrieve the Distinguished Name
#### Open:
    Server Manager
        → Tools
        → Active Directory Users and Computers
#### Enable:
    View
    → Advanced Features (to make Attribute Editor visible)
#### Right-click the OU:
    Standard
        → Properties
        → Attribute Editor
#### Locate and copy the value of:
    distinguishedName
#### Example:
    OU=Standard,OU=EMPLOYEES,DC=lab,DC=local
### Configure User Redirection
Open a Command Prompt as Administrator.
#### Run:
    redirusr OU=Standard,OU=EMPLOYEES,DC=lab,DC=local
#### Expected result:
    Redirection successful.
This configures Active Directory to place newly created users in the specified Organizational Unit instead of the default Users container.
### Test  – PowerShell Verification
#### Open:
    PowerShell ISE
#### Run the following script:
    New-ADUser `
        -Name "test2 user" `
        -GivenName "test2" `
        -Surname "user" `
        -SamAccountName "test2.user" `
        -UserPrincipalName "test2.user@lab.local" `
        -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
        -Enabled $true

#### The script is available here:
[Test.ps1](../../scripts/powershell/09-Redirection/test.ps1)

#### After the command executes successfully, return to:
    lab.local
        → EMPLOYEES 
        → Standard
#### Verify that the newly created user:
    test2.user
#### was automatically placed inside the Standard OU, confirming that the user redirection configuration is functioning correctly.