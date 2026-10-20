ANSWER_1: The course-portal fails because it gets a "Permission denied error when trying to access portal.conf file.
ANSWER_2: The course-portal account belongs to the group, but the file permissions are -rw------- (600), meaning the owner (root) has read/write access, while the group and others have no access.
ANSWER_3: 640
ANSWER_3_WHY: The 640 permission allows the group to read the file while keeping read and write access to the root user. While 400 prevents the group from accessing it, 755 and 777 grants unnecessary execute permissions and broader access to other users.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: Anyone on the system would have permission to modify or execute the file, which could allow unauthorized users to change or even damage the configuration.
ANSWER_6: Open the portal in a web browser to confirm that it loads properly.
ANSWER_7_BRIDGE: component=configuration file, detect=log monitoring, recover=automated backups, proof=system health checks
