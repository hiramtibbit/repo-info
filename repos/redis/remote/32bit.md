## `redis:32bit`

```console
$ docker pull redis@sha256:4eb0d482ceab8ec980192c89adfa2e3d1480454e93edb393ac16518b197b33d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `redis:32bit` - linux; amd64

```console
$ docker pull redis@sha256:d9c0c157796eddf77aa2e549a80dda1d529ef50067d19836c147086d5daee87d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36540346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e64722b4767a7ea45e151d0837935a91951ff9399773aa2bee90f9b4eaab4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["redis-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:15:28 GMT
RUN groupadd -r redis && useradd -r -g redis redis
# Wed, 27 Jun 2018 01:15:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 01:15:50 GMT
RUN set -ex; 		fetchDeps=" 		ca-certificates 		dirmngr 		gnupg 		wget 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 	chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_VERSION=4.0.10
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_URL=http://download.redis.io/releases/redis-4.0.10.tar.gz
# Wed, 27 Jun 2018 01:17:51 GMT
ENV REDIS_DOWNLOAD_SHA=1db67435a704f8d18aec9b9637b373c34aa233d65b6e174bdac4c1b161f38ca4
# Wed, 27 Jun 2018 01:18:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		libc6-i386 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:19:21 GMT
RUN set -ex; 		buildDeps=' 		wget 				gcc 		gcc-multilib 		libc6-dev-i386 		make 	'; 	apt-get update; 	apt-get install -y $buildDeps --no-install-recommends; 	rm -rf /var/lib/apt/lists/*; 		wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL"; 	echo "$REDIS_DOWNLOAD_SHA *redis.tar.gz" | sha256sum -c -; 	mkdir -p /usr/src/redis; 	tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1; 	rm redis.tar.gz; 		grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 1$' /usr/src/redis/src/server.h; 	sed -ri 's!^(#define CONFIG_DEFAULT_PROTECTED_MODE) 1$!\1 0!' /usr/src/redis/src/server.h; 	grep -q '^#define CONFIG_DEFAULT_PROTECTED_MODE 0$' /usr/src/redis/src/server.h; 		make -C /usr/src/redis -j "$(nproc)" 32bit; 	make -C /usr/src/redis install; 		rm -r /usr/src/redis; 		apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 01:19:22 GMT
RUN mkdir /data && chown redis:redis /data
# Wed, 27 Jun 2018 01:19:23 GMT
VOLUME [/data]
# Wed, 27 Jun 2018 01:19:23 GMT
WORKDIR /data
# Wed, 27 Jun 2018 01:19:23 GMT
COPY file:9c29fbe8374a97f9c2d953c9c8b7224554607eeb7a610a930844f2bec678265c in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:19:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:19:24 GMT
EXPOSE 6379/tcp
# Wed, 27 Jun 2018 01:19:24 GMT
CMD ["redis-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259238e792d86e23dab13fbcfcadf090333328ad9f80894544316437461f0d1b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78399601c709f0e252523e534db03152a1b3f017c9f7c756d68791ef07bc5d0b`  
		Last Modified: Wed, 27 Jun 2018 01:19:50 GMT  
		Size: 941.5 KB (941493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70936999cfd008308909792dea4e16280e691dabcce0d6e0b3aefc99878e0db4`  
		Last Modified: Wed, 27 Jun 2018 01:21:48 GMT  
		Size: 4.8 MB (4848269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb8b6edf0ed18495d476d17e5020e68d919ddafe18f4438df4bcc5515f5031`  
		Last Modified: Wed, 27 Jun 2018 01:21:49 GMT  
		Size: 8.3 MB (8251365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07090b435cd512f6e613f392efeb880d03c4df7ea10e7c9054cca67ceab973c3`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 98.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a4e18b25e6f5fafcd310251773b647dca71b6a2d21b9bd572d4f9118accd6e`  
		Last Modified: Wed, 27 Jun 2018 01:21:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
