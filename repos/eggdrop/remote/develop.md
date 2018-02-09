## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:716cfb294fc0b93c310f001477859d64a814ce260e550c5a747a483d0d9452f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:585ba4ae8b7bab0d7d6d3e84cee5a217f25a1299d3462b731dab14fff63e9841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11086682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb02dac2a5a1dc48eb79013be881811df5d94b3d6ad6a2463d14cd491176eec`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Feb 2018 20:20:30 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Fri, 09 Feb 2018 20:20:31 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Fri, 09 Feb 2018 20:20:39 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:21:31 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:27:32 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:27:32 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:27:32 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:27:32 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:31:08 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:31:08 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:31:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:31:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:31:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:31:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:31:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:31:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840be8e2cc7ba5ba3f2a6c9aa89a25448dd5862c287b6b3afc23864ace4da531`  
		Last Modified: Fri, 09 Feb 2018 20:33:50 GMT  
		Size: 5.6 MB (5593261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746bb4e508c51ec77e26910a93e730ad1a921acf7aff66a7cfdf6f9a7480e9`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 3.4 MB (3415483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c0f87d27c1984d5944880ed65ca5622206a966795b2f1cded62f67d7edb24d`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cf5f8b6dae9eaafa75283c82f69b507977c45b5a217c5045b64651f7649ef9`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
