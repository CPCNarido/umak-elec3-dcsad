ANSWER_1: The application crashed because it cannot read its configuration file at /etc/course-portal/portal.conf due to a "Permission denied" error.
ANSWER_2: The file's permission is 600 (-rw-------), meaning the owner (root) has read and write access, while both the group (course-portal) and others have no access (0). Since the course-portal account falls under the group category, it cannot read the file.
ANSWER_3: 640
ANSWER_3_WHY: 400 removes group access entirely, 755 grants unnecessary execute permissions, and 777 is a critical security risk that allows anyone to modify the file.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: It gives "others" write and execute permissions, allowing any user on the system to modify, overwrite, or delete the configuration file.
ANSWER_6: A successful HTTP 200 OK response when loading the portal in a web browser.
ANSWER_7_BRIDGE: component=configuration, detect=monitoring, recover=automation, proof=health checks