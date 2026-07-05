New-ADOrganizationalUnit -Name: "EMPLOYEES" -Path: "DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"
New-ADOrganizationalUnit -Name: "Admin" -Path: "OU=EMPLOYEES, DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"
New-ADOrganizationalUnit -Name: "Standard" -Path: "OU= EMPLOYEES, DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"


New-ADOrganizationalUnit -Name: "COMPUTERSS" -Path: "DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"
New-ADOrganizationalUnit -Name: "Servers" -Path: "OU=COMPUTERSS, DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"
New-ADOrganizationalUnit -Name: "Clients" -Path: "OU=COMPUTERSS, DC=lab, DC=local" -ProtectedFromAccidentalDeletion:$false -Server:"WS-AD.lab.local"