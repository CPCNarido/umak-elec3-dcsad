# Lab 1 Submission

## Part A

## Part B
**Error Action Name:** 
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g02 is not authorized to perform: **ec2:RunInstances** on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* because no identity-based policy allows the ec2:RunInstances action.

## Part C
**Policy Statement Blanks:**
- `"Action"`: "ec2:RunInstances"
- `"Resource"`: "instance"
- `"ec2:InstanceType"`: "t3.micro"

## Part D
**Security Group Error Text:** 
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g02 is not authorized to perform: ec2:CreateSecurityGroup on resource: arn:aws:ec2:ap-southeast-1:548387266019:security-group/* because no identity-based policy allows the ec2:CreateSecurityGroup action.

**Running Instance Time:** 21:24 (UTC+08:00)

## Part E
**t3.small / Tokyo Denial Error:** 
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g02 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary.

## Part F Questions
1. Which action did the Part B error name?
   `ec2:RunInstances`
2. In your policy, which condition limits `ec2:RunInstances`?
   The `StringEquals` condition that restricts `ec2:InstanceType` to exactly `t3.micro`.
3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   An explicit deny in a permissions boundary always overrides any allow in an identity policy. The specific boundary statement is `DenyAnyInstanceTypeButT3Micro`.
4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   It violates the principle of least privilege. A boundary only sets maximum permissions; if it lacks a specific restriction, `ec2:*` grants dangerous capabilities like terminating other teams' instances or altering account-wide network configurations.
5. In two sentences: what does the boundary control that your policy cannot?
   A permissions boundary sets an absolute hard limit on the maximum permissions an entity can exercise. It prevents privilege escalation by ensuring that even if an identity policy explicitly grants excessive access, the user cannot exceed the boundary's predefined constraints.