FROM openshift/redhat-sso73-openshift:latest
USER root
COPY ./actions.cli ./postconfigure.sh /opt/eap/extensions/
RUN curl -L <url-to-jdbc.jar> -o /opt/eap/extensions/ojdbc8.jar && chown jboss:jboss /opt/eap/extensions/* && chmod 555 /opt/eap/extensions/*.* && chmod 777 /opt/eap/extensions/*.sh
USER jboss
CMD ["/opt/eap/bin/openshift-launch.sh"]
