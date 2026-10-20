ANSWER_1: The Course Materials Portal could not access its configuration file /etc/course-portal/portal.conf due to insufficient file read permissions.
ANSWER_2: The target configuration file has 600 (-rw-------) permissions, meaning only root has read/write privileges while group and other permissions
are completely denied. Because the portal service runs as the course-portal user, it depends on group course-portal rights, which are set to 0.
ANSWER_3: 640
ANSWER_3_WHY: 400 still provides no read permission to group course-portal, 755 grants unneeded execution rights and exposes the configuration to all
other users, 777 grants universal read, write, and execute permissions, posing a severe security hazard.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: Any local account or compromised background programs on the operating system could rewrite or tamper with application settings.
ANSWER_6: The portal responds to incoming network traffic with an HTTP 200 status code and successfully delivers course files to web clients.
ANSWER_7_BRIDGE: component=configuration, detect=system logging, recover=permission adjustment, proof=HTTP 200 status
