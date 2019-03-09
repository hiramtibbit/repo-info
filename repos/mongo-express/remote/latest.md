## `mongo-express:latest`

```console
$ docker pull mongo-express@sha256:630f6ad8af9af359ef48209b8bca926db56f88ff329b3dc1c8e8670abcc9b570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `mongo-express:latest` - linux; amd64

```console
$ docker pull mongo-express@sha256:9a1ec9b93c59190e792b2328fe003d5234ec324e9e106e7ed199a62ed396c352
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 MB (36015769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376d1d9e09954917b9d53d7550728ca45eab173b8e039ff9cee40e672a99f882`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:48:28 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 01:19:02 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 01:19:02 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 01:19:06 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 01:19:07 GMT
CMD ["node"]
# Fri, 08 Mar 2019 05:22:16 GMT
RUN apk add --no-cache bash tini
# Fri, 08 Mar 2019 05:22:16 GMT
EXPOSE 8081
# Fri, 08 Mar 2019 05:22:17 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Fri, 08 Mar 2019 05:22:17 GMT
ENV MONGO_EXPRESS=0.49.0
# Fri, 08 Mar 2019 05:22:40 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Fri, 08 Mar 2019 05:22:41 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Fri, 08 Mar 2019 05:22:42 GMT
WORKDIR /node_modules/mongo-express
# Fri, 08 Mar 2019 05:22:43 GMT
RUN cp config.default.js config.js
# Fri, 08 Mar 2019 05:22:43 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:22:44 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d566d24cf388bd16d96a8e5e6ae33a5a47916f36e8744d3d4b78c3ea7bcec9`  
		Last Modified: Fri, 08 Mar 2019 02:58:02 GMT  
		Size: 18.9 MB (18871091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd3a030a46142ea43b86902821374f95626b699f43bca04218f3d21b38f27b4`  
		Last Modified: Fri, 08 Mar 2019 02:57:57 GMT  
		Size: 1.3 MB (1328418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed43f59bd58bec541f6882a01a1212aeab861bbb295b9d632eda566a472b01f7`  
		Last Modified: Fri, 08 Mar 2019 05:22:58 GMT  
		Size: 1.2 MB (1181709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5504fda79f5286f030192b739f516a0d454310fce122f4b219b03e8dcfb451f0`  
		Last Modified: Fri, 08 Mar 2019 05:23:01 GMT  
		Size: 12.4 MB (12424037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ab72a7d5b97867c179dfcd8a9659988e3f6bd89db1e69f8c2e67873715ad43`  
		Last Modified: Fri, 08 Mar 2019 05:22:56 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dd12c751cff59eb59762199b7c7d37c9ab0b39f9de436f923452e0247405d7`  
		Last Modified: Fri, 08 Mar 2019 05:22:57 GMT  
		Size: 2.8 KB (2765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo-express:latest` - linux; arm64 variant v8

```console
$ docker pull mongo-express@sha256:0b9ada7254939b30e262b1817a60fed4e419462c5a7676484f71696561b833be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34802707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:180f7e26d577bf06ffe90c37019a517af8a7411737ce8b311a1e3d5b8ec1ff8f`
-	Entrypoint: `["tini","--","\/docker-entrypoint.sh"]`
-	Default Command: `["mongo-express"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:28:32 GMT
ENV NODE_VERSION=8.15.1
# Fri, 08 Mar 2019 09:58:03 GMT
RUN addgroup -g 1000 node     && adduser -u 1000 -G node -s /bin/sh -D node     && apk add --no-cache         libstdc++     && apk add --no-cache --virtual .build-deps         binutils-gold         curl         g++         gcc         gnupg         libgcc         linux-headers         make         python   && for key in     94AE36675C464D64BAFA68DD7434390BDBE9B9C5     FD3A5288F042B6850C66B31F09FE44734EB7990E     71DCFD284A79C3B38668286BC97EC7A07EDE3FC1     DD8F2338BAE7501E3DD5AC78C273792F7D83545D     C4F0DFFF4E8C1A8236409D08E73BC641CC11F4C8     B9AE9905FFD7803F25714661B63B535A4C206CA9     77984A986EBC2AA786BC0F66B01FBB92821C587A     8FCCA13FEF1D0C2E91008E09770F7A9A5AE15600     4ED778F539E3634C779C87C6D7062848A1AB005C     A48C2BEE680E841632CD4E44F07496B3EB3C1762     B9E2F5981AA6E0CD28160D9FF13993A75599653C   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.xz"     && curl -fsSLO --compressed "https://nodejs.org/dist/v$NODE_VERSION/SHASUMS256.txt.asc"     && gpg --batch --decrypt --output SHASUMS256.txt SHASUMS256.txt.asc     && grep " node-v$NODE_VERSION.tar.xz\$" SHASUMS256.txt | sha256sum -c -     && tar -xf "node-v$NODE_VERSION.tar.xz"     && cd "node-v$NODE_VERSION"     && ./configure     && make -j$(getconf _NPROCESSORS_ONLN)     && make install     && apk del .build-deps     && cd ..     && rm -Rf "node-v$NODE_VERSION"     && rm "node-v$NODE_VERSION.tar.xz" SHASUMS256.txt.asc SHASUMS256.txt
# Fri, 08 Mar 2019 09:58:04 GMT
ENV YARN_VERSION=1.12.3
# Fri, 08 Mar 2019 09:58:12 GMT
RUN apk add --no-cache --virtual .build-deps-yarn curl gnupg tar   && for key in     6A010C5166006599AA17F08146C2130DFD2497F5   ; do     gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://ipv4.pool.sks-keyservers.net --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz"   && curl -fsSLO --compressed "https://yarnpkg.com/downloads/$YARN_VERSION/yarn-v$YARN_VERSION.tar.gz.asc"   && gpg --batch --verify yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && mkdir -p /opt   && tar -xzf yarn-v$YARN_VERSION.tar.gz -C /opt/   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarn /usr/local/bin/yarn   && ln -s /opt/yarn-v$YARN_VERSION/bin/yarnpkg /usr/local/bin/yarnpkg   && rm yarn-v$YARN_VERSION.tar.gz.asc yarn-v$YARN_VERSION.tar.gz   && apk del .build-deps-yarn
# Fri, 08 Mar 2019 09:58:12 GMT
CMD ["node"]
# Sat, 09 Mar 2019 13:08:10 GMT
RUN apk add --no-cache bash tini
# Sat, 09 Mar 2019 13:08:11 GMT
EXPOSE 8081
# Sat, 09 Mar 2019 13:08:12 GMT
ENV ME_CONFIG_EDITORTHEME=default ME_CONFIG_MONGODB_SERVER=mongo ME_CONFIG_MONGODB_ENABLE_ADMIN=true ME_CONFIG_BASICAUTH_USERNAME= ME_CONFIG_BASICAUTH_PASSWORD= VCAP_APP_HOST=0.0.0.0
# Sat, 09 Mar 2019 13:08:14 GMT
ENV MONGO_EXPRESS=0.49.0
# Sat, 09 Mar 2019 13:08:56 GMT
RUN npm install mongo-express@$MONGO_EXPRESS
# Sat, 09 Mar 2019 13:08:58 GMT
COPY file:58292318f4d4eebb73af5f654a480f4db1e1bb8a29365676b6ccf54504b61984 in / 
# Sat, 09 Mar 2019 13:08:59 GMT
WORKDIR /node_modules/mongo-express
# Sat, 09 Mar 2019 13:09:02 GMT
RUN cp config.default.js config.js
# Sat, 09 Mar 2019 13:09:03 GMT
ENTRYPOINT ["tini" "--" "/docker-entrypoint.sh"]
# Sat, 09 Mar 2019 13:09:04 GMT
CMD ["mongo-express"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e1f7f5f2e0fd0718e15d67f2c01a113cffb3e877e321b129a1c5e5c2514890`  
		Last Modified: Fri, 08 Mar 2019 11:53:05 GMT  
		Size: 17.8 MB (17825945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69674368050f12a34ac53a2969ab773a455fa7fd867380570cb87a5a4b6d340c`  
		Last Modified: Fri, 08 Mar 2019 11:52:56 GMT  
		Size: 1.3 MB (1328419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a38e1b285e5b95fd710b3a628c2cb28fc09db23d2091da9ea6c6719667b07c`  
		Last Modified: Sat, 09 Mar 2019 13:09:26 GMT  
		Size: 1.1 MB (1121143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab68c692fbdcff95b72c41c2ba6b8de7b5ad3c3849a1813ae75c789cba47892`  
		Last Modified: Sat, 09 Mar 2019 13:09:30 GMT  
		Size: 12.4 MB (12423901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de04a07958362b6f44ae943ee295e15cbc00dee1731a024b65b05542910e76fe`  
		Last Modified: Sat, 09 Mar 2019 13:09:24 GMT  
		Size: 573.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80452999cd7c7b409106def63dbe710467e4f8c9524949efb8bfd769990a5d0`  
		Last Modified: Sat, 09 Mar 2019 13:09:24 GMT  
		Size: 2.8 KB (2764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
