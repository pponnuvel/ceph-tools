1. Status/start/stop an OSD: ``systemctl [status|start|stop] osd@NUM``

2. Change the loglevel of OSDs: ``juju ssh ceph-mon/0 'sudo ceph tell osd.* injectargs "--debug_osd 1/5"'``

More:
-----
1. ``ceph [subcmds]`` 
2. ``rados [subcmds]``
3. ``ceph-bluestore-tool [opts]``
