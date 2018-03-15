## `influxdb:meta`

```console
$ docker pull influxdb@sha256:f3a58b661d75c847ec9fe7808b0bf99795fbc941b79fc5849fda14a9062d070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:7d47c5f93ce1ded393432ac566f6b24d8cf9d6b9cd1c5c1cfdb6288d96312b83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71774879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81dd3ab986d53ebe0801523bc26c7c359fc0acdae50a0df74370e4fb5419dd17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:53 GMT
ENV INFLUXDB_VERSION=1.5.0-c1.5.0
# Thu, 15 Mar 2018 04:45:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Thu, 15 Mar 2018 04:45:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Thu, 15 Mar 2018 04:45:19 GMT
EXPOSE 8091/tcp
# Thu, 15 Mar 2018 04:45:19 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:45:20 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Thu, 15 Mar 2018 04:45:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:45:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036dd14784653e652abbfb45520a651a2a13721833836034ad393d2a194547a`  
		Last Modified: Thu, 15 Mar 2018 04:48:29 GMT  
		Size: 11.2 MB (11192834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa97c16159e3c7ecbb24eed39a80c12834ac00fe8d88df3af75fdce112da1cfb`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8593165470171b05716a5d1bcb790ad8cc5fbf4817e0067854eaa7ada8f95695`  
		Last Modified: Thu, 15 Mar 2018 04:48:27 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
