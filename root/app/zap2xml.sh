#!/usr/bin/with-contenv bash

echo "<------------------------------------------------->"
echo
echo "<------------------------------------------------->"
echo "cronjob running zap2xml on "$(date)

. /app/zap2xml.conf
cd /config
/config/zap2xml.pl ${EXTRAPARAM}
if [ ! -z ${EXTRAPARAM2+x} ]; then /config/zap2xml.pl ${EXTRAPARAM2}; fi
if [ ! -z ${EXTRAPARAM3+x} ]; then /config/zap2xml.pl ${EXTRAPARAM3}; fi
if [ ! -z ${EXTRAPARAM4+x} ]; then /config/zap2xml.pl ${EXTRAPARAM4}; fi
if [ ! -z ${EXTRAPARAM5+x} ]; then /config/zap2xml.pl ${EXTRAPARAM5}; fi
if [ "$SHUTDOWN" == "true" ]; then shutdown now; fi
