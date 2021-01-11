Pools:
------
1. List pools: ``ceph osd lspools``

2. Create a rados pool (replicated): ``ceph osd pool create ${pool_name} 128 128 replicated``

3. Repl pool usabble storage capacity: ``1/replicas %``

4. Get erasure coded profiles: ``ceph osd erasure-code-profile ls``

5. Create an EC profile: ``ceph osd erasure-code-profile set test_ec_profile k=4 m=2 plugin=jerasure technique=reed_sol_van``

6. Get specific erasure coded profile info: ``ceph osd erasure-code-profile get ec-profile-cinder-ceph``

7. Create an EC pool: ``ceph osd pool create ecpool 128 128 erasure test_ec_pool``

8. EC pool usabble storage capacity: ``K/(K + M) %`` 

9. List pool detail: ``ceph osd pool ls detail``

10. Eanble application for a pool: ``ceph osd pool application enable <poolname> <poolname>```

11. Enable overwrite for ec pool: ``ceph osd pool set <ec_poolname> allow_ec_overwrites true``

12. Set/change ``pg_num``: ``ceph osd pool set data pg_num 256``

13. Set/change ``pgp_num``: ``ceph osd pool set data pgp_num 256``


OSDs:
-----

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

14. Change all OSDs' OSD_param: ``ceph tell osd.* config set OSD_param {value}``

15. Get OSD versions (from a monitor):
 a. ``ceph report | jq '.osd_metadata | .[] | .ceph_version'``  
 b. ``ceph tell osd.* version``  
 c. ``ceph osd versions``

16. Mount OSD to view as files: ``ceph-objectstore-tool --op fuse --data-path /var/lib/ceph/osd/ceph-NUM --mountpoint /mnt/osd-NUM``


MON:
----

1. Change all monitor's MON_param: ``ceph tell mon.* config set MON_param {value}``

2. List all the pools: ``rados lspools``


MGR:
----
1. Enable a module (balancer here): ``ceph mgr module enable balancer``

2. List modules: ``ceph mgr module ls``

Enalbe balancer:
  - ``ceph osd set-require-min-compat-client luminous``  
  - ``ceph mgr module enable balancer``  
  - ``ceph balancer mode upmap``  
  - ``ceph balancer on``  


Cluster performance:
--------------------
1. Benchmark the cluster

    (Can also create a new pool and using it to benchmark: ``ceph osd pool create ${pool_name} 100 100``)

    - write: ``rados bench -p ${pool_name} 10 write --cleanup``
    - seq read:  ``rados bench -p ${pool_name} 10 seq``
    - rando  read:  ``rados bench -p ${pool_name} 10 rand``

CRASH reports:
--------------
1. List all crashes: ``ceph crash ls``

2. Details of a specific crash: ``ceph crash info <crash-id>``

3. Clear a crash: ``ceph crash archive <crash-id>``

4. Clear all: ``ceph crash archive-all``

5. Remove specific crash: ``ceph crash rm <crash-id>``

6. Crash summary: ``ceph crash stat``

PGs:
----

1. Get all PGs: ``ceph pg dump``

2. Get all PGs & state: ``ceph osd health detail``

3. Query a PG: ``ceph pg <pg-id> query

4. Get an object's PG: ``ceph osd map <pool-id> <object-id>

5. PG stat: ``ceph pg stat``

6. PG balancing: use balancer_ for Luminous or newer versions.

.. _balancer: https://docs.ceph.com/en/latest/rados/operations/balancer/
RADOS:
------

1. Read an object directly: ``rados --pool test_pool get object_name -``

2. List objects from a pool: ``rados -p pool_name ls``

RBD:
----

CephFS:
-------
1. Create ceph fs: ``ceph fs create fs_name meta_repl_pool_name data_pool_name``

2. CephFS status: ``ceph fs status``



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

