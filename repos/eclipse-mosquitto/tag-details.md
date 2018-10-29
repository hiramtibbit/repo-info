<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eclipse-mosquitto`

-	[`eclipse-mosquitto:1.5`](#eclipse-mosquitto15)
-	[`eclipse-mosquitto:1.5.3`](#eclipse-mosquitto153)
-	[`eclipse-mosquitto:latest`](#eclipse-mosquittolatest)

## `eclipse-mosquitto:1.5`

**does not exist** (yet?)

## `eclipse-mosquitto:1.5.3`

**does not exist** (yet?)

## `eclipse-mosquitto:latest`

```console
$ docker pull eclipse-mosquitto@sha256:bb177e7bd81746fc59b919ccb84b6ffffbe1ec1f7f933fa68c3aca4b4be364b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eclipse-mosquitto:latest` - linux; amd64

```console
$ docker pull eclipse-mosquitto@sha256:309567a2781ad30367d0224ea2d877047b1a9f0f1332094b0d375b16da1e5b98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2166746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd592a7a5bcf41530661042b44841ea6ac21d634fe46624fb0a173ff67eef1fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["\/usr\/sbin\/mosquitto","-c","\/mosquitto\/config\/mosquitto.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:34:27 GMT
MAINTAINER David Audet <david.audet@ca.com>
# Tue, 09 Jan 2018 21:34:27 GMT
LABEL Description=Eclipse Mosquitto MQTT Broker
# Tue, 09 Jan 2018 21:34:31 GMT
RUN apk --no-cache add mosquitto=1.4.12-r0 &&     mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log &&     cp /etc/mosquitto/mosquitto.conf /mosquitto/config &&     chown -R mosquitto:mosquitto /mosquitto
# Tue, 09 Jan 2018 21:34:31 GMT
COPY file:837d39cfa86d29b54b50c161745633f730844caea976da0ece1641e4e4b122aa in / 
# Tue, 09 Jan 2018 21:34:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:34:32 GMT
CMD ["/usr/sbin/mosquitto" "-c" "/mosquitto/config/mosquitto.conf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67714bea01fe3ca1b0d7255a1d7d013bf8f936fa5435372d4adcf80919a95d`  
		Last Modified: Tue, 09 Jan 2018 21:34:49 GMT  
		Size: 174.9 KB (174854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ddf5912b7f9cf4b74262093e8501bbb2249ebfc208175d6175101fd2d1bf2d`  
		Last Modified: Tue, 09 Jan 2018 21:34:49 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
