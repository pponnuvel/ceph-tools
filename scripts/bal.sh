- Enable balancer if not enabled already: ceph mgr module enable balancer
- Set clients to be Luminous+: ceph osd set-require-min-compat-client luminous
Optionally alter the balancing throttle % (default is 5%): ceph config set mgr target_max_misplaced_ratio .06 (sets to 6%)
Set upmap mode: ceph balancer mode upmap
Turn on balancing: ceph balancer on
