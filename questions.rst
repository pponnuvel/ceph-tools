- One of my OSDs crashed. Why?

- Some OSDs are very slow. Why?

- On some OSDs CPU usage is very high. Why?

- I/O is pending or very slow despite no obvious bottleneck. Why?

- Ceph status is ``HEALTH_WARN`` or ``HEALTH_ERROR``. How to fix it? (or what are the common/potential situations that could cause ``HEALTH_ERROR`` or ``HEALTH_WARN``)

- How do you generally figure out/understand whether the configuration is a cluster is optimal for the workload?

- What's scrubbing? How often does it happen? How do you change the interval?

- Writes to RBD is slow. What causes it? How do you benchmark (``rbd bench`` vs. ``dd``)?

- Utility of admin sockets or how can they be used for retrieving information?

- How to stop the cluster safely? (both via juju and standard ways)

- How to add a new OSD?

- How to add a remove an OSD?

- When is it safe to purge an OSD? (or what boxes need to be ticked before removing an OSD)
