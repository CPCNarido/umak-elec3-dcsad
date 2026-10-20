# Lab 1 Submission

## Part B
**Error Action Name:** You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g06 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* because no identity-based policy allows the ec2:RunInstances action. Encoded authorization failure message: lFUPDa-ZYtQ5znGZl_y2G3jR9jvH5HswoyTNEMMVOcQnGJzINwjYZjIA5e5548JiOU1mU6Fgtcs50lbzCX26wm9x6jPMHXlyNF1lpd2BgiSj4Uuxrr-0H3lWswFQFyvvDxitRdMwYNdADxub8CLWFpLssKH1JpxllkRqOCKDuoe6iJcsRlCJ1XDQazPEUkse0U_V9UjCZ1EHcd8Tlpi0mxlX8cRpR0vX-SHOhWTQGmrp_NKzCNthFKGgBVJ4fMH9_545PBnMfZN8Bcq_xCPTaMcrtwhOhw48w7grUZSwHhEjpHg5JGMayL0EXjTlQipIoGzWhpqm7uEQ1Dk4ipRdZHHKgpyiVg0crZEmSbHGP_3IY2qpdUyTYhjCgEh6Rywz20eQpwwMt7tHeoPPQ3aSUZ7JwVLxd4cmzXLmiidNPWxfPljIHrrioRo2nieoF64Mxa2NYCHIXdzR1nsYf_AG_d8LyaJggMIhu54uHydMniZdhDf4NGc94BI2SE3ntQC-g1KgeBOSkbaC0tORcOhSyYRhfSuhdlcB4Suh5H4sCWhfgnhTj3xVJfMqtLQeEEr6CJRycGzN5eihabehlS2LiFvKUVx0SiDbUct5qNOMITsOFCWDzIXrnnkXoXtvL-K_eoChaHBJuxKMplF90Qhlh4BiamP7Rpkkt9yewlWRtH8_dh-lU4cTa68a6jDXdZAr_m0OtyNTtakHj7cME19AjBVyIZ-_Sw_xQZOYRgjRPIo_-8X8wbYBOjoq9OLTmVpc0GENQq8aO91eHPnauB5SoxfjRsEHqcWOaVGTCbOeRNZBvLAu7EyaFyvXiw


## Part C
**Policy Statement Blanks:**
- `"Action"`: ec2:RunInstances
- `"Resource"`: arn:aws:ec2:ap-southeast-1:548387266019:instance/*
- `"ec2:InstanceType"`: t3.micro

## Part D
**Security Group Error Text:** We did not encounter the expected error. We created the security group dcsad-g06-web with no team tag. The console created it successfully instead of denying it. We continued with step 5 and added the tag team = dcsad-g06.

**Running Instance Time:** 2026/09/21 21:07 GMT+8

## Part E
**t3.small / Tokyo Denial Error:** 

t3.small error: Instance launch failed
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g06 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: QmqLfsoSS_9RIx4gPU2vz7vVdirkpzSKMZ-2W4xRStOdun_VhoNZTLfuKCMeecsvHZpx2pnTM2xEiUWB8Zl3tZiffwTFwg9FPekG6gMJQbrn7fGr114ZtrtcikxJ5mrRUQCADxo4woFdLEWrOjLd1ZlCeTmZeyoah0z38itd-Y7hswY4JUleVrKukRrDaqByv-HQ_VuB1_culCEC83vNWQnRgNAnQPkyM5Mh4VW6f_kRsqMd305LWCZvCz7ZL9Egaa9Zxv3u5XnqfvfbwmaIjKPiRUh83ZMStJ_zPS9iN3ZE3QSjfoDT9zyVdKBS3Zk9RMWkQS4FZlslVPpuqY4oWQHl81zeJgsq-qJedhwtGO1nzpaPDRAk8s3hZQNx4HeiNU0f6lKUC_q8IZKvJMDH_7C3XoLyvRN5EZ6CbS9Bl9aHJltwKjKbwJQYkDhAV4PyDT3hi5v5UBeeffdPrIYW2tFql6IFjjAjwUYhvb1-7wHATInYW8YIFoB5CuNa0nOcR1CvN0exliQAn8_-bssWXqZlWuRVltBf9u5ah9kDYgATK5qpG0GKQCweBWgaJKliT3twl1iiKCPDNTzOSmrbvkSe7vcfkCMhOAgpi5Xkl8XHmWJRvcIRo-HBVOpdGxO1bk_l2_aoEeCl72t4xHoak1-vA5y8SDmiWqO7rfnEPFcIYGARkSbrneECY3FnYIZQHP4WxHfkkUkynP9RI7ulb_PSzi70S0gaV8ltjDsyQ2GMZkhCkjbMpB4kjlA99x-6HnK5sDVt0_WigUvbgBxD103FPU9wMMg4qpdJ5E7axJ9qkZCk3oPNm8Y-JWCBLH_E8VuGJo-pYVub4X-cNxhJV-YfASy_zYl3a4eb-LSPXQjXdhM1JH6t3e8FSpYmAarIv-AE86RCUyILN_mwpv6qTO3jITXwSV6tAkIjtHIc_v0MJrXBBo3c6ytRokYsEw

Tokyo Denial Error:
Failed to describe instance statuses
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g06 is not authorized to perform: ec2:DescribeInstanceStatus with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary

## Part F Questions
1. Which action did the Part B error name?
   `ec2:RunInstances` — the error said the user "is not authorized to perform: ec2:RunInstances".

2. In your policy, which condition limits `ec2:RunInstances`?
   The `ec2:InstanceType` condition key (`StringEquals` → `t3.micro`), so instances can only be launched with that type.

3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   Effective permissions are the intersection of the identity policy and the permissions boundary. The boundary statement `<Sid>` only allows `ec2:RunInstances` when `ec2:InstanceType` is `t3.micro`, so `t3.small` falls outside it and is denied no matter what the identity policy grants.

4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   It breaks least privilege: it grants every EC2 action, including destructive ones like `TerminateInstances` and `DeleteVpc`, on every resource. It also leaves the boundary as the only protection, so if the boundary is edited, weakened, or removed, the user immediately gets full EC2 access. It is also harder to audit, because the policy no longer shows what the user actually needs.

5. In two sentences: what does the boundary control that your policy cannot?
   The permissions boundary sets the maximum permissions the user can ever have; identity policies can only grant access inside that ceiling, never beyond it. Because the boundary is managed separately (usually by an admin), it stops privilege escalation even if someone attaches an overly broad policy like `ec2:*` on `*`.
