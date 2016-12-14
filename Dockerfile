## -*- docker-image-name: "rezarahimi/app-config-with-awk" -*-
FROM mcreations/openwrt-x64

ADD image/root/ /

ENV REMOVE_EMPTY_LINES false

ENV system1.subs1.prop1 prop1-env-value
ENV system1.subs1.prop_2 prop_2-env-value
ENV system1.subs1.prop-3 prop-3-env-value

RUN opkg update && opkg install diffutils

CMD ["/awk"]