## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:54e2aeb79aab3a2e7a2386c07f78c91b8fe9b6b87c4c20f018b720e2bd6ec94f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:5f3c52fcf56ad81a2e93297e5d086358557ac6db264777c832f152f919a7c962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13845644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b569b2cbf105a5cbc43feaa042e2f43a1480e9a31e669d037ab0755b66b6ec1f`
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
# Mon, 17 Sep 2018 20:21:13 GMT
ENV EGGDROP_SHA256=74212f33f8c44be68ea6bd8c41f636620771328f9e8dc1549e218e637efbc9bc
# Mon, 17 Sep 2018 20:21:13 GMT
ENV EGGDROP_COMMIT=83d237a1d82a74dd36c86bacd4b833131143c062
# Mon, 17 Sep 2018 20:21:15 GMT
RUN apk --update add --no-cache tcl bash openssl
# Mon, 17 Sep 2018 20:22:11 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Mon, 17 Sep 2018 20:22:15 GMT
ENV NICK=
# Mon, 17 Sep 2018 20:22:15 GMT
ENV SERVER=
# Mon, 17 Sep 2018 20:22:15 GMT
ENV LISTEN=3333
# Mon, 17 Sep 2018 20:22:15 GMT
ENV OWNER=
# Mon, 17 Sep 2018 20:22:16 GMT
ENV USERFILE=eggdrop.user
# Mon, 17 Sep 2018 20:22:16 GMT
ENV CHANFILE=eggdrop.chan
# Mon, 17 Sep 2018 20:22:16 GMT
WORKDIR /home/eggdrop/eggdrop
# Mon, 17 Sep 2018 20:22:16 GMT
EXPOSE 3333/tcp
# Mon, 17 Sep 2018 20:22:17 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Mon, 17 Sep 2018 20:22:17 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Mon, 17 Sep 2018 20:22:17 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Mon, 17 Sep 2018 20:22:17 GMT
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
	-	`sha256:55cd11474fbfd9e854fad6684f6ca60a73b9f7a5f6fe7307f6322dc6ecb32fbc`  
		Last Modified: Mon, 17 Sep 2018 20:22:43 GMT  
		Size: 4.4 MB (4402025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c7b7598e1304a13c69ec71646bdac48eb75420929d8c5511065475d9f6e808`  
		Last Modified: Mon, 17 Sep 2018 20:22:44 GMT  
		Size: 7.3 MB (7323747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efd53f0a731fd38b15662eb35307e89aa9d0b7a70118b696d7cafebacc673cd`  
		Last Modified: Mon, 17 Sep 2018 20:22:42 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71788901a3240b2d442e017fa44f891aeeac71e263646899002ff14674d8afda`  
		Last Modified: Mon, 17 Sep 2018 20:22:42 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:551b729b5a2cbfb31a8ef02efe27fd990a716bcdc79ca10a4514980f73626196
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13296664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f936da87e64e5c556af19aed516e1627e03cfd91f6ea2a27ae3e18dbccf04e5f`
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
# Wed, 03 Oct 2018 07:49:32 GMT
ENV EGGDROP_SHA256=74212f33f8c44be68ea6bd8c41f636620771328f9e8dc1549e218e637efbc9bc
# Wed, 03 Oct 2018 07:49:33 GMT
ENV EGGDROP_COMMIT=83d237a1d82a74dd36c86bacd4b833131143c062
# Wed, 03 Oct 2018 07:49:37 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 03 Oct 2018 07:51:11 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 03 Oct 2018 07:51:11 GMT
ENV NICK=
# Wed, 03 Oct 2018 07:51:11 GMT
ENV SERVER=
# Wed, 03 Oct 2018 07:51:12 GMT
ENV LISTEN=3333
# Wed, 03 Oct 2018 07:51:12 GMT
ENV OWNER=
# Wed, 03 Oct 2018 07:51:12 GMT
ENV USERFILE=eggdrop.user
# Wed, 03 Oct 2018 07:51:12 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 03 Oct 2018 07:51:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 03 Oct 2018 07:51:13 GMT
EXPOSE 3333/tcp
# Wed, 03 Oct 2018 07:51:14 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 03 Oct 2018 07:51:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 03 Oct 2018 07:51:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 03 Oct 2018 07:51:15 GMT
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
	-	`sha256:52c4abcf96d30dd12df46b6b471c04c9d96dba944bb886b5f9527f49df5b37c2`  
		Last Modified: Wed, 03 Oct 2018 07:51:27 GMT  
		Size: 3.9 MB (3945060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe32f7d6af3dfff84cefbffcb9a4c20861ade192ba1551271807fe9e07c52d02`  
		Last Modified: Wed, 03 Oct 2018 07:51:26 GMT  
		Size: 7.3 MB (7287447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bb000c29205e7d243727b5e9efcf4705ccf5342a0bc0408723ab155b9f5bb0`  
		Last Modified: Wed, 03 Oct 2018 07:51:24 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6858f948d77b85eb26cceab5d4a7474641dc06db9e2730b14d9b5f41be718`  
		Last Modified: Wed, 03 Oct 2018 07:51:24 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:bcb3abccc9816e8ffbd48d384c19a76b5614d9436652b4e36673ae00bd28eeec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13220726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503300f139803317ce6504b343a7e8cf478c2709c1c0ce2d92efc01464268eb5`
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
# Wed, 03 Oct 2018 08:46:34 GMT
ENV EGGDROP_SHA256=74212f33f8c44be68ea6bd8c41f636620771328f9e8dc1549e218e637efbc9bc
# Wed, 03 Oct 2018 08:46:34 GMT
ENV EGGDROP_COMMIT=83d237a1d82a74dd36c86bacd4b833131143c062
# Wed, 03 Oct 2018 08:46:39 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 03 Oct 2018 08:49:02 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 03 Oct 2018 08:49:03 GMT
ENV NICK=
# Wed, 03 Oct 2018 08:49:04 GMT
ENV SERVER=
# Wed, 03 Oct 2018 08:49:05 GMT
ENV LISTEN=3333
# Wed, 03 Oct 2018 08:49:06 GMT
ENV OWNER=
# Wed, 03 Oct 2018 08:49:07 GMT
ENV USERFILE=eggdrop.user
# Wed, 03 Oct 2018 08:49:08 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 03 Oct 2018 08:49:09 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 03 Oct 2018 08:49:09 GMT
EXPOSE 3333/tcp
# Wed, 03 Oct 2018 08:49:10 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 03 Oct 2018 08:49:11 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 03 Oct 2018 08:49:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 03 Oct 2018 08:49:13 GMT
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
	-	`sha256:baa928bddfb0bdec82a23e871b8bfa97a680ae726bd4db8b8c0ffa1720233bf1`  
		Last Modified: Wed, 03 Oct 2018 08:49:33 GMT  
		Size: 3.9 MB (3911837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed570191d576972e5e47dc481eeff999a969ae5bdbc5870dca33992786bf72a8`  
		Last Modified: Wed, 03 Oct 2018 08:49:34 GMT  
		Size: 7.3 MB (7296724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b4e4d43b8183f7b6a1cbd571af203e827957d614bf2b6a1d4bd7c276d2dad7`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d04946d9d9b7cdd251d408e808cd03609f088d3b7943f61e07acc46ef47f45a`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
