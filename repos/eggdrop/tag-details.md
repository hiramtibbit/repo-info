<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.4`](#eggdrop184)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:f139577b24c7b58b4fded1099574c654d671ee32bf0722dd3d550b8447e98e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:04817e65c95f38f6bb1fb669064fb0a8e7f3fd5adf5e840546381b61f47eefa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64c18feea1e23c89fd2158b5fd79271a4bdc5983fba2aaf341053a09649e6f0`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:47:47 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 02:47:48 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 02:47:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 02:49:49 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 02:51:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4.tar.gz.asc eggdrop-1.8.4.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4.tar.gz.asc   && tar -zxvf eggdrop-1.8.4.tar.gz   && rm eggdrop-1.8.4.tar.gz   && ( cd eggdrop-1.8.4     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 02:51:18 GMT
ENV NICK=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV SERVER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 02:51:19 GMT
ENV OWNER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 02:51:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 02:51:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 02:51:20 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 02:51:20 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 02:51:21 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 02:51:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 02:51:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82912a788c2f6120ebbc3d22526200b675392adcd31b5066f625ab176cd0beae`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ac5e0e765a7a6291e39f11b1a53339da0594768640890795bf3e061643bc8`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 8.8 KB (8849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deb545470e476a450e0800548c76cde36cd64892ea7ef206ff9282944ea11d4`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 4.4 MB (4402994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483d607a924d2d0df2d2a825a4a2eea5bf9c75ff42e09f8aeac177b9c85da98`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 3.0 MB (3049835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e6dc420569f2a88bb8f646fe6f2839eb76493853127e00af940c3badf63075`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfb0e4fe6649224f435a264bf4f4f60cd28d1bf9bec8ed57a9b80f4d0a292b`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.4`

```console
$ docker pull eggdrop@sha256:f139577b24c7b58b4fded1099574c654d671ee32bf0722dd3d550b8447e98e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.4` - linux; amd64

```console
$ docker pull eggdrop@sha256:04817e65c95f38f6bb1fb669064fb0a8e7f3fd5adf5e840546381b61f47eefa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64c18feea1e23c89fd2158b5fd79271a4bdc5983fba2aaf341053a09649e6f0`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:47:47 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 02:47:48 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 02:47:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 02:49:49 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 02:51:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4.tar.gz.asc eggdrop-1.8.4.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4.tar.gz.asc   && tar -zxvf eggdrop-1.8.4.tar.gz   && rm eggdrop-1.8.4.tar.gz   && ( cd eggdrop-1.8.4     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 02:51:18 GMT
ENV NICK=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV SERVER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 02:51:19 GMT
ENV OWNER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 02:51:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 02:51:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 02:51:20 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 02:51:20 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 02:51:21 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 02:51:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 02:51:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82912a788c2f6120ebbc3d22526200b675392adcd31b5066f625ab176cd0beae`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ac5e0e765a7a6291e39f11b1a53339da0594768640890795bf3e061643bc8`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 8.8 KB (8849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deb545470e476a450e0800548c76cde36cd64892ea7ef206ff9282944ea11d4`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 4.4 MB (4402994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483d607a924d2d0df2d2a825a4a2eea5bf9c75ff42e09f8aeac177b9c85da98`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 3.0 MB (3049835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e6dc420569f2a88bb8f646fe6f2839eb76493853127e00af940c3badf63075`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfb0e4fe6649224f435a264bf4f4f60cd28d1bf9bec8ed57a9b80f4d0a292b`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:3e83df816c914f190809721597bdf8a85eb8bebf870f88923ed9c7875b355fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:ca7654e4433e1a532b955156ce0c3a458fb3ac96a2cde4142823b5141e8ed17a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13912913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98435cd3bd5b8ed648143cf65f4b621b002c9cb908ec5549e4f6ce6f21fe3f77`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:47:47 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 02:47:48 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 02:47:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 02:47:50 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Fri, 08 Mar 2019 02:47:50 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Fri, 08 Mar 2019 02:47:53 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 02:49:29 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 02:49:29 GMT
ENV NICK=
# Fri, 08 Mar 2019 02:49:30 GMT
ENV SERVER=
# Fri, 08 Mar 2019 02:49:30 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 02:49:30 GMT
ENV OWNER=
# Fri, 08 Mar 2019 02:49:30 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 02:49:30 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 02:49:31 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 02:49:31 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 02:49:31 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 02:49:32 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 02:49:32 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 02:49:32 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82912a788c2f6120ebbc3d22526200b675392adcd31b5066f625ab176cd0beae`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ac5e0e765a7a6291e39f11b1a53339da0594768640890795bf3e061643bc8`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 8.8 KB (8849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58607aaa36ac74ec53c76745c9929e20a81e8390377cfb39ff398818128045c`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 4.4 MB (4403038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c889d43ff3d83ac9d21f80d17ffc6ae7bcad586e1d2a04db0cd9e92a108bc3`  
		Last Modified: Fri, 08 Mar 2019 02:51:40 GMT  
		Size: 7.4 MB (7390086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90feac813413a3509adf3360a844ca4aa4ef215beb392c1d85895a5c20d78e8f`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5a5a9b784d06d2647dc0130cfbd4b789b2adb649b331fecebbce1d8ac5d470`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 700.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:ef4b7a2fb5538e3c4168fa35603d00e86fa9b2b1bbb62f832e1922af7bc65a1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13355068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7f255ce7d69f9d875e777edd06a99c279be63fc963a3abd647bfea434e4ded`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:07:05 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 04:07:07 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 04:07:08 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 04:07:08 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Fri, 08 Mar 2019 04:07:09 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Fri, 08 Mar 2019 04:07:13 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 04:08:52 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 04:08:53 GMT
ENV NICK=
# Fri, 08 Mar 2019 04:08:53 GMT
ENV SERVER=
# Fri, 08 Mar 2019 04:08:54 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 04:08:54 GMT
ENV OWNER=
# Fri, 08 Mar 2019 04:08:54 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 04:08:55 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 04:08:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 04:08:56 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 04:08:56 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 04:08:57 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 04:08:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 04:08:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5d5e08f0e0467065ee76addb147c3bc9a18999d043e819a8d3b9678d9a04a4`  
		Last Modified: Fri, 08 Mar 2019 04:09:10 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a613a6e335a51679ca39244c8bf0e817a4d225c9b499ab7c1540b63459e76f4b`  
		Last Modified: Fri, 08 Mar 2019 04:09:08 GMT  
		Size: 9.0 KB (9016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a66800d3e65e57c899036056bbbd4dcab9d3c68f81553aa62ab98f54ef34e1b`  
		Last Modified: Fri, 08 Mar 2019 04:09:10 GMT  
		Size: 3.9 MB (3946097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e731a2aa0fafab8d442650a575c7bafe633ba337292396a35aa5cdde73ae7b3`  
		Last Modified: Fri, 08 Mar 2019 04:09:11 GMT  
		Size: 7.3 MB (7345841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258e46b273871ac8fceacf0dd493b88b119262a7f473c5a1b6c5d78ca184ccf`  
		Last Modified: Fri, 08 Mar 2019 04:09:08 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c07b83d0686dda4753394b771bdf514b6db9bf3b005d1342b06c2a81e0f0ec`  
		Last Modified: Fri, 08 Mar 2019 04:09:08 GMT  
		Size: 701.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:4a545c3fce1c5c93a4d2ff78ff73de4a0cc8ac3baf53e6082cb58464d4c3565d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13283576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ff82e29d56ca8e7f69b8fd45bbd6e4a8ba621c7e45ab56c640699003a93074c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:15:32 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 04:15:34 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 04:15:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 04:15:37 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Fri, 08 Mar 2019 04:15:38 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Fri, 08 Mar 2019 04:15:43 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 04:17:52 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 04:17:53 GMT
ENV NICK=
# Fri, 08 Mar 2019 04:17:53 GMT
ENV SERVER=
# Fri, 08 Mar 2019 04:17:54 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 04:17:55 GMT
ENV OWNER=
# Fri, 08 Mar 2019 04:17:56 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 04:17:56 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 04:17:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 04:17:58 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 04:17:59 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 04:17:59 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 04:18:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 04:18:01 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119fc442ecf2b49fd9ea267b98086b10b01f91b6ddbf0cebb046d9373d31a56a`  
		Last Modified: Fri, 08 Mar 2019 04:18:19 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3a81b846053ac2c11f412f6e8a1931ae6a0a24e8bf4784b082669858934c73`  
		Last Modified: Fri, 08 Mar 2019 04:18:18 GMT  
		Size: 9.0 KB (8969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f3c9e5384b33ea07d8f213d76a43d357d06f73076301b481f15d23e2142e13`  
		Last Modified: Fri, 08 Mar 2019 04:18:20 GMT  
		Size: 3.9 MB (3913297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ede2182b548f07365e21fdffa26764d3b3d13e466a49d76416f7be565591d8c`  
		Last Modified: Fri, 08 Mar 2019 04:18:21 GMT  
		Size: 7.4 MB (7358479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b831dd07225295a9fdf235e5e1b78d763f00b7e0cbcefb49443f33820101c265`  
		Last Modified: Fri, 08 Mar 2019 04:18:17 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3659958c66b75cf65a0efb444f896c91948b54dc89f2d892344f4f5715e78e2b`  
		Last Modified: Fri, 08 Mar 2019 04:18:18 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:f139577b24c7b58b4fded1099574c654d671ee32bf0722dd3d550b8447e98e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:04817e65c95f38f6bb1fb669064fb0a8e7f3fd5adf5e840546381b61f47eefa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64c18feea1e23c89fd2158b5fd79271a4bdc5983fba2aaf341053a09649e6f0`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:47:47 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 02:47:48 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 02:47:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 02:49:49 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 02:51:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4.tar.gz.asc eggdrop-1.8.4.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4.tar.gz.asc   && tar -zxvf eggdrop-1.8.4.tar.gz   && rm eggdrop-1.8.4.tar.gz   && ( cd eggdrop-1.8.4     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 02:51:18 GMT
ENV NICK=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV SERVER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 02:51:19 GMT
ENV OWNER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 02:51:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 02:51:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 02:51:20 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 02:51:20 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 02:51:21 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 02:51:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 02:51:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82912a788c2f6120ebbc3d22526200b675392adcd31b5066f625ab176cd0beae`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ac5e0e765a7a6291e39f11b1a53339da0594768640890795bf3e061643bc8`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 8.8 KB (8849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deb545470e476a450e0800548c76cde36cd64892ea7ef206ff9282944ea11d4`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 4.4 MB (4402994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483d607a924d2d0df2d2a825a4a2eea5bf9c75ff42e09f8aeac177b9c85da98`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 3.0 MB (3049835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e6dc420569f2a88bb8f646fe6f2839eb76493853127e00af940c3badf63075`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfb0e4fe6649224f435a264bf4f4f60cd28d1bf9bec8ed57a9b80f4d0a292b`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:f139577b24c7b58b4fded1099574c654d671ee32bf0722dd3d550b8447e98e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:04817e65c95f38f6bb1fb669064fb0a8e7f3fd5adf5e840546381b61f47eefa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e64c18feea1e23c89fd2158b5fd79271a4bdc5983fba2aaf341053a09649e6f0`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:47:47 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 08 Mar 2019 02:47:48 GMT
RUN adduser -S eggdrop
# Fri, 08 Mar 2019 02:47:50 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 08 Mar 2019 02:49:49 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 08 Mar 2019 02:51:18 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4.tar.gz.asc eggdrop-1.8.4.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4.tar.gz.asc   && tar -zxvf eggdrop-1.8.4.tar.gz   && rm eggdrop-1.8.4.tar.gz   && ( cd eggdrop-1.8.4     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 08 Mar 2019 02:51:18 GMT
ENV NICK=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV SERVER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV LISTEN=3333
# Fri, 08 Mar 2019 02:51:19 GMT
ENV OWNER=
# Fri, 08 Mar 2019 02:51:19 GMT
ENV USERFILE=eggdrop.user
# Fri, 08 Mar 2019 02:51:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 08 Mar 2019 02:51:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 08 Mar 2019 02:51:20 GMT
EXPOSE 3333
# Fri, 08 Mar 2019 02:51:20 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 08 Mar 2019 02:51:21 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 08 Mar 2019 02:51:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 08 Mar 2019 02:51:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82912a788c2f6120ebbc3d22526200b675392adcd31b5066f625ab176cd0beae`  
		Last Modified: Fri, 08 Mar 2019 02:51:39 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057ac5e0e765a7a6291e39f11b1a53339da0594768640890795bf3e061643bc8`  
		Last Modified: Fri, 08 Mar 2019 02:51:38 GMT  
		Size: 8.8 KB (8849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8deb545470e476a450e0800548c76cde36cd64892ea7ef206ff9282944ea11d4`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 4.4 MB (4402994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483d607a924d2d0df2d2a825a4a2eea5bf9c75ff42e09f8aeac177b9c85da98`  
		Last Modified: Fri, 08 Mar 2019 02:51:44 GMT  
		Size: 3.0 MB (3049835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e6dc420569f2a88bb8f646fe6f2839eb76493853127e00af940c3badf63075`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfb0e4fe6649224f435a264bf4f4f60cd28d1bf9bec8ed57a9b80f4d0a292b`  
		Last Modified: Fri, 08 Mar 2019 02:51:43 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
