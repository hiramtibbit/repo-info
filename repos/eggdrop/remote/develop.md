## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:aea57624828fa4663a1feab97b63ceab911f682f0d4fc10ddc07da3f82285ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a58ef149cc2bb017f1c36fa7b71ce192cdbd8e9a412c19cd05fd0d7543d3fd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13892502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d854594e1bc5a88697a7e65068872fb4c69432795ce82db09328cdcb2b7bc`
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
# Fri, 26 Oct 2018 23:25:10 GMT
ENV EGGDROP_SHA256=e0e17acf626e763764ac6a9196a22338dd4a8f5f56d95c80c4b73cc375f80420
# Fri, 26 Oct 2018 23:25:10 GMT
ENV EGGDROP_COMMIT=55c83c6772d904752bf1f20e41e85b86ac883342
# Fri, 26 Oct 2018 23:25:12 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 26 Oct 2018 23:26:05 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 26 Oct 2018 23:26:05 GMT
ENV NICK=
# Fri, 26 Oct 2018 23:26:05 GMT
ENV SERVER=
# Fri, 26 Oct 2018 23:26:06 GMT
ENV LISTEN=3333
# Fri, 26 Oct 2018 23:26:06 GMT
ENV OWNER=
# Fri, 26 Oct 2018 23:26:06 GMT
ENV USERFILE=eggdrop.user
# Fri, 26 Oct 2018 23:26:07 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 26 Oct 2018 23:26:07 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 26 Oct 2018 23:26:08 GMT
EXPOSE 3333/tcp
# Fri, 26 Oct 2018 23:26:08 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 26 Oct 2018 23:26:08 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 26 Oct 2018 23:26:09 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 26 Oct 2018 23:26:09 GMT
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
	-	`sha256:d1c4878e6be3104dc64987cab672ae6c7ae96a3bab0cbc564a2ee97d199c94f0`  
		Last Modified: Fri, 26 Oct 2018 23:26:42 GMT  
		Size: 4.4 MB (4402133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e58dcfb941af1c950ee578de0924ac0ed781dc9137cfea52aed220e23047a7`  
		Last Modified: Fri, 26 Oct 2018 23:26:42 GMT  
		Size: 7.4 MB (7370505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2819a8443ea38063b6a76355fe8082cf63e28226287bf97846e4e02795e53e5f`  
		Last Modified: Fri, 26 Oct 2018 23:26:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72643073558cd987f569b6e61a903d67ae9dbfd9f4665c1f14ecdceda8b3f8ed`  
		Last Modified: Fri, 26 Oct 2018 23:26:41 GMT  
		Size: 705.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:1b886db77b0933ec4e737acc7ce572aa69e1927d3a6c983bd802d037be564c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13298336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b807456423f0000d5c79670ce266072ca6dad48afa777beda4a4477d1af18b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 07:49:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 07:49:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 07:49:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 18 Oct 2018 07:49:29 GMT
ENV EGGDROP_SHA256=a524d50fdbf94ee050ddc123fe5f11a0cee264203576841d5f790081355f79b9
# Thu, 18 Oct 2018 07:49:30 GMT
ENV EGGDROP_COMMIT=bb17ee0b19be6e42ab641db95ed2c8874a5b55bd
# Thu, 18 Oct 2018 07:49:33 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 18 Oct 2018 07:51:10 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 18 Oct 2018 07:51:13 GMT
ENV NICK=
# Thu, 18 Oct 2018 07:51:13 GMT
ENV SERVER=
# Thu, 18 Oct 2018 07:51:14 GMT
ENV LISTEN=3333
# Thu, 18 Oct 2018 07:51:14 GMT
ENV OWNER=
# Thu, 18 Oct 2018 07:51:17 GMT
ENV USERFILE=eggdrop.user
# Thu, 18 Oct 2018 07:51:17 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 18 Oct 2018 07:51:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 18 Oct 2018 07:51:18 GMT
EXPOSE 3333/tcp
# Thu, 18 Oct 2018 07:51:18 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 18 Oct 2018 07:51:19 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 18 Oct 2018 07:51:19 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 18 Oct 2018 07:51:19 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1804d6773d9f5a54c9a145caaf4c5f560110db9a83993961b02028402ac18d`  
		Last Modified: Wed, 03 Oct 2018 07:51:26 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0330c2151a31411d3194b5631c9d760390fbeb2bd95cbeb9beacd665d63db9`  
		Last Modified: Wed, 03 Oct 2018 07:51:25 GMT  
		Size: 9.0 KB (9021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f7ca5eb3f7742f089ffe18460be433576ef82090a04f60b17a321831482320`  
		Last Modified: Thu, 18 Oct 2018 07:51:29 GMT  
		Size: 3.9 MB (3945049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041500d957a41178c6d03e2326b6de31630efe6723d6cab9ab19585f1d98fa90`  
		Last Modified: Thu, 18 Oct 2018 07:51:30 GMT  
		Size: 7.3 MB (7289121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c53d8f3044b98523c00f3cb50888d81bdab6d7f909ec4e50bf4fd8cf19295a`  
		Last Modified: Thu, 18 Oct 2018 07:51:27 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ffd40327a7db4a6075edcd4c6a37a1008e48c3e215cfdcc5713dd5ad24dd46`  
		Last Modified: Thu, 18 Oct 2018 07:51:27 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:cab5c893298b4d2e1cf3776b947d939ed97b06cb02f72af1561b54746e3e3561
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13226295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6c90e5af941c203265a556a7d5ad535f11ab1e0dcdf1ba6d089568b6c70316`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:46:28 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 08:46:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 08:46:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 18 Oct 2018 08:40:24 GMT
ENV EGGDROP_SHA256=a524d50fdbf94ee050ddc123fe5f11a0cee264203576841d5f790081355f79b9
# Thu, 18 Oct 2018 08:40:25 GMT
ENV EGGDROP_COMMIT=bb17ee0b19be6e42ab641db95ed2c8874a5b55bd
# Thu, 18 Oct 2018 08:40:30 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 18 Oct 2018 08:42:46 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 18 Oct 2018 08:42:49 GMT
ENV NICK=
# Thu, 18 Oct 2018 08:42:50 GMT
ENV SERVER=
# Thu, 18 Oct 2018 08:42:51 GMT
ENV LISTEN=3333
# Thu, 18 Oct 2018 08:42:52 GMT
ENV OWNER=
# Thu, 18 Oct 2018 08:42:53 GMT
ENV USERFILE=eggdrop.user
# Thu, 18 Oct 2018 08:42:54 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 18 Oct 2018 08:42:55 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 18 Oct 2018 08:42:55 GMT
EXPOSE 3333/tcp
# Thu, 18 Oct 2018 08:42:56 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 18 Oct 2018 08:43:05 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 18 Oct 2018 08:43:06 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 18 Oct 2018 08:43:07 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8489f1d3ccba5cd1059bda2c6b3a87304e742e90bd2e5b1d682df55624488f00`  
		Last Modified: Wed, 03 Oct 2018 08:49:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086501517a1a0795c22b820345422379892d331c80456147a5dcee79ba1f366b`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 9.0 KB (8979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5009662dc16144ce5e9b6ce41382fa8226edf6f944f6bcc40aec3bf0dc3feb96`  
		Last Modified: Thu, 18 Oct 2018 08:43:33 GMT  
		Size: 3.9 MB (3912003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d52d620e97bb76c37e8833d6936b99a8297ac6a8ae2da0b6a9e566427edff0`  
		Last Modified: Thu, 18 Oct 2018 08:43:33 GMT  
		Size: 7.3 MB (7302115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faa446e9cad3e17fd4f15a92b3251378e070abc317511d9594b0d70c00a6d032`  
		Last Modified: Thu, 18 Oct 2018 08:43:30 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646eaa587c455dbf671740a592846d824b8d53033ecda180ae84a16c1b8810cb`  
		Last Modified: Thu, 18 Oct 2018 08:43:31 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
