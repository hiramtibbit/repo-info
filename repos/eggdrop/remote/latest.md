## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:3c4b14792ac2b2753ddf0bafdb14f93db6ab5510b4b884e0adba1789448f8846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:921ffaf5aa50c56c3295343c72ff4870e567c42c858befa9983f815bd51014de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10743989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2f4e569ee7a13bca2f9610594bb45477b01583484debaaccc29e944e64b6c5`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:11:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 06 Jul 2018 15:11:16 GMT
RUN adduser -S eggdrop
# Fri, 06 Jul 2018 15:11:17 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 15:12:14 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 06 Jul 2018 15:12:55 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 06 Jul 2018 15:12:55 GMT
ENV NICK=
# Fri, 06 Jul 2018 15:12:55 GMT
ENV SERVER=
# Fri, 06 Jul 2018 15:12:56 GMT
ENV LISTEN=3333
# Fri, 06 Jul 2018 15:12:56 GMT
ENV OWNER=
# Fri, 06 Jul 2018 15:12:56 GMT
ENV USERFILE=eggdrop.user
# Fri, 06 Jul 2018 15:12:56 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 06 Jul 2018 15:12:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 06 Jul 2018 15:12:57 GMT
EXPOSE 3333/tcp
# Fri, 06 Jul 2018 15:12:57 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 06 Jul 2018 15:12:58 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 06 Jul 2018 15:12:58 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 06 Jul 2018 15:12:58 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8edf2456bc0df853e621abc807096db002d6239263c2a14b9c4175e5670126`  
		Last Modified: Fri, 06 Jul 2018 15:13:59 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc96ea9d43aaa42e94b803fdef683893cdf7e250c1c73b5f9794bcd17dd2071`  
		Last Modified: Fri, 06 Jul 2018 15:13:57 GMT  
		Size: 8.8 KB (8850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a59cf2f474bb279c7ca37e1f4d7354559ac10e7792042c82b61669a2ebdc3ac4`  
		Last Modified: Fri, 06 Jul 2018 15:14:16 GMT  
		Size: 4.4 MB (4374794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0b097c660752f2290f20d9e035bb51ab71b0e60cb91251b740264765ad2c5bf`  
		Last Modified: Fri, 06 Jul 2018 15:14:15 GMT  
		Size: 4.3 MB (4252955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7db7528a32930da8ded10783e84c073200a9ec82a8207fe3298a98e57ae1d919`  
		Last Modified: Fri, 06 Jul 2018 15:14:15 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c49a0b5d9e9a7a532f6bb830b548502d313f0430da1bd7267b14091f41e26dad`  
		Last Modified: Fri, 06 Jul 2018 15:14:15 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
