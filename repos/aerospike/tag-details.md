<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.5.1.8`](#aerospike4518)
-	[`aerospike:4.5.2.3`](#aerospike4523)
-	[`aerospike:4.5.3.3`](#aerospike4533)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.5.1.8`

```console
$ docker pull aerospike@sha256:ab3120a701d8419cb8f7daf567b67a452b1568d0f9764e132af16c88e99f73a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:6c0566626057d8d3e90899105ad0853e36cbc1e1c9189f9d0b3844cec6465b5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48679757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15adcc295b1778a07e9e9c3ca097f24732bfe3764ba5a89fee7833166b85f4b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Thu, 13 Jun 2019 21:20:09 GMT
ENV AEROSPIKE_VERSION=4.5.1.8
# Thu, 13 Jun 2019 21:20:10 GMT
ENV AEROSPIKE_SHA256=b92e885a563b6322214a9cfb66e7542c1bd4dfb9b1f5244eaf6523d10989b0de
# Thu, 13 Jun 2019 21:20:26 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 13 Jun 2019 21:20:26 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Thu, 13 Jun 2019 21:20:27 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Thu, 13 Jun 2019 21:20:27 GMT
VOLUME [/opt/aerospike/data]
# Thu, 13 Jun 2019 21:20:27 GMT
EXPOSE 3000 3001 3002 3003
# Thu, 13 Jun 2019 21:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 21:20:27 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83887fb8f0352a55ed6e38f5afca76f6489710c6012f7383d0ef526dbcac3e6`  
		Last Modified: Thu, 13 Jun 2019 21:20:58 GMT  
		Size: 26.2 MB (26188462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed8ec1ed3268978ac2f78c0f2a86be7fa4e7fdd24682a0ebc99301fba86fd5d`  
		Last Modified: Thu, 13 Jun 2019 21:20:54 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9354ca7c5f67f2164118f70891176b6670ac5a3ee735d4c61e6fb70b48bbe6fd`  
		Last Modified: Thu, 13 Jun 2019 21:20:54 GMT  
		Size: 883.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.2.3`

```console
$ docker pull aerospike@sha256:41cc2befd6ee79171f8ce5d085f19dc2166c7468730ca68a85ef30e5ee923c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.2.3` - linux; amd64

```console
$ docker pull aerospike@sha256:d6214d4635c0abcac1745b849a3d53550200c115bf62ba5be41ce4470f9f449b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48691175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5287aa4af36a2e56eaee378dba30bd644ac2d8a6275681ec93816f701f62d0d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Thu, 13 Jun 2019 21:19:50 GMT
ENV AEROSPIKE_VERSION=4.5.2.3
# Thu, 13 Jun 2019 21:19:50 GMT
ENV AEROSPIKE_SHA256=84e86aa22cb10e595e8b761ff42397e409574eaea59ab4095b273a81a70bfdfb
# Thu, 13 Jun 2019 21:20:06 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 13 Jun 2019 21:20:06 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Thu, 13 Jun 2019 21:20:06 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Thu, 13 Jun 2019 21:20:06 GMT
VOLUME [/opt/aerospike/data]
# Thu, 13 Jun 2019 21:20:07 GMT
EXPOSE 3000 3001 3002 3003
# Thu, 13 Jun 2019 21:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 21:20:07 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c541b3b191d78de646d05bc19fdd156225bec1926ef8d4d7317e35df6c0f5a`  
		Last Modified: Thu, 13 Jun 2019 21:20:49 GMT  
		Size: 26.2 MB (26199877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403df43e2b6cd2ebd112930f124ba74b8fc2a22d813347b7e8395ca536d551b0`  
		Last Modified: Thu, 13 Jun 2019 21:20:45 GMT  
		Size: 1.1 KB (1112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af0343a8a95e6222a30e725339f0bb2b6df165c190728baf54f2999aeabbaaf`  
		Last Modified: Thu, 13 Jun 2019 21:20:45 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.3.3`

```console
$ docker pull aerospike@sha256:f5913a53877f753e9f71ca56069f67a69f8027ac1fad6c7b3c74590ed5c01b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.3.3` - linux; amd64

```console
$ docker pull aerospike@sha256:3da45520f9af2733257ab4828b6fbc04616eebd4348797c3331f64691e76a0dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51370623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92238a4015f327b1dd9e2ef82947030bccd80023e4484b0353459dda1b5bd6d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Thu, 13 Jun 2019 21:19:23 GMT
ENV AEROSPIKE_VERSION=4.5.3.3
# Thu, 13 Jun 2019 21:19:23 GMT
ENV AEROSPIKE_SHA256=840eec1223319bc82b8f7db6a155631bc2f991b5de975c45042c90ce39b3d058
# Thu, 13 Jun 2019 21:19:44 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 13 Jun 2019 21:19:45 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Thu, 13 Jun 2019 21:19:45 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Thu, 13 Jun 2019 21:19:45 GMT
VOLUME [/opt/aerospike/data]
# Thu, 13 Jun 2019 21:19:45 GMT
EXPOSE 3000 3001 3002 3003
# Thu, 13 Jun 2019 21:19:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 21:19:45 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fd25d7682237e6fcb71bd9120ae412a15b4f2e9639440e3d0d2569f4390a0c`  
		Last Modified: Thu, 13 Jun 2019 21:20:41 GMT  
		Size: 28.9 MB (28879324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357bbdf7da4fd7a8ff5c05471c90e41dcce4d7c65f1ee3b4d262c719aa45303b`  
		Last Modified: Thu, 13 Jun 2019 21:20:36 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81bd5cbe2e7e09a3d20a92857964a4e088a4e7a236ce824ba4b2c11816875df`  
		Last Modified: Thu, 13 Jun 2019 21:20:36 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:f5913a53877f753e9f71ca56069f67a69f8027ac1fad6c7b3c74590ed5c01b9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:3da45520f9af2733257ab4828b6fbc04616eebd4348797c3331f64691e76a0dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51370623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92238a4015f327b1dd9e2ef82947030bccd80023e4484b0353459dda1b5bd6d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Thu, 13 Jun 2019 21:19:23 GMT
ENV AEROSPIKE_VERSION=4.5.3.3
# Thu, 13 Jun 2019 21:19:23 GMT
ENV AEROSPIKE_SHA256=840eec1223319bc82b8f7db6a155631bc2f991b5de975c45042c90ce39b3d058
# Thu, 13 Jun 2019 21:19:44 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Thu, 13 Jun 2019 21:19:45 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Thu, 13 Jun 2019 21:19:45 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Thu, 13 Jun 2019 21:19:45 GMT
VOLUME [/opt/aerospike/data]
# Thu, 13 Jun 2019 21:19:45 GMT
EXPOSE 3000 3001 3002 3003
# Thu, 13 Jun 2019 21:19:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 21:19:45 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fd25d7682237e6fcb71bd9120ae412a15b4f2e9639440e3d0d2569f4390a0c`  
		Last Modified: Thu, 13 Jun 2019 21:20:41 GMT  
		Size: 28.9 MB (28879324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357bbdf7da4fd7a8ff5c05471c90e41dcce4d7c65f1ee3b4d262c719aa45303b`  
		Last Modified: Thu, 13 Jun 2019 21:20:36 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81bd5cbe2e7e09a3d20a92857964a4e088a4e7a236ce824ba4b2c11816875df`  
		Last Modified: Thu, 13 Jun 2019 21:20:36 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
