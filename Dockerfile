FROM osixia/openldap

COPY 01-olcRootDN.ldif \
     02-createRootDN.ldif \
     03-create-organizationalUnits.ldif \
        /container/service/slapd/assets/config/bootstrap/ldif/custom/

ENV LDAP_ORGANISATION=studentrobotics.org \
    LDAP_DOMAIN=sr \
    LDAP_BASE_DN=o=sr \
    LDAP_ADMIN_PASSWORD=123456
