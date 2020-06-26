Config files:
-------------
Ceph config file on OSDs: ``/etc/ceph/ceph.conf``


Log files:
----------
- Source of an OSD charm: ``/var/lib/juju/agents/unit-ceph-osd-{UNIT}/charm/``

- Deployed charm location: ``/var/lib/charm/ceph-osd/``

- Deployed OSD: ``/var/lib/ceph/osd/``

- Log rotate: ``/etc/logrotate.d/[ceph-common|ceph]``
