## `notary:signer-0.6.1`

```console
$ docker pull notary@sha256:c022e8538085e90dfaabb40d12ae8ec277b9030c81ef2c9dbadc5488c63f0b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `notary:signer-0.6.1` - linux; arm variant v6

```console
$ docker pull notary@sha256:18c6f1cc018cf2af768b6c21958f19c04515160b476e7e2b65c2fc5771ab7647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b4fcff33cdb8014cdc144b8939c0b2db8d1f3458f61e43393fbecce058a081`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 09:06:21 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 09:06:21 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 09:07:04 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 09:07:05 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 09:07:05 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 09:07:05 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 09:07:30 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 09:07:30 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 09:07:31 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 09:07:32 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 09:07:36 GMT
USER [notary]
# Fri, 16 Nov 2018 09:07:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 09:07:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 09:07:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10677a4b6168eb72d525e96820efcfbd3dcc066b28184c37cd91391d923df42`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc356583d6fc1c10c560d8666a253d64a324254bf02cca9c8fcf60ac209fae`  
		Last Modified: Fri, 16 Nov 2018 09:08:08 GMT  
		Size: 4.3 MB (4265275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f26bfc12cfe770f50b4b9891301a02420205ce6f374f6d6b9b2d99d1a80f67`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273a13aa510bd4198a692cabd5683ddcba41cef40381c44cc97cda4df48ce236`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82832ecfe96d3fab08278a813b95aff2dd1c57dbb2b60ee5440663363a18296d`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:56cd37cbba16d0cd7c0953e68fda20e7a5175fdbdc14c825e1c2de798be11e0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6483078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd07e58c784ec01ef2e5839d3b5c42586289db593bd630b1576ee633b70b8ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 14:03:43 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 14:03:44 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 14:04:50 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 14:04:51 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 14:04:52 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 14:04:53 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 14:05:37 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 14:05:38 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 14:05:39 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 14:05:41 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 14:05:42 GMT
USER [notary]
# Fri, 16 Nov 2018 14:05:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 14:05:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 14:05:44 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcecc434954cb441a0645d3ab3fdd36bfc50b76d100420620b4a39edd514bc5`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185475efc560ed8aa620cbbaa0c734dc82b8e1ab2e930d389931cb450b41d8`  
		Last Modified: Fri, 16 Nov 2018 14:06:54 GMT  
		Size: 4.4 MB (4381099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837517a3ba064c5a3a2e9df51072c03f5070bf53cd47c332d388f373b265785`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f52f0b5b7a9c30d255a32b4ce4b2642e9c437f725e39bd01f3990d1b9f2e099`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d16c45284b5dced5884548f8c068b5a555ba98bd1f6228c24bd94aadfda7be`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1` - linux; ppc64le

```console
$ docker pull notary@sha256:f97b1f4921cd249191c3f5f263b09c5c007586e4231d3e3ba25e932c4251efae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6577287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d868512d6c8da0a9f1faf54c4b6a4f335c2137d191f0e52cac9f9c4cfee9ad36`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:14:06 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 13:14:06 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 13:14:57 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 13:14:59 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 13:15:00 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 13:15:00 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 13:15:21 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 13:15:22 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 13:15:23 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 13:15:27 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 13:15:28 GMT
USER [notary]
# Fri, 16 Nov 2018 13:15:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 13:15:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 13:15:40 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d9a6a0d2b6575b14a62cd10dec4e119e29613c5f4e82c4d9f30410ccaa5abf`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc4f7e919dc95400fb08be5fbc29c6fcac427c750ca185495d3cb1a1409808`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 4.4 MB (4379811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15436c9d76d208d40408b2a96bb11444abb48c500feff28533cb0456b5a0f61a`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26e244764b32b53b7f81b4e9e137efb55e895bb88f2193471e029121bc4b2f`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd54b137989765eb402e8f45c32781c48580876c5fcddb32e58de5e4c4b470c6`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
