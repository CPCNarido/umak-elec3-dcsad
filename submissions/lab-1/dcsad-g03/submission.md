# Lab 1 Submission

## Part B
**Error Action Name:** 
Instance launch failed. You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g03 is not authorized to perform: **ec2:RunInstances** on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* because no identity-based policy allows the ec2:RunInstances action

## Part C
**Policy Statement Blanks:**
- `"Action"`: "ec2:RunInstances"
- `"Resource"`: "instance"
- `"ec2:InstanceType"`: "t3.micro"

## Part D
**Security Group Error Text:** 
User: arn:aws:iam::548387266019:user/dcsad-g03 is not authorized to perform: ec2:CreateSecurityGroup on resource: arn:aws:ec2:ap-southeast-1:548387266019:security-group/* because no identity-based policy allows the ec2:CreateSecurityGroup action with an explicit deny or missing required tag aws:RequestTag/team

**Running Instance Time:** 14:05 UTC (22:05 UTC+8)

## Part E
**t3.small / Tokyo Denial Error:** 
Instance launch failed. You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g03 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary.

## Part F Questions
1. Which action did the Part B error name?
   It named the action `ec2:RunInstances`.
2. In your policy, which condition limits `ec2:RunInstances`?
   The condition is `"ec2:InstanceType": "t3.micro"` under the `StringEquals` operator in the `RunOnlyT3MicroInstances` statement.
3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   It was denied because of the `DenyAnyInstanceTypeButT3Micro` boundary statement in `umak-lab-boundary`. In AWS IAM evaluation logic, an explicit deny in a permissions boundary always overrides an identity policy allow.
4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   Because granting star permissions violates the principle of least privilege; if the permissions boundary is ever detached, removed, or misconfigured by an administrator, the user would immediately inherit full unrestricted administrative control over all EC2 resources.
5. In two sentences: what does the boundary control that your policy cannot?
   A permissions boundary sets an absolute maximum ceiling on permissions that prevents privilege escalation, ensuring an identity can never perform disallowed actions regardless of how permissive its attached identity policies are. Unlike identity policies which specify what a user is allowed to do, the boundary enforces mandatory guardrails—such as region locks and instance type restrictions—across all present and future identity policies for that user.
