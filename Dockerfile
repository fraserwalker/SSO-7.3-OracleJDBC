FROM image-registry.openshift-image-registry.svc:5000/openshift/redhat-sso73-openshift

COPY extensions/actions.cli extensions/postconfigure.sh extensions/ojdbc8.jar /opt/eap/extensions/
USER root
RUN chown jboss:jboss /opt/eap/extensions/*
RUN chmod 777 /opt/eap/extensions/*.sh
USER jboss

CMD ["/opt/eap/bin/openshift-launch.sh"]
