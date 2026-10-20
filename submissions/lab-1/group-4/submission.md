# Lab 1 Submission

## Part B
**Error Action Name:**
Instance launch failed. You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g04 is not authorized to perform: **ec2:RunInstances** on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* because no identity-based policy allows the **ec2:RunInstances** action. Encoded authorization failure message: PLfKTpRAGu2yRjHN_f9xrIhtrKjYzzu3DKvQrPmXLg5oBx-EovczOnLyxqJ1W5mCtpHQy7zHGZ3X-syJJ7tQ-8R_TllA7IQ9tlWQ_kd_unn0-C6jrmCK8k8LRwM3ozN88kLMIQCeKwCZ_JPhJEdzxDAwe93n7LknYTsNgb8uA0Xa8D9GWwtvnWpezQI0AqZqwxZECnRkilFx10VD152NebsMP7kD10DDSk5am3dQi9YGbHl7FS1seOnLsZuY2X7yggdd-DbDOFST_zLaX1u76A1HtN9S53K_5cQpZ3vd9tkquHiXVOVo85nhXxUfvV7dcFpbhfBViosm9gQSdqzp976ummtPtKBlegxKjJH4f6fp3yQSyb2p6xNi3XAoWrCy7YReroRAhCkivmvGgDubIkQXDgIxNEqndPycO7OQEVNVBuX7eiaWpcYQDVv9WhMppQg9ZCG5RzsAdkb8_aBcc_J9IyFD1iKLAOPbTYubHKeupXW8yWBXXFFq-2l9gxZsRDFNOH6UO7flRRXuCnruMwGGqBqvNZWWpmVvAyN8MIteZKaViZ8MEkgmALJn7h5G3U1rF9X-C84XF0RlwIv4jaDNk0oYewvYcaZZRcl8C82r2jq2qxAtiSVMLC60fyyOPUq-sRCO0SyDuYq94mCmVYbTCP09z4aIZgYiAQfj1Fhtn2ES1NMuLNKfH2V9UWa8xNtx63JHH7wylLWOzXqDqPZe31R00_1rWay_fpk_Edi82K1Kug8ZEsauxmazGlMXAabVL2uvLV37SR4ytBpLcOmVfLutCWSoTdEt592uISENJEzBKSEuoT90

## Part C
**Policy Statement Blanks:**
- `"Action"`: ec2:RunInstances
- `"Resource"`: arn:aws:ec2:ap-southeast-1:548387266019:instance/*
- `"ec2:InstanceType"`: t3.micro

## Part D
**Security Group Error Text:**
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g04 is not authorized to perform: ec2:CreateSecurityGroup on resource: arn:aws:ec2:ap-southeast-1:548387266019:security-group/* because no identity-based policy allows the ec2:CreateSecurityGroup action. Encoded authorization failure message: xyGcsHcYg_kfSmDIeRu1pverywKiArYxnMSbtF43aNr_sb8y3dM_En_8umeyNAuJUhhU0HwcKqGQLxrdLIlGOTrQWaq8nt8R_LL1Y6kZ7Zv5FUNt2eFfswSN2HTRX1i7NbbYUa_LyWBDUU-ULkiHBfUbs7QyJB0i-SUuopvr6NlEQVLBFYQOG-gakTpMEUjZ814jALQs-qJ0MM-khNW1as9e4hE-4pFPkHQPh83fSnja3-hbIhN7zz21py2geSmSqblfAYCGhfevD6xdVq3APOc_cjJYnvZE00vr5rZ74Y3QqkERld9ukKeuCnXpAvqudYmIU5ipARXoRmKeosELHyBhCON0IEg2hExaXRePIGpSxdhqasDcgYPJ6DSch78HUq60uBNxsKNK0-LR-RC5yNynVWimmz0L92ST4oj355tl6EzuQp6jTVRf3LR_A6hcb3HrFWsI4mn6zOCnf7VWEohzvFXQEWQslyyHkzt3YJmHXhSKmIwqM8uc3COti67cUsIuu0W_URex0uyPeaVWAD80OFcgpwYZJrfgNITSGoI

**Running Instance Time:** 9:09PM

## Part E
**t3.small / Tokyo Denial Error:**

**For t3.small:**
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g04 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: PgGI-WFOb4LODYi67XC-4gfvNcyQZWyheLtbUzRMnBtwrI8RGpaMxsQnSxgMnrwZYXijctdkl-iQxc5UzqKt5dwJ0lWJx0NDEkk2tJr2X-3u65gYXygtLfGwjFH3OXW04iYxJnkR0om6HnGRj_7K2opHbVOdujHzg35waYQBNRxFfxJBgzcpeXFRurUi5z0PcTA7yZX66-BSdG2NlYlJ9d3500TX5UY8QLi0zII-7dZlrtT7G65kWIocuYAR2ExjF3LZrHrVozNyr9HHC0mRCJaf_nkabtA4Z9M9Y0g3UV4jKfye9T5X4RjOBD6MCIuGRIOUez7LY7GGGC6OVSPQX05hUMwhDqJJnfWWwkGMd-NLJWmWQeUzL6KTz3MdPYam0egYi5PXrm7ySiE0J1Z4EhEVMVVfICRyD5w1KrQudBIn3ei3mno7g3JK5QBVtSmQKpVYzQIknsOd0R0rCkPp9Yq4uTFNt0bWzN2Ub-9cGkPqRBNOIC-fnddriaLPE5_7AEi3fXLRj1-jrobdkwnoOxx8Q_J9gl3HhooCjNMiGhkhqaEQyP_73L0Lq2HTCIpEXXEkR2_WmjsCOrXNRzw-glD5eIYVWRG-miJl-3v708GaN4V9Einl_DhVIr9DRMk9wnDdzmXSa2HUCOgbEYh9JWWA8OE0M-gKQ1MnN8Z3sJjCgaNl3ivzPOcR9w3L7hM67J_wg9L8jFB8qovExyvdO7mH-HKoGNw_ECtNZiAJPOaX93nU3h6en4YHHd_d5qbwdBk7485Qj5jc1jEaCMT-xO9HarNtoiwfM54b-khHsRdorA7Rvw1Naky_RQitY4iBKbjAdCNkVN1m4XTjbRVYjnIbcBhfPZFMMXBIFV8ahURsWTU5CmmHbpa98ewrcFrSd5MHRkyQsWjDp89oCVC4OrHaIuqsH0-4ZHrRPieuRmjGQ2dZPIXsTmLq45J0udo

**After adding the policy:**
Instance launch failed
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g04 is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-southeast-1:548387266019:instance/* with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary. Encoded authorization failure message: 2oj-kCztKCFpAL9NR1VhU3eJFOixc4c4hSMUEcUL3h6YrgO0W48Wg6L7Zhsm0aQIQbo4qVVlp8IP_MFD0InGT2Qkbh9oeLWs7nDMelZCmfLpmTCVjknIRFWAGm0G-EyFkTG9Nor0w4VE8nvphqWq1ayxqPur7fesX553Zizmna9sXgszaQIBghM_YyYf7_rPDoCa3qXcEE2XsKOk92pxlZ5btJmirpSVqllUwe6Qz05dBL06SLbgncMYlLCGbcDF3g-kssvTDckEDVBYC22ev0JSkYP9McaoiW5OLmCgSFjxvsINHmZwd_ZA-ulZ8qa-v50kRQWp-hPVMJYzjUsdRoXKd5HF3MS8sgZPlPU9dirtnfYPE90K1YgnPe1rqCPDJaKnrVTXjc-8-LPMAcbZ1N4FAGSWKknGJCavst_t6tCvdr7yEbbqm3ntE4uWW9q1RsBNtzaSsXddkbuvmb6ub24kT7lfwE15Iej4aAoIhNx2DUubhxUIuFXXFCQgSPcx9GwoE1j0xAmTvTzPpLDf6_pvuXtiJagPol6Oz6ZETaCS8bp8Kzpao_8uS7mMdJ0Z4WuEbxhXKEeQve_jfFfV6J7kYf1-ARpZh33IBSxMgWryPqBWn25L8nHqrq8rqODMAzFK-uGat_F394vKDL0kaxldP179P29REUr_qX_yfP4vd-Wgul5oOG5H3oyWv8goTKhCteuSmURAEAzkiYNGVdUP6mnWmWjkwg3QdT-7d1my5YzEsIyG89uvIb6Ib2JThWrElJLWL2aBN9_1SJoiWwAxkgIuKBnKzWdyWtYGlpu-GZlUNvUmYxfmFB_AQ22RolVyGZeRKsZDc0vszycxDUTVedarXw8QUjKej6LecpNZH5ngUvTGe_OPQHjOa_FjAs7wVpuSdCNHAiIY9IWOR0PIWsy7lYsIbBjSuVu8Ad9-O_1S-IVBo7SXWc3K9f4

**While in Tokyo server:**
The AMI ID (ami-06380d26ad7176f2c) is not valid. The AMI might no longer exist or may be specific to another account or Region.
You are not authorized to perform this operation. User: arn:aws:iam::548387266019:user/dcsad-g04 is not authorized to perform: ec2:DescribeSecurityGroups with an explicit deny in a permissions boundary: arn:aws:iam::548387266019:policy/umak-lab-boundary


## Part F Questions
1. Which action did the Part B error name?
   The error in Part B named the `ec2:RunInstances` action.
2. In your policy, which condition limits `ec2:RunInstances`?
   The condition set in the policy is that instance types must be exactly `t3.micro`. The actual specific condition is: `"StringEquals": { "ec2:InstanceType": "t3.micro" }`
3. After you attached `ec2:*` on `*`, why was `t3.small` still denied? Name the boundary statement.
   `t3.small` was still denied because `umak-lab-boundary` contains an explicit Deny statement for ec2:RunInstances when the instance type is not `t3.micro`. Since `t3.small` does not equal `t3.micro`, the boundary’s explicit deny overrides the `ec2:*` allow.
4. Why is `ec2:*` on `*` a poor policy even with a boundary?
   It grants every EC2 action on every EC2 resource, which violates the principle of least privilege. Even with a boundary, it is risky and hard to track. If the boundary is changed or removed, the user has excessive EC2 permissions. It should be scoped to only the required actions, resources, and conditions.
5. In two sentences: what does the boundary control that your policy cannot?
   A permissions boundary sets the maximum permissions that identity-based policies can grant, but it cannot grant permissions by itself. The identity policy can allow actions, but the effective permissions are the intersection of the policy and the boundary, so the boundary can block actions that the policy allows.