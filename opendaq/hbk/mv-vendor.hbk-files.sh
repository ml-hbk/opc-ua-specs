#!/bin/sh
# When exporting new modeller files, the bsd and csv files need to be renamed before committing,
# You can run this script to do that
read -p "Press return to rename VENDOR HBK bsp and csv files so they are ready for commit: " DUMMY
mv -f Opc.Ua.Daq.Vendor.Hbk.NodeSet2.bsd Opc.Ua.Daq.Vendor.Hbk.Types.bsd
sed s/http___/https___/ Opc.Ua.Daq.Vendor.Hbk.NodeSet2.csv > /tmp/Opc.Ua.Daq.Vendor.Hbk.NodeIds.csv
mv -f /tmp/Opc.Ua.Daq.Vendor.Hbk.NodeIds.csv .
rm -f Opc.Ua.Daq.Vendor.Hbk.NodeSet2.csv
