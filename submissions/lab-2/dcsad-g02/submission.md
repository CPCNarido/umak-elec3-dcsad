# Lab 2 Submission

## Instance Tracking
**First Instance**
- Instance ID: i-0465eec26ea378b20
- Availability Zone: ap-southeast-1b

**Second Instance**
- Instance ID: i-0f2c365f32e01dea8
- Availability Zone: ap-southeast-1a

## Proof (Screenshots)
1. **Activity History:** Add a screenshot showing the Auto Scaling group's Activity history when the second instance launched.
   
   ![Activity History](../lab-2/images/activity%20history%20(second%20instance).png)

2. **CloudWatch Alarm:** Add a screenshot of the target tracking alarm in the "In alarm" state.

   ![CloudWatch Alarm](../lab-2/images/cloudwork%20monitoring%20details%20(ec2).png)

## Questions
1. **Why did the group stop at 2 instances?**
   The group stopped at 2 instances because its maximum capacity was set to 2. Even when CPU utilization increased, Auto Scaling could not launch more instances than the configured maximum.
2. **Why did terminating an instance by hand not remove the cost?**
   Terminating an instance manually did not eliminate the cost because Auto Scaling automatically launched a replacement to maintain the group's desired capacity. The replacement instance could still incur charges while running.
3. **Why is the target value set to your assigned value (e.g., 30-85 percent) instead of 99 percent?**
   The assigned CPU utilization target (for our group: 35%) allows Auto Scaling to respond to increasing workloads before CPU usage becomes critically high. A target of 99% would allow the instance to become almost fully utilized before scaling responds, potentially causing slow performance.
4. **What did the automatic cutoff protect us from?**
   The automatic cutoff protected us from leaving AWS resources running indefinitely, which could result in unnecessary cloud costs after the lab ended.
5. **What changes when a load balancer sits in front of the group?**
   A load balancer distributes incoming requests among healthy instances in the Auto Scaling group. Users can access the application through a single endpoint instead of opening each instance using its public IP address. It also helps prevent traffic from being sent to unhealthy instances.
