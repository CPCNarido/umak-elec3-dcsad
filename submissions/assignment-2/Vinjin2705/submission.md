\## About me



\- GitHub username: Vinjin2705

\- Section: IV-DCSAD

\- IAM user name that I signed in with: dcsad-g03

\- X: 164



---



\## Part A. Explore



\### A1. The VPC



Default VPC IPv4 CIDR:

`172.31.0.0/16`



Number of addresses in that CIDR:

65,536



\### A2. The subnets



| Availability Zone | IPv4 CIDR |

| --- | --- |

| `ap-southeast-1a` | `172.31.16.0/20` |

| `ap-southeast-1b` | `172.31.32.0/20` |

| `ap-southeast-1c` | `172.31.0.0/20` |



!\[Screenshot 1: Subnets](screenshot-1-subnets.png)



\### A3. Available addresses



Available IPv4 addresses in each subnet:

`ap-southeast-1a`: 4,091, `ap-southeast-1b`: 4,091, `ap-southeast-1c`: 4,091.



Why is the number lower than 4,096?

A `/20` subnet has 4,096 total addresses. AWS automatically reserves 5 addresses in every subnet for its own internal networking purposes. 4,096 - 5 = 4,091 available addresses.



If one subnet shows a lower number than the others, what uses the missing address?

Any subnet with fewer than 4,091 addresses means an active resource (like an EC2 instance's network interface) is currently running in that subnet and consuming an IP address.



\### A4. The route table



| Destination | Target |

| --- | --- |

| `172.31.0.0/16` | `local` |

| `0.0.0.0/0` | `igw-...` |



!\[Screenshot 2: Routes](screenshot-2-routes.png)



\### A5. Public or private



Are the default subnets public or private? Which route proves it?

They are Public subnets. The route pointing `0.0.0.0/0` to the internet gateway (`igw-...`) proves they have a path to the outside internet.



\### A6. The internet gateway



State of the internet gateway:

Attached



What happens to the default subnets if the gateway is detached?

The `0.0.0.0/0` route would no longer have a working target. The subnets would immediately lose all internet access, though instances could still communicate internally via the `local` route.



\### A7. NAT gateways



Number of NAT gateways:

0



Can a server in a new private subnet download updates? Why?

No. A private subnet does not have a route to an Internet Gateway. Because there are no NAT gateways running in this account to act as a secure proxy, the private server has no path to reach the internet to download updates.



\### A8. The network ACL



| Rule number | Source | Allow or Deny |

| --- | --- | --- |

| 100 | `0.0.0.0/0` | Allow |

| `\*` | `0.0.0.0/0` | Deny |



How is a network ACL different from a security group?

A network ACL operates at the subnet level, while a security group operates at the instance/resource level. Network ACLs are stateless (requiring separate inbound and outbound rules) and support explicit "Deny" rules, whereas Security Groups are stateful and only use "Allow" rules.



!\[Screenshot 3: Network ACL](screenshot-3-network-acl.png)



\### A9. The default security group



Inbound rule (type and source):

All traffic, from `sg-...`



Which resources can send traffic to an instance that uses it?

Only other resources that are explicitly assigned to this exact same default security group. Because there are no other rules, it blocks traffic from everywhere else.



---



\## Part B. Prepare



\### B1. Plan two subnets



\- Public subnet CIDR: `10.164.0.0/24`

\- Private subnet CIDR: `10.164.1.0/24`



\### B2. Route tables



Route table of the public subnet:



| Destination | Target |

| --- | --- |

| `10.164.0.0/16` | `local` |

| `0.0.0.0/0` | internet gateway |



Route table of the private subnet:



| Destination | Target |

| --- | --- |

| `10.164.0.0/16` | `local` |



\### B3. My VPC diagram



Tool used (Excalidraw, draw.io, Lucidchart, or paper):

Excalidraw



!\[B3: my VPC diagram](vpc-diagram.png)



\### B4. Predict a change



Can you still open the web page from your laptop? Why?

No. Your laptop connects from the public internet. If the `0.0.0.0/0` route is deleted, the path connecting the subnet to the internet gateway is severed, and outside traffic cannot reach the instance.



Can the instance still reach another instance in the VPC? Why?

Yes. The `local` route (`10.164.0.0/16`) remains intact in the route table, meaning internal traffic within the VPC boundary is still permitted.



\### B5. Place a database



Which subnet gets the database? Why?

The database goes in the private subnet (`10.164.1.0/24`). A database should never be exposed directly to the internet; it only needs to accept internal traffic from web servers via the local route.



\### B6. My question about VPCs



What is your question, and what made you think of it?

If a VPC is geographically locked to a single AWS Region, how do enterprise companies design secure networking to backup their databases to a completely different region like Tokyo in case Singapore goes offline?

