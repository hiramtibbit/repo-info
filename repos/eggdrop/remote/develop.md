## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:ddb661f709efbbba193a54c0f8f659fef10b4e5eecdebb6d027595f3ace7a717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:15ba71b08225ba3ff109c30b1544c0676773a0e138140e9e139db777cb68195f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10741679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:795090c21440aca622542baa21ce315a50f0b9081a80ad92e46c10c00cc064cb`
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
# Fri, 06 Jul 2018 15:11:18 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Fri, 06 Jul 2018 15:11:18 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Fri, 06 Jul 2018 15:11:19 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 06 Jul 2018 15:11:58 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 06 Jul 2018 15:11:58 GMT
ENV NICK=
# Fri, 06 Jul 2018 15:11:58 GMT
ENV SERVER=
# Fri, 06 Jul 2018 15:11:58 GMT
ENV LISTEN=3333
# Fri, 06 Jul 2018 15:11:59 GMT
ENV OWNER=
# Fri, 06 Jul 2018 15:11:59 GMT
ENV USERFILE=eggdrop.user
# Fri, 06 Jul 2018 15:11:59 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 06 Jul 2018 15:12:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 06 Jul 2018 15:12:00 GMT
EXPOSE 3333/tcp
# Fri, 06 Jul 2018 15:12:00 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 06 Jul 2018 15:12:01 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 06 Jul 2018 15:12:01 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 06 Jul 2018 15:12:01 GMT
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
	-	`sha256:415a4ae37b47e7950293f71103418760a4512a66ad3d8249632281cf52a05878`  
		Last Modified: Fri, 06 Jul 2018 15:13:59 GMT  
		Size: 4.4 MB (4374801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176ac38ecf36d3d72e3e4da3ea366b84266c41c44e355a5495ae9a39dbdceb80`  
		Last Modified: Fri, 06 Jul 2018 15:13:58 GMT  
		Size: 4.3 MB (4250647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ddfb420282ff96552e58c00a239e7db9dde81af70aeabd7ba2a043d3a7c6c6`  
		Last Modified: Fri, 06 Jul 2018 15:13:57 GMT  
		Size: 1.9 KB (1874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71dd4a5b4cc71c74fc30b0bba0c0703dbdec89e3078ac459df8560c153cb1`  
		Last Modified: Fri, 06 Jul 2018 15:13:57 GMT  
		Size: 697.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
