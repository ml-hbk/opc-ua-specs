#!/bin/sh
# when exporting new modeller files, the bsd and csv files need to be renamed before committing,
# You can run this script to do that
read -p "Press return to rename EXAMPLE bsd and csv files so they are ready for commit: " DUMMY
mv -f Opc.Ua.Example.NodeSet2.bsd Opc.Ua.Example.Types.bsd
mv -f Opc.Ua.Example.NodeSet2.csv Opc.Ua.Example.NodeIds.csv
