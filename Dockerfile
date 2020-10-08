FROM quay.io/osism/horizon:ussuri-latest

COPY files/img /var/lib/kolla/venv/lib/python2.7/site-packages/openstack_dashboard/static/dashboard/img
COPY files/src /var/lib/kolla/venv/lib/python2.7/site-packages/scs_customization_module

LABEL "org.opencontainers.image.licenses"="ASL 2.0" \
      "org.opencontainers.image.source"="https://github.com/SovereignCloudStack/docker-horizon" \
      "org.opencontainers.image.url"="https://scs.community" \
      "org.opencontainers.image.vendor"="Sovereign Cloud Stack Community"
