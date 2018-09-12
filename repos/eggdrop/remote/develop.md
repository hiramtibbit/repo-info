## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:93053535f6c3136e95279822b065f19b9989220c6cc348d9c0872415037de69f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:890e0e49d1bea4853f5c8b843517ac637f575fc3d125ccacac821ea28158bfe9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13846006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59e48588c2df2bdd0c945af201a32b0cb621851f5d9d1344d9a5f7598074e618`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:53:26 GMT
ENV EGGDROP_SHA256=87d8368c4816174837d3173d08adda23a4f68efae1ffec10b8b2cb63fba27d1e
# Tue, 11 Sep 2018 22:53:26 GMT
ENV EGGDROP_COMMIT=88f49af5cb00ec8586c2362647f35a7fe64f873f
# Tue, 11 Sep 2018 22:53:28 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 11 Sep 2018 22:54:23 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 11 Sep 2018 22:54:24 GMT
ENV NICK=
# Tue, 11 Sep 2018 22:54:24 GMT
ENV SERVER=
# Tue, 11 Sep 2018 22:54:25 GMT
ENV LISTEN=3333
# Tue, 11 Sep 2018 22:54:25 GMT
ENV OWNER=
# Tue, 11 Sep 2018 22:54:25 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Sep 2018 22:54:29 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Sep 2018 22:54:29 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Sep 2018 22:54:29 GMT
EXPOSE 3333/tcp
# Tue, 11 Sep 2018 22:54:30 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Sep 2018 22:54:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Sep 2018 22:54:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Sep 2018 22:54:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549def838378141819b0e86995ef44714fade5d509d314a68c2c08b5745ee0e9`  
		Last Modified: Tue, 11 Sep 2018 22:56:20 GMT  
		Size: 4.4 MB (4402065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b6c3860317ce1e9d2db819b09d26b2c098e395ef3e75f160651c9090ecfd1a`  
		Last Modified: Tue, 11 Sep 2018 22:56:20 GMT  
		Size: 7.3 MB (7324079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd86d27304716e64094cfe820cf7047c95839a259490a16b6e6d88c24bb9e371`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f8705389cabafc2cd6c6ff6c97638046f5a6ee6e25d0677ca4a48b6a9f5ff`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 705.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
