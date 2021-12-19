FROM sameersbn/bind:9.16.1-20200524

COPY ./conf/dns/named.conf /etc/bind/named.conf
COPY ./conf/dns/zones/ua.com /etc/bind/master/ua.com
COPY ./conf/dns/zones/others.com /etc/bind/master/others.com
COPY ./conf/GeoIP.acl /etc/bind/geo/GeoIP.acl