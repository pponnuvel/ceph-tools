#!/bin/bash

# Install/upgrade of Ceph via juju.

err_exit()
{
    echo "$@ failed."
    exit 1
}

main()
{
    declare -a MONS=()
    declare -a OSDS=()

    for mon in "${MONS[@]}"; do
        juju ssh $mon 'sudo apt update && sudo apt install ceph -y' || err_exit "Installing $mon"

        juju ssh $mon 'sudo systemctl restart ceph-mon.target && sudo systemctl restart ceph-mgr.target' || err_exit "Restarting $mon"
    done

    # This might need to be changed depending on the cluster. Wait for monitors to be functional.
    sleep 10

    { juju run --unit ceph-mon/leader 'ceph health' | grep -q HEALTH_OK; } || err_exit "monitor HEALTH check"

    # To avoid OSD's dropping out
    juju run-action --wait ceph-mon/leader set-noout || err_exit "set-noout"


    for osd in "${OSDS[@]}"; ek
        juju ssh $osd 'sudo apt update && sudo apt install ceph -y' || err_exit " Installing $osd"

        juju ssh $osd 'sudo systemctl restart ceph-osd.target' || err_exit "Restarting $osd"
    done

    juju run-action --wait ceph-mon/leader unset-noout || err_exit "unset-noout"

    echo "Cluster status"
    juju ssh ceph-mon/0 'sudo ceph -s && sudo ceph health'
}

main "$@"
