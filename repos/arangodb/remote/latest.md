## `arangodb:latest`

```console
$ docker pull arangodb@sha256:fe725e9c2c5d73906ef25697a4d9accb4e5a2b6f281265914a1edc63a94c2782
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:b8a97dad463169010a2c764d054e27407d578c1de17a9f9a3ec57ace6eb1aebb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107668955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76e424cf7b14330b7b0b9d246c9b5a1624b1bf704a2666a4c38d2295ac54e9a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_VERSION=3.4.6
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb
# Wed, 29 May 2019 16:19:31 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6-1_amd64.deb.asc
# Wed, 29 May 2019 16:19:49 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Wed, 29 May 2019 16:19:54 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Wed, 29 May 2019 16:19:55 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 29 May 2019 16:20:04 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Wed, 29 May 2019 16:20:04 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Wed, 29 May 2019 16:20:04 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Wed, 29 May 2019 16:20:05 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Wed, 29 May 2019 16:20:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 May 2019 16:20:05 GMT
EXPOSE 8529
# Wed, 29 May 2019 16:20:05 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9937af02c46c8dd0b7513d0e7710d287978459b84989243f8d45e033d2751edb`  
		Last Modified: Wed, 29 May 2019 16:20:24 GMT  
		Size: 30.1 MB (30135767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a916d0eeb8d8ee4ca485b49f943f08a027685cd610d9d047c03300742bf969`  
		Last Modified: Wed, 29 May 2019 16:20:15 GMT  
		Size: 3.4 KB (3407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec9144502ae79c5fde58f92236eb6f1810cf71233bc35ae5841835cfd8a952a`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a18d7047df18e2ee59138f4ac41345ee91ce4577b8fc38ec3f7159b20299639`  
		Last Modified: Wed, 29 May 2019 16:20:29 GMT  
		Size: 75.3 MB (75320039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f31308fac555832d108edc44e4ad392d16dedabc3ffc1628d2c95a03603431`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3299d79dd96c27f3c9cf83346f36ff0f0a4dfd73aa38990437f374b248caa3f`  
		Last Modified: Wed, 29 May 2019 16:20:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
