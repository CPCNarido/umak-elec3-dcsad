Which action did the Part B error name?
ec2:RunInstances

In your policy, which condition limits ec2:RunInstances?
The conditions limiting instance type to t3.micro, the region to ap-southeast-1, and the resource tags to match our team name (team=dcsad-g07).

After you attached ec2:* on *, why was t3.small still denied? Name the boundary statement.
It was denied because the permissions boundary (umak-lab-boundary) enforces an explicit guardrail or deny on non-t3.micro instance types and non-Singapore regions, which overrides any permissions granted by the identity policy.

Why is ec2:* on * a poor policy even with a boundary?
It violates the principle of least privilege, grants broad access across all AWS services, and creates a security risk if the permissions boundary is ever detached or modified.

In two sentences: what does the boundary control that your policy cannot?
A permissions boundary acts as a hard ceiling, defining the absolute maximum permissions an identity-based policy can ever use. It ensures that even if a user's policy accidentally grants full administrator access, unauthorized actions outside the boundary remain blocked.
