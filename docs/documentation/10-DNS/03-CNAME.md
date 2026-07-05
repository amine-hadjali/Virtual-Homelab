# Creating a CNAME Record
### Before creating the CNAME record:
    C:\Users\amine.admin>nslookup www
    Server:  ws-ad.lab.local
    Address:  10.10.10.20
    *** ws-ad.lab.local can't find www: Non-existent domain
#### A CNAME record is then created to map an alias to an existing hostname.
### After configuration, the result becomes:
    C:\Users\amine.admin>nslookup www
    Server:  ws-ad.lab.local
    Address:  10.10.10.20
    Name:    ws-ad.lab.local
    Address:  10.10.10.20
    Aliases: www.lab.local
#### This confirms that the alias www.lab.local is now correctly pointing to WS-AD.lab.local.