ANSWER_1: The portal broke because the app couldn't open its config file — it got a permission denied error when trying to read portal.conf.
ANSWER_2: portal.conf is owned by root with mode 600, so only root can read or write it (rw-). The group is course-portal with no permissions (---), and others also has none (---). Even though the course-portal user is in the course-portal group, that group has zero access, so it gets shut out.
ANSWER_3: 640
ANSWER_3_WHY: 640 gives the group read access, which is all course-portal needs since it's a group member, not the owner. 400 still blocks the group (0 perms). 755 and 777 hand out extra access to others that isn't needed and is a security risk.
ANSWER_4_ORDER: B, G, E, D, F, A, I, C, H
ANSWER_5: Using 777 would let literally any user on the system write to or execute the config file, not just the service account — that's an open door for someone to mess with or replace it.
ANSWER_6: Just running chmod successfully doesn't prove anything — you'd want to see the "Permission denied" error gone from the app logs, and actually load the portal in a browser (or hit it with a request) to confirm it responds correctly.
ANSWER_7_BRIDGE: component=file permissions/access control, detect=log monitoring and alerts, recover=an automated fix or clear runbook, proof=an end-to-end check that a real user request actually succeeds
