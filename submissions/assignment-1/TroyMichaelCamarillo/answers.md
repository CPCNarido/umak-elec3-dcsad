ANSWER_1: Line 3 says permission denied.
ANSWER_2: rw- = 6, --- = 0, --- = 0, then line 7 says groups-995(course-portal) so the group is that. Given the format of Owner/Group/Others, we know that the group course-portal cannot access the portal.conf since its 0, or no access.
ANSWER_3: 640
ANSWER_3_WHY: the others are wrong since 400 doesn't make sense since it wouldn't give access to the group, 755 also doesn't make sense since that would give execute permissions to the group and others, and make others be able to read the config, and 777 for the same reason but its like giving everyone admin access to the config.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: It would give everyone write access to the config, owner, group, and others.
ANSWER_6: When you successfully load the web page in a browser.
ANSWER_7_BRIDGE: component=permission, detect=monitoring, recover=config checking, proof=log checking
