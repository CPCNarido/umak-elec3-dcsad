# Lab 2 Submission

## Instance Tracking

**First Instance**
- Instance ID: i-0f6ce1981b7862e81[cite: 16]
- Availability Zone: ap-southeast-1a[cite: 16]

**Second Instance**
- Instance ID: i-0ec9f1ab7e4a67471[cite: 23]
- Availability Zone: ap-southeast-1b[cite: 23]

## Questions

1. **Why did the group stop at 2 instances?**
   The group stopped scaling because the Maximum capacity was explicitly set to 2 during the Auto Scaling group configuration[cite: 3].

2. **Why did terminating an instance by hand not remove the cost?**
   Terminating an instance manually caused the Auto Scaling group to launch a replacement instance to maintain the desired minimum capacity of 1[cite: 3, 4].

3. **Why is the target value set to your assigned value (40 percent) instead of 99 percent?**
   Setting the target value to 40 percent adds a buffer to provision instances before the server is completely overwhelmed[cite: 3]. If set to 99 percent, a sudden spike could crash the single server before the replacement finishes booting up and passing health checks[cite: 1, 4].

4. **What did the automatic cutoff protect us from?**
   It protected the AWS account from accumulating unexpected hourly compute charges if we forgot to clean up the running EC2 resources after class[cite: 3, 4].

5. **What changes when a load balancer sits in front of the group?**
   A load balancer provides a single entry point (DNS name), meaning users would not have to manually type the individual IP addresses of the instances, and incoming traffic would be distributed automatically across them[cite: 3, 4].