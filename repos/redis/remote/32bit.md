## `redis:32bit`

```console
$ docker pull redis@sha256:a36a6f3d1fe5f0ada75d75c78e404ef83b1fb1e1d423954b25ec0afcd282cc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:707eb6debe502d67ac78d4fc566a48af12d697d2e140a3af4c0187d39700c0a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 MB (39476077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ecf30631c37c2cc7869fbc89128db8096d778698921aa09c0b2fa8207607348`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:44:04 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 23 Jan 2019 04:44:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 04:44:20 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 04:44:21 GMT
ENV REDIS_VERSION=5.0.3
# Wed, 23 Jan 2019 04:44:21 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-5.0.3.tar.gz
# Wed, 23 Jan 2019 04:44:21 GMT
ENV REDIS_DOWNLOAD_SHA=e290b4ddf817b26254a74d5d564095b11f9cd20d8f165459efa53eb63cd93e02
# Wed, 23 Jan 2019 04:45:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:46:50 GMT
RUN set -ex; 		buildDeps=' 		ca-certificates 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 23 Jan 2019 04:46:51 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 23 Jan 2019 04:46:51 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 04:46:51 GMT
WORKDIR /data
# Wed, 23 Jan 2019 04:46:52 GMT
COPY file:df205a0ef6e6df8947ce0a7ae9e37b6a5588035647f38a49b8b07321003a8a01 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:46:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:46:52 GMT
EXPOSE 6379
# Wed, 23 Jan 2019 04:46:52 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdf7fb3ec49bc03a9c83441f87b47bbb90b18d79916575989900db623d154b0`  
		Last Modified: Wed, 23 Jan 2019 04:49:32 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd5dbe7bfa7bc2917af2b6a213af3b67c1d53790446ee7518e5d927370ab92f`  
		Last Modified: Wed, 23 Jan 2019 04:49:32 GMT  
		Size: 941.3 KB (941349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746a210ca1750f015c13f1e8ac8bb7cbb85791ab7100b5dd51b4849bfc1fa073`  
		Last Modified: Wed, 23 Jan 2019 04:49:43 GMT  
		Size: 4.8 MB (4848277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ea1123121fe001efcd10f987a86fe5364fc2517b9bcc70788dc89cea167606`  
		Last Modified: Wed, 23 Jan 2019 04:49:44 GMT  
		Size: 11.2 MB (11183484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d24871c750722615ce342508ee0913516fb906eb4bc881273ce6d5c4fb14bf8`  
		Last Modified: Wed, 23 Jan 2019 04:49:42 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042fa8a0990ce7cb3a8c59b2ee13a8091f95f1b1e6e10e16948a1234d23dc07`  
		Last Modified: Wed, 23 Jan 2019 04:49:42 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
