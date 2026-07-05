# Windows Firewall Configuration for Testing
To allow ICMP echo requests (ping):  
Windows Defender Firewall → Advanced settings → Allow an app or feature through Windows Defender Firewall →Enable File and Printer Sharing  
Applied on:  
    • Windows Server  
    • Windows Client and Client2  
### Connectivity Tests  
#### Client → OPNsense  
ping 10.10.10.1  
Result → Successful
#### OPNsense → Windows Server
From OPNsense console:  
ping 10.10.10.20  
Result → Successful
#### Client → Server
ping 10.10.10.20  
Result → Successful
### Server → Client
ping 10.10.10.50  
Result → Successful