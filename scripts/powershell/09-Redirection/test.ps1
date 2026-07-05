New-ADUser `
    -Name "test2 user" `
    -GivenName "test2" `
    -Surname "user" `
    -SamAccountName "test2.user" `
    -UserPrincipalName "test2.user@lab.local" `
    -AccountPassword (ConvertTo-SecureString "Password123" -AsPlainText -Force) `
    -Enabled $true