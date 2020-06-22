General/Cluster:
----------------

1. Deploy new cluster components: ``ceph-deploy [options]``

2. List pools: ``ceph osd lspools``


Ceph OSD:
---------

1. Status/start/stop an OSD: ``systemctl [status|start|stop] osd@NUM``

2. Change the loglevel of OSDs: ``juju ssh ceph-mon/0 'sudo ceph tell osd.* injectargs "--debug_osd 1/5"'``

3. Dump OSD perf stats: ``ceph daemon osd.$i perf dump``

4. Reset perf counter for an OSD: ``ceph daemon osd.${OSD} perf reset all``

5. Dump perf stats of an OSD: ``ceph daemon osd.${OSD} perf dump -f json``

6. Get OSD of the _current_ OSD unit (OSD num could be different than the juju unit num):

   ``mount | grep /var/lib/ceph/osd/ceph-|awk '{print $3}' | cut -d- -f2 | sort -n | xargs``

7. Get OSD number (run on a monitor node): ``ceph osd tree``

8. Dump memory usage of an OSD: ``ceph daemon osd.${OSD} dump_mempools``

9. To check the current value of an``OSD_param``: ``ceph daemon osd.{OSD} config show | grep OSD_param``
                                              or: ``ceph daemon osd.{id} config get OSD_param``


Ceph MON:
---------


CEPH MGR:
---------

More (Not shown/used above. Idea is to show at least usage for each command and then remove from below)
-----

 ``ceph-authtool``

 ``ceph-bluestore-tool``

 ``ceph-client-debug``

 ``ceph-conf``

 ``ceph-coverage``

 ``ceph-crash``

 ``ceph-debugpack``

 ``ceph-dedup-tool``

 ``ceph-dencoder``

 ``ceph-diff-sorted``

 ``ceph-erasure-code-tool``

 ``ceph-fuse``

 ``ceph-immutable-object-cache``

 ``ceph-kvstore-tool``

 ``ceph-mds``

 ``ceph-mgr``

 ``ceph-mon``

 ``ceph-monstore-tool``

 ``ceph-objectstore-tool``

 ``ceph-osd``

 ``ceph-osdomap-tool``

 ``ceph-post-file``

 ``ceph-syn``

 ``ceph-volume``

 ``ceph_bench_log``

 ``ceph_erasure_code_benchmark``

 ``ceph_erasure_code_non_regression``

 ``ceph_kvstorebench``

 ``ceph_multi_stress_watch``

 ``ceph_objectstore_bench``

 ``ceph_omapbench``

 ``ceph_perf_local``

 ``ceph_perf_msgr_client``

 ``ceph_perf_msgr_server``

 ``ceph_perf_objectstore``

 ``ceph_psim``

 ``ceph_radosacl``

 ``ceph_rgw_jsonparser``

 ``ceph_rgw_multiparser``

 ``ceph_scratchtool``

 ``ceph_scratchtoolpp``

 ``cephfs-data-scan``

 ``cephfs-journal-tool``

 ``cephfs-meta-injection``

 ``cephfs-table-tool``

 ``crushtool``

 ``get_command_descriptions``

 ``init-ceph``

 ``librados-config``

 ``monmaptool``

 ``mount.ceph``

 ``neorados``

 ``osdmaptool``

 ``rados``

 ``radosgw-admin``

 ``radosgw-es``

 ``radosgw-object-expirer``

 ``radosgw-token``

 ``radosgw``

 ``rbd-fuse``

 ``rbd-mirror``

 ``rbd-nbd``

 ``rbd-replay-prep``

 ``rbd-replay``

 ``rbd``

