# Lab 1 Submission

## Part B
**Error Action Name:** 
Instance launch failed. You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g08 is not authorized to perform: **ec2:RunInstances** on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: MslrWkrJvdCRkk7RUdDtm2_MToJOpyiYyjAtCmzdhGuldhSh0qd2J2Gex-WG_poFd2LcVZCZtEbfXIaSr7s78eri3TawH0s1Lz6zqcpQ9hvV-PyAebKvxGlY7niRdCebn-MPEMeJ-3ASba-e8x94PlXZ_Al053RsmjqrXjt8RzW7ZmMkFODpw3UKJvrHtg719uR7BTu24XTE9p4wnXm19ajFX0msyZRCFMG_KMny6vjGiy1IbuoHFfqBOXTKpVDa6kVH4IFwDseZFDWRne9CQT_TfSadHYrRK5V8nDxVPyn5W9Tj2soWhju5apnu6xDkPl_b3W2nBK2Tewc5RW-uP39kaTfbfQXqYeTygJcAUKDFGHG45SeLrb6F2qxVcYocmNqkFl6V6PHnY84Ff-PnOL8Hsy0tdsXFuWlni6s1Nu_4SWVMRkhwW3JlyLbKml5o7cfvUp8T6gaoNUuB3IkU3SuFaltJEwy4Q3UHKGuyqbtgWGRbjcYXFTXo3JhrbRqEF4WF6tz0xaDeFNCffX-5PNvt1MZZlMrie_U8lAUb7zxR_89brv6hogeirL0PW09RBtvxZOG2Biebj_C_swMUvG4Dwc4yBWJXKtA6I-toQjFPn_V1Wtg85rlyhnCDrh3mqrq7Px7yceOrLkg3W9Hzvwj5OGG7V9NWffLokuLkBdDjAncTstTZGdmC3fRflba4ceInmFrfyx8g4ei5HdNAA1Qx6Puof-bdmRx7GQoJ2AqVnxQbJ9Ux7sVytWQwA1AW7HGjV_QwOHg3-SxkSrDIE2doi8i-owJ2BEQUhJt71h2oqBKZ9M6CGRQlqQqEeKFqDjuwr3vlCmOauM2hafdyxjauSf7I4FKvHNNCIGr4dXAs7VqO8hwbTkBcOuiy5X9u2yDbF8FYe9i0fO6OKBxnXQpf0dpFq0Dg6jqh4OWmIgs4DiPvCNmwOiVztG4_7w9o

## Part C
**Policy Statement Blanks:**
- `"Action"`: "ec2:RunInstances"
- `"Resource"`: "instance"
- `"ec2:InstanceType"`: "t3.micro"

## Part D
**Security Group Error Text:** 
User dcsad-g08 is not authorized to perform: ec2:CreateSecurityGroup on resource: arn:aws:ec2:ap-southeast-1:548387266019:vpc/* with an explicit deny in a security group tagging policy.

**Running Instance Time:** 
2026/09/21 20:55 GMT+8

## Part E
**t3.small / Tokyo Denial Error:** 
Instance launch failed. You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g08 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: MslrWkrJvdCRkk7RUdDtm2_MToJOpyiYyjAtCmzdhGuldhSh0qd2J2Gex-WG_poFd2LcVZCZtEbfXIaSr7s78eri3TawH0s1Lz6zqcpQ9hvV-PyAebKvxGlY7niRdCebn-MPEMeJ-3ASba-e8x94PlXZ_Al053RsmjqrXjt8RzW7ZmMkFODpw3UKJvrHtg719uR7BTu24XTE9p4wnXm19ajFX0msyZRCFMG_KMny6vjGiy1IbuoHFfqBOXTKpVDa6kVH4IFwDseZFDWRne9CQT_TfSadHYrRK5V8nDxVPyn5W9Tj2soWhju5apnu6xDkPl_b3W2nBK2Tewc5RW-uP39kaTfbfQXqYeTygJcAUKDFGHG45SeLrb6F2qxVcYocmNqkFl6V6PHnY84Ff-PnOL8Hsy0tdsXFuWlni6s1Nu_4SWVMRkhwW3JlyLbKml5o7cfvUp8T6gaoNUuB3IkU3SuFaltJEwy4Q3UHKGuyqbtgWGRbjcYXFTXo3JhrbRqEF4WF6tz0xaDeFNCffX-5PNvt1MZZlMrie_U8lAUb7zxR_89brv6hogeirL0PW09RBtvxZOG2Biebj_C_swMUvG4Dwc4yBWJXKtA6I-toQjFPn_V1Wtg85rlyhnCDrh3mqrq7Px7yceOrLkg3W9Hzvwj5OGG7V9NWffLokuLkBdDjAncTstTZGdmC3fRflba4ceInmFrfyx8g4ei5HdNAA1Qx6Puof-bdmRx7GQoJ2AqVnxQbJ9Ux7sVytWQwA1AW7HGjV_QwOHg3-SxkSrDIE2doi8i-owJ2BEQUhJt71h2oqBKZ9M6CGRQlqQqEeKFqDjuwr3vlCmOauM2hafdyxjauSf7I4FKvHNNCIGr4dXAs7VqO8hwbTkBcOuiy5X9u2yDbF8FYe9i0fO6OKBxnXQpf0dpFq0Dg6jqh4OWmIgs4DiPvCNmwOiVztG4_7w9o

## Part F Questions
1. Which action did the Part B error name?
   The Part B error named the action ec2:RunInstances.

2. In your policy, which condition limits `ec2:RunInstances`?
   The policy limits ec2:RunInstances using the condition `"ec2:InstanceType": "t3.micro"` under `StringEquals`.

3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   The t3.small instance was still denied because the permissions boundary contains an explicit deny that prevents instance types other than t3.micro. The boundary statement is `DenyAnyInstanceTypeButT3Micro`.

4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   `ec2:*` on `*` grants very broad EC2 permissions instead of only the permissions needed for the lab. This violates the principle of least privilege and could allow unnecessary actions on resources that the user does not need to manage.

5. In two sentences: what does the boundary control that your policy cannot?
   The permissions boundary sets the maximum permissions that the IAM user can effectively have, even when an identity policy grants additional permissions. It can prevent an action through an explicit deny, such as denying ec2:RunInstances for instance types other than t3.micro.