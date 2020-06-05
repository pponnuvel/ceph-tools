1. Status/start/stop an OSD: ``systemctl [status|start|stop] osd@NUM``  

2. Change the loglevel of OSDs: ``juju ssh ceph-mon/0 'sudo ceph tell osd.* injectargs "--debug_osd 1/5"'``  

3. Dump OSD perf stats: ``ceph daemon osd.$i perf dump``  

4. Reset perf counter for osd.${OSD}: ``ceph daemon osd.${OSD} perf reset all``  

5. Dump perf stats of an OSD: ``ceph daemon osd.${OSD} perf dump -f json``  
 
6. Get OSD of the _current_ OSD unit (OSD num could be different than the juju unit num):
   ``mount|grep /var/lib/ceph/osd/ceph-|awk '{print $3}' | cut -d- -f2 | sort -n | xargs``  
 

More:
-----
1. ``ceph [subcmds]`` 
2. ``rados [subcmds]``
3. ``ceph-bluestore-tool [opts]``
