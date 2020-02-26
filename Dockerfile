FROM registry.redhat.io/redhat-sso-7/sso73-openshift

COPY extensions/actions.cli extensions/postconfigure.sh extensions/ojdbc8.jar /opt/eap/extensions/
USER root
RUN chown jboss:jboss /opt/eap/extensions/*
RUN chmod 774 /opt/eap/extensions/*.sh
USER jboss

CMD ["/opt/eap/bin/openshift-launch.sh"]
