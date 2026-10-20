# Assignment 2 Submission

## About me

- GitHub username: plngpc
- Section: IV-DCSAD
- IAM user name that I signed in with: dcsad-g03
- X: 133

## Part A. Explore

### A1. The VPC

- Default VPC IPv4 CIDR: 172.31.0.0/16
- Number of addresses in that CIDR: 65,536 (a /16 has 16 free bits, and 2^16 = 65,536)

### A2. The subnets

| Availability Zone | IPv4 CIDR |
|---|---|
| ap-southeast-1a | 172.31.32.0/20 |
| ap-southeast-1b | 172.31.16.0/20 |
| ap-southeast-1c | 172.31.0.0/20 |

<img width="1920" height="712" alt="Screenshot 1" src="https://github.com/user-attachments/assets/1e1648a6-f10e-4713-a0af-6a2de1a61452" />


### A3. Available addresses

- Available IPv4 addresses in each subnet:
  - ap-southeast-1a (172.31.32.0/20): 4090
  - ap-southeast-1b (172.31.16.0/20): 4091
  - ap-southeast-1c (172.31.0.0/20): 4091
- Why is the number lower than 4,096? A /20 has 4,096 addresses, but AWS keeps 5 addresses in every subnet for itself (the first four and the last one). That leaves 4,091 usable addresses.
- What uses the missing address in the subnet with the lowest number? The ap-southeast-1a subnet shows 4090, one less than the other two. One extra address is held by the network interface of an EC2 instance (for example, an instance from a lab). A stopped instance still keeps its address.

### A4. The route table

Route table: rtb-037b142ea7ed8c1c9 (main route table of the default VPC)

| Destination | Target |
|---|---|
| 0.0.0.0/0 | igw-0943e7e6f88293168 |
| 172.31.0.0/16 | local |

<img width="1920" height="838" alt="Screenshot 2" src="https://github.com/user-attachments/assets/0f75d92b-88e1-4b56-bfc2-970f08a377fd" />


### A5. Public or private

The default subnets are public. The route `0.0.0.0/0` to `igw-0943e7e6f88293168` proves it, because a public subnet is a subnet whose route table sends `0.0.0.0/0` to an internet gateway. The other route, `172.31.0.0/16` to local, only connects the subnets inside the VPC.

### A6. The internet gateway

- State of the internet gateway: Attached (igw-0943e7e6f88293168 is attached to vpc-02b29ff02cd658307).
- What happens to the default subnets if the gateway is detached? The `0.0.0.0/0` route would have no working target, so the subnets would stop being public. Instances could not reach the internet and the internet could not reach them, so a web page like the one in Lab 2 would stop opening. Instances would still reach each other, because the local route does not depend on the gateway.

### A7. NAT gateways

- Number of NAT gateways: 0
- Can a server in a new private subnet download updates? No. A new private subnet has only the local route. To download updates it needs a NAT gateway in a public subnet and a route `0.0.0.0/0` to that NAT gateway in its route table. The account has no NAT gateway, so there is no path to the internet.

### A8. The network ACL

Network ACL: acl-05e0f593c4c567477 (default, associated with 3 subnets), inbound rules:

| Rule number | Source | Allow or Deny |
|---|---|---|
| 100 | 0.0.0.0/0 | Allow |
| * | 0.0.0.0/0 | Deny |

How is a network ACL different from a security group?

- A network ACL attaches to a subnet. A security group attaches to a resource, such as an instance.
- A network ACL has allow rules and deny rules. A security group has allow rules only.
- A network ACL is stateless, so each direction needs its own rule. A security group is stateful, so the reply goes out without a separate rule.
- A network ACL checks rules by number, lowest first, and stops at the first match. A security group checks all rules together.

<img width="1918" height="838" alt="Screenshot 3" src="https://github.com/user-attachments/assets/c61140e7-ff76-4800-9807-c6eaac0c5fc3" />


### A9. The default security group

- Inbound rule (type and source): All traffic (all protocols, all ports) with the source sg-0c5b6d4081cf0a534, which is the default security group itself.
- Which resources can send traffic to an instance that uses it? Only resources that use the same default security group. The internet and other security groups cannot send traffic to it.

## Part B. Prepare

### B1. Plan two subnets

My VPC is 10.133.0.0/16.

- Public subnet CIDR: 10.133.0.0/24
- Private subnet CIDR: 10.133.1.0/24

Both fit inside the VPC range and do not overlap. Each has 256 addresses, and 251 are usable after AWS keeps 5.

### B2. Route tables

Route table of the public subnet:

| Destination | Target |
|---|---|
| 10.133.0.0/16 | local |
| 0.0.0.0/0 | internet gateway |

Route table of the private subnet:

| Destination | Target |
|---|---|
| 10.133.0.0/16 | local |

### B3. My VPC diagram

Tool used: Canva

<img width="1024" height="768" alt="VPC" src="https://github.com/user-attachments/assets/67632491-e0d5-4582-9bc1-0e993a2dc4db" />


### B4. Predict a change

Change: the `0.0.0.0/0` route to the internet gateway is removed from the public subnet's route table.

- Can you still open the web page from your laptop? No. Without the `0.0.0.0/0` route to the internet gateway, the subnet is no longer public, so traffic from the internet has no path to the instance and the replies have no path back.
- Can the instance still reach another instance in the VPC? Yes. The local route `10.133.0.0/16` to local is still in the table, and it connects all subnets in the VPC regardless of the internet gateway.

### B5. Place a database

The database goes in the private subnet. The private subnet has no route to an internet gateway, so nobody on the internet can reach the database. The web server in the public subnet can still reach it through the local route.

### B6. My question about VPCs

Question: The default network ACL has a Deny rule for all traffic. Why doesn't it block everything?

What made me think of it: In A8, I saw rule 100 allowing all traffic and a * rule denying all traffic, and I wasn't sure which one applies.
