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


Ceph MON:
---------


CEPH MGR:
---------

More:
-----
1. ``ceph-authtool``
2. ``ceph-bluestore-tool``
3. ``ceph-client-debug``
4. ``ceph-conf``
5. ``ceph-coverage``
6. ``ceph-crash``
7. ``ceph-debugpack``
8. ``ceph-dedup-tool``
9. ``ceph-dencoder``
10. ``ceph-diff-sorted``
11. ``ceph-erasure-code-tool``
12. ``ceph-fuse``
13. ``ceph-immutable-object-cache``
14. ``ceph-kvstore-tool``
15. ``ceph-mds``
16. ``ceph-mgr``
17. ``ceph-mon``
18. ``ceph-monstore-tool``
19. ``ceph-objectstore-tool``
20. ``ceph-osd``
21. ``ceph-osdomap-tool``
22. ``ceph-post-file``
23. ``ceph-syn``
24. ``ceph_bench_log``
25. ``ceph_erasure_code_benchmark``
26. ``ceph_erasure_code_non_regression``
27. ``ceph_kvstorebench``
28. ``ceph_multi_stress_watch``
29. ``ceph_objectstore_bench``
30. ``ceph_omapbench``
31. ``ceph_perf_local``
32. ``ceph_perf_msgr_client``
33. ``ceph_perf_msgr_server``
34. ``ceph_perf_objectstore``
35. ``ceph_psim``
36. ``ceph_radosacl``
37. ``ceph_rgw_jsonparser``
38. ``ceph_rgw_multiparser``
39. ``ceph_scratchtool``
40. ``ceph_scratchtoolpp``
41. ``ceph``
42. ``cephfs-data-scan``
43. ``cephfs-journal-tool``
44. ``cephfs-meta-injection``
45. ``cephfs-table-tool``
46. ``crushtool``
47. ``get_command_descriptions``
48. ``init-ceph``
49. ``librados-config``
50. ``monmaptool``
51. ``mount.ceph``
52. ``neorados``
53. ``osdmaptool``
54. ``rados``
55. ``radosgw-admin``
56. ``radosgw-es``
57. ``radosgw-object-expirer``
58. ``radosgw-token``
59. ``radosgw``
60. ``rbd-fuse``
61. ``rbd-mirror``
62. ``rbd-nbd``
63. ``rbd-replay-prep``
64. ``rbd-replay``
65. ``rbd``
