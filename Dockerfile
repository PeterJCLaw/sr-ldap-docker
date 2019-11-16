FROM osixia/openldap:1.3.0

ENV LDAP_TLS=false

COPY *.ldif /container/service/slapd/assets/config/bootstrap/ldif/custom/

ENV LDAP_ORGANISATION=studentrobotics.org \
    LDAP_DOMAIN=sr \
    LDAP_BASE_DN=o=sr \
    LDAP_ADMIN_PASSWORD=123456
