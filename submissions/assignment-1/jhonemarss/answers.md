**ANSWER_1:** The Course Materials Portal cannot read /etc/course-portal/portal.conf because the application log reports Permission denied.
**ANSWER_2:** The file is owned by `root`, and its group is `course-portal`. Its current permission is `rw-------` (600), which means only the owner can read and write to it. Even though the `course-portal` account belongs to the `course-portal` group, the group has no permissions, so the portal cannot read the file.

**ANSWER_3:** `640`

**ANSWER_3_WHY:** `400` only allows the owner to read the file, so the `course-portal` group would still not be able to access it. `755` gives unnecessary execute permission to the group and others, while `777` gives everyone full access. Therefore, `640` is the smallest and safest fix because it allows the owner to read and write and gives the `course-portal` group read access, while keeping access from others restricted.

**ANSWER_4_ORDER:** B, G, E, D, F, A, I, C, H

**ANSWER_5:** Using `chmod 777` is unsafe because it gives everyone write and execute permissions. This means an unauthorized user could change, overwrite, or tamper with the configuration file.

**ANSWER_6:** The recovery is proven when the Course Materials Portal starts successfully and can serve course materials to users without showing the permission-denied error.

**ANSWER_7_BRIDGE:** component=server file permissions, detect=monitoring, recover=automated remediation, proof=service health check
