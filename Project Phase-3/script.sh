start=`date +%s`
./spark-submit /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output rangequery /home/viveklinux/Downloads/arealm10000.csv -93.63173,33.0183,-93.359203,33.219456
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output rangejoinquery /home/viveklinux/Downloads/arealm10000.csv /home/viveklinux/Downloads/zcta10000.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output distancequery /home/viveklinux/Downloads/arealm10000.csv -88.331492,32.324142 1
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output distancejoinquery /home/viveklinux/Downloads/arealm10000.csv /home/viveklinux/Downloads/arealm10000.csv 0.1
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output rangequery /home/viveklinux/Downloads/arealm10000.csv -93.63173,33.0183,-93.359203,33.219456
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output rangejoinquery /home/viveklinux/Downloads/arealm10000.csv /home/viveklinux/Downloads/zcta10000.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output distancequery /home/viveklinux/Downloads/arealm10000.csv -88.331492,32.324142 1
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 /home/viveklinux/Downloads/CSE512-Project-Phase1-Template-assembly-0.1.0-Group21-10880257.jar /home/viveklinux/Downloads/output distancejoinquery /home/viveklinux/Downloads/arealm10000.csv /home/viveklinux/Downloads/arealm10000.csv 0.1
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit ~/CSE512-Hotspot-Analysis-Template-assembly-0.1.0.jar test/output hotzoneanalysis ~/point-hotzone.csv ~/zone-hotzone.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit ~/CSE512-Hotspot-Analysis-Template-assembly-0.1.0.jar test/output hotcellanalysis ~/yellow_tripdata_2009-01_point.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 ~/CSE512-Hotspot-Analysis-Template-assembly-0.1.0.jar test/output hotzoneanalysis ~/point-hotzone.csv ~/zone-hotzone.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"

start=`date +%s`
./spark-submit --num-executors 4 --driver-memory 4G --executor-memory 4G --executor-cores 4 ~/CSE512-Hotspot-Analysis-Template-assembly-0.1.0.jar test/output hotcellanalysis ~/yellow_tripdata_2009-01_point.csv
end=`date +%s`
runtime=$((end-start))
echo $runtime "(secs)"
