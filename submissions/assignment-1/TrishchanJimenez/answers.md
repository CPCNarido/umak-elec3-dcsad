ANSWER_1: The Course Materials Portal had an error after a config change due to not having permissions to access the configuration file 
ANSWER_2: The file /etc/course-portal/portal.conf cannot be read by the course-portal account because its permissions are set to -rw-------, an octal equivalent of 600, which grants read and write permissions only to the owner, leaving no permissions for the group or others. Since the course-portal account belongs to the group and is not the owner, it is denied read access to the file.
ANSWER_3: 640
ANSWER_3_WHY: 400 is wrong because it only grants read permission to the root owner and none to the group, leaving course-portal still unable to read the file. 755 is also wrong because it unnecessarily grants read and execute access to others and adds execute permissions to a configuration file that is non executable; 777 is wrong because it grants full read, write, and execute permissions to all users, which adds unnecessary risk.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: Using chmod 777 is risky because it grants write and execute permissions to everyone, allowing unauthorized users or attackers to easily modify, overwrite, or delete the configuration file.
ANSWER_6: A successful HTTP 200 OK response from the portal web server via curl and application logs in /var/log/course-portal/app.log showing successful service startup without permission errors.
ANSWER_7_BRIDGE: component=file permissions, detect=automated error log monitoring, recover=rolling back to the last working config, proof=testing if the website loads properly
