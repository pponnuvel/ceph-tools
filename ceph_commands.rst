General/Cluster mgmt:
---------------------

1. Deploy new cluster components: ``ceph-deploy [options]``

2. List pools: ``ceph osd lspools``


Ceph OSD:
---------

1. Status/start/stop an OSD: ``systemctl [status|start|stop] osd@NUM``

2. Change the loglevel of OSDs: ``juju ssh ceph-mon/0 'sudo ceph tell osd.* injectargs "--debug_osd 1/5"'``

3. Dump OSD perf stats: ``ceph daemon osd.$i perf dump``

4. Reset perf counter for an OSD: ``ceph daemon osd.${OSD} perf reset all``

5. Dump perf stats of an OSD: ``ceph daemon osd.${OSD} perf dump -f json``

6. Get OSD of the _current_ OSD unit (OSD num could be different than the juju unit num): ``mount | grep /var/lib/ceph/osd/ceph- | awk '{split($3, a, "-"); print a[2]}'``

7. Get OSD number (run on a monitor node): ``ceph osd tree``

8. Dump memory usage of an OSD: ``ceph daemon osd.${OSD} dump_mempools``

9. To check the current value of an OSD_param: ``ceph daemon osd.{OSD} config show | grep OSD_param`` or ``ceph daemon osd.{id} config get OSD_param``

10. Quicken an OSD recovery: ``juju ssh ceph-mon/{MON} 'sudo ceph tell 'osd.*' injectargs '--osd_max_backfills 10 --osd_recovery_max_active 10 --osd_recovery_op_priority 63 --osd_recovery_sleep 0 --osd_recovery_sleep_hdd 0'``

11. Restore OSD recovery quicken params back to default: ``juju ssh ceph-mon/${MON} 'sudo ceph tell 'osd.*' injectargs '--osd_max_backfills 1 --osd_recovery_max_active 3 --osd_recovery_op_priority 3 --osd_recovery_sleep 0 --osd_recovery_sleep_hdd 0.1'``

12. Get OSD device type: ``ceph osd metadata 5``

13. Get an OSD's lvm: ``ceph-volume lvm list``

14. Change all OSDs' OSD_param: ``ceph tell mon.* config set OSD_param {value}``

Ceph MON:
---------

1. Change all monitor's MON_param: ``ceph tell mon.* config set MON_param {value}``


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

