ANSWER_1: The Course Materials Portal failed because it was denied permission to read its configuration file at /etc/course-portal/portal.conf.
ANSWER_2: The file portal.conf is owned by root with permissions -rw------- (600), meaning only root has read and write access, while the course-portal account belongs to group 995 and has no read access.
ANSWER_3: 640
ANSWER_3_WHY: Option 400 removes root write access and gives no access to the group; 755 and 777 grant unnecessary execute and world-writable permissions, violating least privilege.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: It grants write and execute permissions to everyone, allowing unauthorized users or attackers to tamper with or overwrite system configuration.
ANSWER_6: The application logs in /var/log/course-portal/app.log no longer report permission errors and show a successful service status or a 200 OK response from the portal.
ANSWER_7_BRIDGE: component=<file permissions and system configuration>, detect=<automated log monitoring>, recover=<permission adjustment or configuration management>, proof=<HTTP 200 status code from health check endpoint>

