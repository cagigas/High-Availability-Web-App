# Deploy a high-availability web app using CloudFormation
![alt text](https://github.com/cagigas/High-Availability-Web-App/blob/master/High%20Availability.png)

Server specs


You'll need to create a Launch Configuration for your application servers in order to deploy four servers, two located in each of your private subnets. The launch configuration will be used by an auto-scaling group.

You'll need two vCPUs and at least 4GB of RAM. The Operating System to be used is Ubuntu 18. So, choose an Instance size and Machine Image (AMI) that best fits this spec. Be sure to allocate at least 10GB of disk space so that you don't run into issues. 

Security Groups and Roles


Since you will be downloading the application archive from an S3 Bucket, you'll need to create an IAM Role that allows your instances to use the S3 Service.

Udagram communicates on the default HTTP Port: 80, so your servers will need this inbound port open since you will use it with the Load Balancer and the Load Balancer Health Check. As for outbound, the servers will need unrestricted internet access to be able to download and update its software.

The load balancer should allow all public traffic (0.0.0.0/0) on port 80 inbound, which is the default HTTP port. Outbound, it will only be using port 80 to reach the internal servers.

The application needs to be deployed into private subnets with a Load Balancer located in a public subnet.

One of the output exports of the CloudFormation script should be the public URL of the LoadBalancer.

Bonus points if you add http:// in front of the load balancer DNS Name in the output, for convenience.

Starter Code
You will find starter code for the project in the .yaml file in the Resources section of the left sidebar of this page.


## Running

1. Update the parameters in the files present in network-parameters.json and servers-parameters.json to suit your purpose.

2. Create the network stack

    ```
        $ ./create_network.sh
    ```

3. Create the servers stack

    ```
        $ ./create_servers_.sh
    ```
