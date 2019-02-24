For my personal use only. Do not use.

### Notes to myself:
```
docker create \
  -name=zap2xml \
  -v /path/to/config:/config \
  -e PUID=<uid> \
  -e PGID=<gid> \
  -e TZ=America/New_York \
  -e EXTRAPARAM="<extra parameters for zap2xml>" \
  -e EXTRAPARAM2="<extra parameters for zap2xml>" (optional) \
  -e EXTRAPARAM3="<extra parameters for zap2xml>" (optional) \
  -e EXTRAPARAM4="<extra parameters for zap2xml>" (optional) \
  -e EXTRAPARAM5="<extra parameters for zap2xml>" (optional) \
  -e SHUTDOWN="true" (optional) \
 vikt0/zap2xml:<tag>
  ```
- Download zap2xml.pl from http://zap2xml.awardspace.info/ and click on his donation link to buy him beer.
- Drop the zap2xml perl script into the config folder and restart
- Extra parameters can be anything that zap2xml accepts. Example EXTRAPARAM: -U -F -D -T -c /scripts/cache_zap -u myemail@email.com -p uYjk34OSkl -I -d 3 -N 1 -o /scripts/xmltv.xml
- Use additional EXTRAPARAM2,3,4,5 to retrieve more lineups
- Use SHUTDOWN="true" to shutdown the container after task completion
- For tvguide instead of zap2it, add a "-z" into the extra parameters
