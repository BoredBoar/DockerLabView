FROM centos

# Install labview runtime
RUN mkdir ~/LabVIEW_Runtime
RUN curl -o /root/LabVIEW_Runtime/runtime.tgz \
	http://download.ni.com/support/softlib/labview/labview_runtime/2018/Linux/f1/LabVIEW2018f1RTE_Linux.tgz
RUN cd /root/LabVIEW_Runtime ; tar xf ./runtime.tgz ; rm -f ./runtime.tgz
RUN rpm -Uvh /root/LabVIEW_Runtime/*.rpm
RUN rm -rf ~/LabVIEW_Runtime
