## `arangodb:latest`

```console
$ docker pull arangodb@sha256:27e621241672495cadf61452c865b8feca37d46b3ee81dd3c1a6ba48204e8135
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:c056a2baceddec8ec0630bbf6fb6e0b7967773dc46346d3deb53d8016fb3d0dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.1 MB (103130844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1c1669aeaf7e58a3f6b536d74fb43780c753cdaeca5e2649b990a25d6fa426`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_VERSION=3.4.3
# Fri, 08 Mar 2019 03:24:25 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb
# Fri, 08 Mar 2019 03:24:26 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.3-1_amd64.deb.asc
# Fri, 08 Mar 2019 03:24:42 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 08 Mar 2019 03:24:46 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 08 Mar 2019 03:24:47 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 08 Mar 2019 03:24:54 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz
# Fri, 08 Mar 2019 03:24:55 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:e045f6005e7ab02917d35ce2967b33f5c941da6a304f4858a2fcf361fe766895 in /entrypoint.sh 
# Fri, 08 Mar 2019 03:24:55 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 08 Mar 2019 03:24:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 03:24:55 GMT
EXPOSE 8529
# Fri, 08 Mar 2019 03:24:56 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acf802cf278bde326cfbeb957e1a8fa10b84a9a017b30ff059a07101219329f`  
		Last Modified: Fri, 08 Mar 2019 03:25:21 GMT  
		Size: 30.0 MB (30017334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347a5f3ddc33b5fe5ee6b247854cec9f33fbebff95c587dd7c6ae98c9700643`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfeb28796ae58dfd768ec7b5d4476c59c3cc5acbbf36da2cb915d2db2d6e1b9a`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236029a90ca9424b099b939da7768c2fee638b46c564ea750615fdae80ea50b`  
		Last Modified: Fri, 08 Mar 2019 03:25:23 GMT  
		Size: 70.9 MB (70900596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d9c53e47d901fdd51bbd19bf61143ea0888c6f3b9b22c30b85f4bc2db5301d`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7681e9043ddcbceb01e13c653609f2b3723acd01ec70f3de1ffc84d019796dc7`  
		Last Modified: Fri, 08 Mar 2019 03:25:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
