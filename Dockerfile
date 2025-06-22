FROM 4km3/dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY start-with-domain-ip.sh /usr/local/bin
RUN chmod +x /usr/local/bin/start-with-domain-ip.sh

ENTRYPOINT ["/usr/local/bin/start-with-domain-ip.sh"]
CMD ["docker", "127.0.0.1"]
