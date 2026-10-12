# Lab 2 Submission

## Instance Tracking
**First Instance**
- Instance ID: i-0e04cef2bbb9b81fd
- Availability Zone: ap-southeast-1a

**Second Instance**
- Instance ID: i-03af944359788c7c1
- Availability Zone: ap-southeast-1b

## Proof (Screenshots)
1. **Activity History:** Add a screenshot showing the Auto Scaling group's Activity history when the second instance launched.
   
   *(Replace this line with your Activity History screenshot)*

2. **CloudWatch Alarm:** Add a screenshot of the target tracking alarm in the "In alarm" state.

   *(Replace this line with your CloudWatch Alarm screenshot)*

## Questions
1. Why did the group stop at 2 instances?
   Because we set the maximum capacity of the auto scaling group to 2.

2. Why did terminating an instance by hand not remove the cost?
   Because the Auto Scaling group automatically launched a replacement instance to maintain the desired capacity.

3. Why is the target value set to your assigned value (e.g., 30-85 percent) instead of 99 percent?
   Because it gives the new instance time to launch and warm up before the current server gets overloaded and crashes.

4. What did the automatic cutoff protect us from?
   Because it protects the account from unexpected charges if we forget to delete the instances after the lab.

5. What changes when a load balancer sits in front of the group?
   It provides a single URL to access and automatically distributes traffic across all instances instead of using separate IP addresses.


