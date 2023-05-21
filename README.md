# advanced
# II. Create 2 Linux Virtual machines with the following parameters:

Machine 1:
1. 1 CPU.
2. 1028 MB RAM.
3. 10 GB HDD (thin provisioned);
4. 2 Network cards. ( Card 1 – Public Network- bridged to your host machine
network adapter (DHCP)) (Card 2 – Private network – Static IP Address)

Machine 2:
1. 1 CPU.
2. 1028 MB RAM.
3. 10 GB HDD (thin provisioned);
4. 1 Network cards. (Private network with Static IP address)


# III. Fine-tune the following parameters:
1. Set the hostname of the Machine 1 Linux OS to “server”
2. Set the hostname of the Machine 2 Linux OS to “client”
3. Set the name of the Linux Admin users to sysadmin.
4. Install and enable SSHD Service on both machines
5. Firewall up and running on both machines and allowing SSH connections.
6. Enable NAT Functionality on the Server so the Client can have access to
Internet.
7. Create a bash script on the client. The bash script should periodically check
the availability of its default gateway (Server- VMNIC2) and provide output
in the shell if the gateway is available or not.
8. Disable and enable Server – VMNIC2 2 to check if the script works correctly
and shows the proper terminal output.
9. Install Docker on Server.
10. Download Nginx Docker image and run Docker Nginx container exposing
port 80 on Server (https://hub.docker.com/_/nginx)
11. Install text-based browser on the client
12. Open the Nginx default page on the client using the text-based browser by
querying the nginx address located on the server
