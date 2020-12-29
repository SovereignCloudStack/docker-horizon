ARG RELEASE=victoria
FROM quay.io/osism/horizon:${RELEASE}-latest

ARG BRAND=scs

COPY files/img/logo-splash-${BRAND}.svg /var/lib/kolla/venv/lib/python3.6/site-packages/openstack_dashboard/static/dashboard/img/logo-splash.svg
COPY files/img/logo.svg /var/lib/kolla/venv/lib/python3.6/site-packages/openstack_dashboard/static/dashboard/img/logo.svg
COPY files/src /var/lib/kolla/venv/lib/python3.6/site-packages/site-packages/scs_customization_module

LABEL "org.opencontainers.image.licenses"="ASL 2.0" \
      "org.opencontainers.image.source"="https://github.com/SovereignCloudStack/docker-horizon" \
      "org.opencontainers.image.url"="https://scs.community" \
      "org.opencontainers.image.vendor"="Sovereign Cloud Stack Community"
