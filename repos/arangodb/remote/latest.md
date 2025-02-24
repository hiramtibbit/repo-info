## `arangodb:latest`

```console
$ docker pull arangodb@sha256:123bf1670e02548aab562e4c97c698608584d31ebeff367bea77a5cd486df083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `arangodb:latest` - linux; amd64

```console
$ docker pull arangodb@sha256:d4c485a700714b8ce45ad465c26069d956932092dc35e3e7007a3408909a0670
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107669504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfb08e29190e3bf0e5e049e4dcbed1176a56f15b401ffed1e5903d2ab242809`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["arangod"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:24:25 GMT
MAINTAINER Frank Celler <info@arangodb.com>
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_VERSION=3.4.6.1
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE=arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_PACKAGE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb
# Fri, 07 Jun 2019 20:19:36 GMT
ENV ARANGO_SIGNATURE_URL=https://download.arangodb.com/arangodb34/DEBIAN/amd64/arangodb3_3.4.6.1-1_amd64.deb.asc
# Fri, 07 Jun 2019 20:19:54 GMT
RUN apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm
# Fri, 07 Jun 2019 20:19:58 GMT
RUN gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B
# Fri, 07 Jun 2019 20:19:59 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 07 Jun 2019 20:20:08 GMT
RUN cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\.0\.0\.1!0.0.0.0!g'         -e 's!^(file\s*=\s*).*!\1 -!'         -e 's!^\s*uid\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f /usr/bin/foxx &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-2.0.12-r2.apk &&     echo "5d6169428e3b8a5d0feda9948a199e9eb676b9a10961f643141f0e462eff38f1  numactl-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-2.0.12-r2.apk &&     wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/numactl-tools-2.0.12-r2.apk &&     echo "c758d0ea59a50e2d130ae5df1c35c77da935521ac2649183abde16a6bb1fa4d5  numactl-tools-2.0.12-r2.apk" | sha256sum -c &&     apk add ./numactl-tools-2.0.12-r2.apk &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz numactl-2.0.12-r2.apk numactl-tools-2.0.12-r2.apk
# Fri, 07 Jun 2019 20:20:08 GMT
VOLUME [/var/lib/arangodb3 /var/lib/arangodb3-apps]
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:912d8c5e20cd837dbed0bf2608b1376ffffdd2d6de3e5b0af4cc869508443235 in /entrypoint.sh 
# Fri, 07 Jun 2019 20:20:09 GMT
COPY file:62d691f3a389929940df44ad84590c9019bdc0c8ce47667d5eb5dab0b2e66954 in /usr/bin/foxx 
# Fri, 07 Jun 2019 20:20:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 07 Jun 2019 20:20:09 GMT
EXPOSE 8529
# Fri, 07 Jun 2019 20:20:09 GMT
CMD ["arangod"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede70f46f5387f1febe02568db89ec9b291ffb6f953f558d7bf8264226c26e16`  
		Last Modified: Fri, 07 Jun 2019 20:20:29 GMT  
		Size: 30.1 MB (30135887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de26343cbd400d5577f638dc348447c1f72d67fb7182e800f22f5d1ebe88ea4`  
		Last Modified: Fri, 07 Jun 2019 20:20:20 GMT  
		Size: 4.5 KB (4502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfe26b2b904b4cf4257f050fcc72ca8298abd4807ed36791604f5990dfdba1b`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2180c84652efcbc4e3f393732b89f0799a5c52aac19a6bcaeec6a2afb12ea666`  
		Last Modified: Fri, 07 Jun 2019 20:20:33 GMT  
		Size: 75.3 MB (75319374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be69770319ba5b959546efdf88a1db326c6a70914e3cf4bca411a3cb9353c220`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 2.2 KB (2205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de62ef26ea49369450b412d3b62078319890de02d85c92065357e78adf25f09`  
		Last Modified: Fri, 07 Jun 2019 20:20:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
