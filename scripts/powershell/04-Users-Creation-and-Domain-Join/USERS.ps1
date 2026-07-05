New-ADUser `
    -Name "Amine Hadjali" `
    -GivenName "Amine" `
    -Surname "Hadjali" `
    -SamAccountName "amine.admin" `
    -UserPrincipalName "amine.admin@lab.local" `
    -Path "OU=Admin,OU=EMPLOYEES,DC=lab,DC=local" `
    -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Amine Hadjali" `
    -GivenName "Amine" `
    -Surname "Hadjali" `
    -SamAccountName "amine.user" `
    -UserPrincipalName "amine.user@lab.local" `
    -Path "OU=Standard,OU=EMPLOYEES,DC=lab,DC=local" `
    -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
    -Enabled $true

New-ADUser `
    -Name "Client2 User" `
    -GivenName "Client2" `
    -Surname "User" `
    -SamAccountName "client2.user" `
    -UserPrincipalName "client2.user@lab.local" `
    -Path "OU=Standard,OU=EMPLOYEES,DC=lab,DC=local" `
    -AccountPassword (ConvertTo-SecureString "Password123!" -AsPlainText -Force) `
    -Enabled $true
