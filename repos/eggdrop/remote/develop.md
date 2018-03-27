## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:68b52132bec60e0b46ff3214f4f5896a3d33aa9ab08859c1016040f9031d3b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:96f3ba14f4fccf345796d356b86198c7e8b91c2d3db3054c38d52cf3d979c038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8271651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b55f5d3060d1d2b16a04e8763cf2a088eb63cd0491060900a4877648eaeb1e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Mar 2018 03:32:46 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Tue, 27 Mar 2018 03:32:47 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Tue, 27 Mar 2018 03:32:53 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:33:34 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:33:34 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:33:35 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:33:36 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:33:36 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:33:36 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:33:37 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:33:37 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:33:38 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:33:38 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c717380cb6db86c082cca66de02443de0f13e3fe414de99e381a087ebe258a`  
		Last Modified: Tue, 27 Mar 2018 03:36:11 GMT  
		Size: 3.7 MB (3713378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3843ee3277ef0b696d70dc6e881595dca997594bd55dd5f34b1a4d7521ea73f7`  
		Last Modified: Tue, 27 Mar 2018 03:36:11 GMT  
		Size: 2.2 MB (2158779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132918eb0ae1d648dfae0b159cd420ce61c818e417383a081a2ed3e8f81be5c`  
		Last Modified: Tue, 27 Mar 2018 03:36:10 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb8424f08da242d1b3fefdaeab69111c188752a1dcfd988e0fddb34ff58b26`  
		Last Modified: Tue, 27 Mar 2018 03:36:10 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
