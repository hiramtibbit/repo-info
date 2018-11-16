## `notary:server`

```console
$ docker pull notary@sha256:f9a7151f0789b5d037b06f9462816f8074b3d0bc09336cf8229256ea07ed1580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6

### `notary:server` - linux; arm variant v6

```console
$ docker pull notary@sha256:dffc7d8462246852d4f83d0368e05bbc07a975b0d58056bc6ee34c9ac5134d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8c33b9706f6fa11a33c4d9bf45d71775229857aaf53b659a392e4603cfd64f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

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
# Fri, 16 Nov 2018 09:06:21 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 09:06:21 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 09:06:22 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 09:06:50 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 09:06:51 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 09:06:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 09:06:52 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 09:06:53 GMT
USER [notary]
# Fri, 16 Nov 2018 09:06:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 09:06:53 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 09:06:54 GMT
CMD ["notary-server" "--help"]
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
	-	`sha256:7ca69ad328f7f2da92bc49a70f5f65991698e3e152145b1bd0c2c5269c7e5e49`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a21f9aaad293a6ce1ecf3c55d0302ef4f7267eabea685d0b352ba399088498`  
		Last Modified: Fri, 16 Nov 2018 09:07:53 GMT  
		Size: 4.7 MB (4685008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94645bc95af0c3b2c067209a693ec6a4739ebcddd5a36fb8ee2a164073b77a3d`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5687aa236366773f15623bb09c50191ead76ad805d1265d32155c71cdc2a2`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63a3f1fc475297eb768a7d572fc814f88d9e8221b0f6dfea46595025bed793`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
