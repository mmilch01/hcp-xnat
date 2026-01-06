FROM qunex/qunex_suite:1.4.0_RC2
COPY run_hcp_xnat /usr/local/bin/run_hcp_xnat
#performance critical
RUN chmod a+x /usr/local/bin/run_hcp_xnat && mkdir -p /opt/home && chmod 777 /opt/home && ln -sf /bin/tcsh /bin/csh
ENV HOME=/opt/home
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]

