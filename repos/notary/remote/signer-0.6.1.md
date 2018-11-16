## `notary:signer-0.6.1`

```console
$ docker pull notary@sha256:916816dc358b379cb0f44fc181fda763136e5424b8e5d663fee475662ed8accb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

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
