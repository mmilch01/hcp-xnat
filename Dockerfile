FROM qunex/qunex_suite:1.4.3
COPY run_hcp_xnat_stage* hcp_xnat.shlib /usr/local/bin/
#performance critical
RUN chmod a+x /usr/local/bin/run_hcp_xnat_stage1 && chmod a+x /usr/local/bin/run_hcp_xnat_stage2 && mkdir -p /opt/home && chmod 777 /opt/home && ln -sf /bin/tcsh /bin/csh
ENV HOME=/opt/home
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
