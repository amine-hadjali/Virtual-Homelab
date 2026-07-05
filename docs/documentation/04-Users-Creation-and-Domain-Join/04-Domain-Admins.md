# Adding GG-Admins to Domain Admins
### Steps (Windows Server / Domain Controller)
#### 1. Open Active Directory Users and Computers
    Server Manager → Tools → Active Directory Users and Computers
#### 2. Navigate to the domain
    lab.local → Users
#### 3. Locate the group
    Domain Admins
#### 4. Open properties
    Right-click Domain Admins → Properties
#### 5. Go to Members tab
#### 6. Click Add
#### 7. Enter group name
    GG-Admins
#### 8. Click Check Names → OK
#### 9. Apply changes
    Click Apply → OK
#### 10. Log off / Log on required
    Changes take effect after user session refresh
#### 11. Verification command (client pc)
    whoami /groups
#### 12. Expected result
    Domain Admins appears in the group list