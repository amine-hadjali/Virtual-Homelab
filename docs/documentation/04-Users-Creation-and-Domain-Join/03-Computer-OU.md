# Moving Computers to the Correct OU
#### When a computer joins the domain, Active Directory automatically places it in the default container:
    Computers
To organize the environment and allow proper Group Policy management, computers should be moved to the appropriate Organizational Units (OU).
### Steps (Using ADUC GUI)
#### Open:
    Active Directory Users and Computers
#### Navigate to the domain:
    lab.local
#### Open the container:
    Computers
#### The joined machines should appear there, for example:
    LAB-PC-01
    LAB-PC-02
#### Move the computers to the correct OU by dragging and dropping them to:
    COMPUTERSS
        └── Workstations