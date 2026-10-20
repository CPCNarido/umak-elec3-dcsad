# Lab 1 Submission

## Part B
**Error Action Name:** You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g05 is not authorized to perform: **ec2:RunInstances** on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* because no identity-based policy allows the ec2:RunInstances action. Encoded authorization failure message: gX_w0UNHplCocrLTYIIlVDMGcpxsj2DSdJokkBH5W7d5IEkQ-vSbN3jKcgs6nMBlpBOjjvxdME72FfjK-yHnr9EGkdmdhx8X9bxwb5Cegx0gH4FHpWBPCl8CCY2w3chMInfsKG_3jXlQ2qSaHRSRCFgcjByq1q7zLJPpVITjqzKQWBYuSlf-liw5hWRdjw3lze7qZD6DgflX8gPGFyWcej2rreM3bqHKR7w4HKp6Hnxa95wQ90EMgxLb_olR7OFOxl4rxOgT03_fItdTSnabvSDQ8tk0cerO3YxEDHj9kH8OHW-KSL_G-1FjeKHBhxfmoAyLi9IQ_Wzk1ywf0PXRY6kA2dqHeG3Fl_JRbhocfLtqZNXLbCIJ-sdPJJrPWnM4fG_atojI0pZxe2JJnG8VMk4JP0Colfh1XwVDJv5Wq3ZlFBUC0j99xcSj0sQWypLrgRLLnssXAaKeYpilhjQLgl4YKGmKCfdpKDgnYffPB09FBLKJA2H7cKaXuc-rRe-xAOJpAIAF1gQmbyRM2tmTH1KGYYBcR0hEux4CfBNSgq4UR0TtomiEA5giLDZDZY4M4Mseta7QLdC-QVOtHnHjFehXxFtojd49dazQK7TPFjE7OlaawZOgP87PySEnOuhUecff29rVYXOV2jsiuTPZJMZE4ITSLSQEzi1WmgbQffPFQdUUY3iXT-GSYs_vJuxXrMaFW685xk25cI9upOE5caUpb5Bov3G6L-ezPISmUJqf6KKIObfQF1SUhWe-0cLIMm-t2KKh9Hdw9FGrQJ9w8e5d-DBRaqqEZwlbzg2DSEo6l9QVPZHXVLrnYA

## Part C
**Policy Statement Blanks:**
- `"Action"`: ec2:RunInstances
- `"Resource"`: arn:aws:ec2:ap-southeast-1:548387266019:instance/*
- `"ec2:InstanceType"`: t3.micro

## Part D
**Security Group Error Text:** You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g05 is not authorized to perform: ec2:CreateSecurityGroup on resource: arn:aws:ec2:ap-southeast-1:548387266019:security-group/* because no identity-based policy allows the ec2:CreateSecurityGroup action. Encoded authorization failure message: rswm0aKufAtyduY5Wbg4nnf6C18SPIFnlbVQW85xFLfAswCeNY0jDg7qdeBTtCpv-R1cSDHKLckd36KXLkPTmBzxeM_gDn6yiuEbUy3SZdR52fMN3-WXy0tMoakqa7yBhmy6Uy_wMXoKUfneNnIuNYz6nD4kG_EwvBrILXaZrwLNtBT_nuwOTLytNslGTw4kPIJTLf6Hq7y0AiUIpMx3pZnV9kXXc-DCSvjOX-Qw40fhQeZtq-ADBkYJgsKOCoPH5vd7K5TpRWOLIFMRessLO4ex2_7d6X05UvNPON1drCJLD7s3j2PQTK1CTgRH8S2UaNzzMznGzvST6F92CMqryHOquVeOBh2uurYcM4MVU1yZlJjPOkIBWer-UUGzRFrtzMOi1pMr0P-00hmIQci_lhqKP9kI-AInFvo91jy_6ByO148vod5gyRNTiH_Vl8I8j3svZccggImY8BLOHfFN4T_aiROqU9n1ve3sqt_77Qvh1iHvdYPCUwG93cUlc37IVZOHEPsZojh4-3ugwsgQE27xoWjISRWO-8QhNgNxBrcp

**Running Instance Time:** 8:19 PM

## Part E
**t3.small / Tokyo Denial Error:**
t3.small Error: You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g05 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: QN7w7t3DAbfvg8Glu6KVPjGh0L6qxL-DvWn7efnpsDylc9yJoFPJ7yICoiKfDK3PqKE_rQsmt0ICBuHT5V87xiOlv93aL-3iPgQkQw9eYILreZzRMhyX0jyWb7C3Q-cilHiq3_7Tko1D4mOm8pFDcuBMLSJ7jStUOpBEwHM9egPn_ZG-BdRIcHsTjNWJVgRNscqc6zXQQeWEIER9K_HhkX6vvI0rDYM-fgAa7t2tS6M8rorsUM8LReDwHWFXsrOxs6KOpU_LBGwxm7Q3b0PfUyCk1pN7ldr7A8yEDN6RX2C8TeRHLMRbffmrpviA9U98NX0laxCdRgCsZKvTfe_vBYMjPJMuVwrc6TwdCyQTwYhkMtvsrSaDWNXmiuE97Qa8PyFxBDoT9NaCMBe5c1VyYCV2sP0YZDnu_a8flIZEuRy92q-ySubO_ifHLEsWbqOh_W2fWNzYwxdPo6A2KKRVB_ExOfIKYg7CkBR-iakmHHOcxWUB2sTvuxMtrpqtBhLI_0Got4Q3-FS_4qZXaWuB6s8QfrBK84hBgSk1N3G7bjJBNQjeRX4hvV-NFNpTGeZ3WIt-pIt9oHh_rxTqD1CYQWN90LHYv7mqtFJGIUAVU7a7Uawb1W11WBzNKG6-PVjC4k2l1gb86wV15VSdA9lgkdl4rGBJDaSbVjKx6j0Zhr1Q41Rng6xN0WKLHr8LpD6Zr__NwC_MRA8NeYLAMEy0g8s6-iYn7JzJT9M3e4BnvCJz07dgcpQLt9mTiBw1UBWdqi_tNYEXJn4yQq5R7Uh06qADEJ1z1gKfSjd73piu3x1lgWKLXx6FApQh1jXr8D7eu8Y9Xeaub7K7nv5KYZTNZFEK6HfsrkkDChbcakRnO5XMCT4ZBIZ3GO-VBa9fznQtz_B_x_AhgMk8xxO0nHlMHvtqfivXWWYfNW2R88zmJmfn7dAeoa9us_xNhD1_nwY
Tokyo Denial Error: The AMI ID (ami-06380d26ad7176f2c) is not valid. The AMI might no longer exist or may be specific to another account or Region.

## Part F Questions
1. Which action did the Part B error name?
   `ec2:RunInstances`
2. In your policy, which condition limits `ec2:RunInstances`?
   The condition that check if the ec2:InstanceType equals t3.micro
3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   The boundary statement `DenyAnyInstanceTypeButT3Micro` explicitly blocks any instance type other than t3.micro.
4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   Because it violates the principle of least privilege. Even if the boundary blocks certain actions, granting `ec2:*` gives us way too much access to do anything that isn't blocked, like accidentally modifying or deleting other groups' resources.
5. In two sentences: what does the boundary control that your policy cannot?
   The boundary sets limit on the permissions our user can ever have. Our policy can only grant access within that ceiling, so it can never give us permissions that go beyond what the boundary allows.
