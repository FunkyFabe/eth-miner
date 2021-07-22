FROM nvidia/cuda:11.2.0-runtime-ubuntu20.04
COPY ethminer /opt/ethminer
COPY kernels /opt/kernels/
CMD /opt/ethminer -P stratums://$ADDRESS.$WORKER@eu1.ethermine.org:5555 \
-P stratums://$ADDRESS.$WORKER@asia1.ethermine.org:5555 \
-P stratums://$ADDRESS.$WORKER@us1.ethermine.org:5555 \
-P stratums://$ADDRESS.$WORKER@us2.ethermine.org:5555 \