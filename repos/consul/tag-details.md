<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.5`](#consul105)
-	[`consul:latest`](#consullatest)

## `consul:1.0.5`

**does not exist** (yet?)

## `consul:latest`

```console
$ docker pull consul@sha256:82bf82113af0b66a36a17b317d6224c962f20aa876101b3f2e92c8c7c8035ebd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:ce431f3c91213b967b05a0be2b9356e9c4c7da27e6858051eea54d155fd4948f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14007787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdbd79f2a13ed16e2ed7dd6232c713ae5c637878521790ad3efc74abde4debe6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:53:54 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Wed, 24 Jan 2018 18:50:37 GMT
ENV CONSUL_VERSION=1.0.3
# Wed, 24 Jan 2018 18:50:37 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Jan 2018 18:50:38 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Jan 2018 18:50:45 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 24 Jan 2018 18:50:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Jan 2018 18:50:46 GMT
VOLUME [/consul/data]
# Wed, 24 Jan 2018 18:50:46 GMT
EXPOSE 8300/tcp
# Wed, 24 Jan 2018 18:50:47 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Wed, 24 Jan 2018 18:50:47 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Wed, 24 Jan 2018 18:50:47 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Jan 2018 18:50:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Jan 2018 18:50:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed98c91d57d7fffe203d1118c22d8ab3eed80443d4ddbaf1b211674bfc1d7b91`  
		Last Modified: Wed, 24 Jan 2018 18:51:03 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9164d24fd6124874c4330696bb4bc71d27d2ba0d409b4544163f91be1bdef89d`  
		Last Modified: Wed, 24 Jan 2018 18:51:05 GMT  
		Size: 11.9 MB (11939173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b08b1cab22ef47e26bcf554d162567e69b4a76d654f9fecaf528fb792e2e179`  
		Last Modified: Wed, 24 Jan 2018 18:51:03 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c34f6cf78b6329d6dc40369c10e1b0750388b95fb8a8d302984a10a5a1c91e2`  
		Last Modified: Wed, 24 Jan 2018 18:51:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
