ANSWER_1: The `course-portal` account cannot read the configuration file because it doesn't have permission to read the file.
ANSWER_2: `Octal: 600` Onwner rw- (6), Group --- (0), Others --- (0). The file is owned by root and the group is course-portal. Since the command `id course-portal` shows the account's group is course-potal but the group has no read permission, it cannot access the file unless the current account is root.
ANSWER_3: 640
ANSWER_3_WHY: 640 is the answer cause the group (course-portal) gets read access, which is all that is needed to add in this situation. 400 still gives no read access to course-portal; 755 works for read permission but gives read and execute access to others which is more than what is needed; 777 grants read, write, and execute access to all users which is way to permissive and can pose risks.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: Any user can read, write, and execute the file. So it is possible that an attacker can gain access to the file and compromise the content.
ANSWER_6: You can check the logs if the config was read successfully and that the portal is running. 
ANSWER_7_BRIDGE: component=portal.conf, detect=error monitoring, recover=manage permissions, proof=health checks and end-to-end tests
