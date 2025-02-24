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
