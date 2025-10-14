FROM qunex/qunex_suite:1.4.0_RC2
COPY run_hcp_xnat /usr/local/bin/run_hcp_xnat
RUN chmod a+x /usr/local/bin/run_hcp_xnat

ENV FIV_HOME=/nrgpackages/tools/fiv \ 
	PATH=/nrgpackages/tools/fiv:/nrgpackages/tools/nrg-improc/Perceptron:$PATH
	

RUN mkdir -p /usr/local/MATLAB_Runtime && \
	mkdir -p /usr/local/benice && \
	rm -rf /nrgpackages/tools/nrg-improc && \
	mkdir -p /docker_mount && \
	mkdir -p /input && \
	apt-get update && \
	apt-get install -y default-jre curl tcsh
	
#performance critical    
RUN ln -sf /bin/tcsh /bin/csh
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

