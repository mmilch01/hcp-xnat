FROM qunex/qunex_suite:1.4.0_RC2
COPY run_hcp_xnat /usr/local/bin/run_hcp_xnat
RUN chmod a+x /usr/local/bin/run_hcp_xnat && mkdir -p /opt/home && chmod 777 /opt/home
ENV HOME=/opt/home

#performance critical    
RUN ln -sf /bin/tcsh /bin/csh
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

