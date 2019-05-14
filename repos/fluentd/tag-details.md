<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.4-2`](#fluentdv14-2)
-	[`fluentd:v1.4.2-2.0`](#fluentdv142-20)
-	[`fluentd:v1.4.2-debian-2.0`](#fluentdv142-debian-20)
-	[`fluentd:v1.4-debian-2`](#fluentdv14-debian-2)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:d9eafe8d04bebd067c171625702cf1d0751c188746bd68ecfd4f499f33a94e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:latest` - linux; amd64

```console
$ docker pull fluentd@sha256:283dbbdb6abe42d29c011716be268c57e10ba136941e1ec5c34a516253f030b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13996120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ac1c3a2a01cfdb4e169a03439fdcc58c74ab213dc84e9063c7097aba98f9b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:24:36 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 00:24:36 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 00:25:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 00:25:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 00:25:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 00:25:12 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 00:25:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 00:25:12 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 00:25:12 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 00:25:13 GMT
USER fluent
# Sat, 11 May 2019 00:25:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 00:25:13 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3963d9fc5f160e58fd2efb1a6b94da347aa328eacf4888bd80525fc2cc6ca`  
		Last Modified: Sat, 11 May 2019 00:25:30 GMT  
		Size: 11.2 MB (11236921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c833d4d36e659a5788f0b6df195b804444424ace0c12fc5544318e308d5054d`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a624254fda36e7e999b1892fcd2cd7d5bdb9bd6360098a0a8171f1d159d3d4`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2251b782814dba69c2bf44cc553e7df00003f5749e27519c08a1b2569a511e18`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:7311dbd89c00cf300cc1ee171c6001344b5388f7632da68395d7e5f73104fe5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13454044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00582403eeb86ee76299d5f91688c103ecf062e5baf04ec6b17104f93745f43`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:12:16 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 09:12:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 09:13:37 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 09:13:39 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 09:13:40 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 09:13:40 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 09:13:40 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 09:13:41 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 09:13:41 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 09:13:41 GMT
USER fluent
# Sat, 11 May 2019 09:13:42 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 09:13:42 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7d54aecf46ded52c53d6d33b6f786d9f0ee9a1873d6123d0ae152851ebea9`  
		Last Modified: Sat, 11 May 2019 09:14:09 GMT  
		Size: 10.9 MB (10908399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0969a71806a74c0e0946171453f06f6d357dacfcf5c41687c97d0480e6a9b6`  
		Last Modified: Sat, 11 May 2019 09:14:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77df157494553eac8562656739438e26da5c34a7d73e2d73a54d10e47b8df8d`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3118f18acc3828089c0f421aab011b563b9f32f3f2218e45b8ba5ad2417a8b78`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:70b944217c70357786fa5d0b399ef4ec00d06643693a398fe3f4c03420459598
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13926455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e462070e4e1e138645397cf37b5078ccba7242d8b07f365aa3f0309ad159`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:24:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 10:25:00 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 10:27:43 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 10:27:48 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 10:27:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 10:27:50 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 10:27:51 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 10:27:52 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 10:27:53 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 10:27:54 GMT
USER fluent
# Sat, 11 May 2019 10:27:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 10:27:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f1322913bc52daf3c28530cd92c97fff57bffc97afc81f9d5d9d31a0cd443`  
		Last Modified: Sat, 11 May 2019 10:28:38 GMT  
		Size: 11.2 MB (11235507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12954f72e361b0e4224e717f29a48e04b153d0ae366672407d64cca6ddb47f1`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b32c16a26bbb16a303b3d37c47c568debcfc5489b9a3441d06f2a12c500c896`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f2e7e6b8993ee6cf9216a7b033b81c55cb1eb5de2845e7defe2f9fbe2c0a55`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:4870ba39a9f177addfda936cdb9cc268a24a33db75ee0826bcc2fcf6be2d0118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207816f9614e8c7612c1f5dda0f67ca6a6a68c14649335ffb8344b9bbb95aab5`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 11:06:43 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 11:06:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 11:07:18 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 11:07:18 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 11:07:19 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 11:07:19 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 11:07:19 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 11:07:19 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 11:07:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 11:07:20 GMT
USER fluent
# Sat, 11 May 2019 11:07:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 11:07:20 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6af27728c94eaee88dd4d552f2cc137d2216fc24c0bcf08c4258af146b82fba`  
		Last Modified: Sat, 11 May 2019 11:07:37 GMT  
		Size: 11.1 MB (11141261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f6265826c65452d1ff00ebfc4fee3a63eacc66638901614eca17102ad2635`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8000df0c176195aad3bc9bcec73f2d872e9a952ee8bc5b71b3595753035198`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465898a6f92437437948b5537827a53cbc5e3a3191d00e3a951ff684707e234`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:9e8cad301b0da4514de4438eb01b2b80d0a3916f8ec7c405bdc783f75417da4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14403348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a11b8e741e94b3fd20eb7521c0fe8f9eb5f6b302cc81edba8980262724896b3`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:08 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 08:46:11 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 08:47:56 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 08:48:04 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 08:48:05 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 08:48:07 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 08:48:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 08:48:17 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 08:48:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 08:48:23 GMT
USER fluent
# Sat, 11 May 2019 08:48:26 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 08:48:29 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30edb6553bf6e75cdafe6a165c8b24128ccf4b2e97455769d94a4f275728f0`  
		Last Modified: Sat, 11 May 2019 08:49:14 GMT  
		Size: 11.6 MB (11620112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d50b0569f6497b3f36724b73ecd228548bd2ed4808ce15a9c28304002cf69`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d22dd40bfa9a05577f3362fc3d7ae61d669bc8d24345c3b4c0ffe037aaef49`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8ee18f0242953a7eb0c7a0def8b041de58e4b861ece500222f0f9b0766a1a7`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:d3dfc143e01c9acd097950a1b2abd5be826da1facb6352fe3785de8cedafbc4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13908145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a1a04fa5579ded0c3f2c0e8f088f9e26fbc6943714d198b9a4d3e315cd2254`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:02:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 12:02:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 12:02:54 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 12:02:56 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 12:02:56 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 12:02:56 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 12:02:56 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 12:02:57 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 12:02:57 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 12:02:57 GMT
USER fluent
# Sat, 11 May 2019 12:02:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 12:02:58 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb5764736b2ab24bc57527f513b7c4a0a476afa14d8aa8969b838606c1477dd`  
		Last Modified: Sat, 11 May 2019 12:03:26 GMT  
		Size: 11.4 MB (11362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4004732c6bdc89f8395c4e4e45d053ff7749d729929dea9548e4b7066db43cc9`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6936a44a7b7cd123f02e8db26b1c0ea0cc30346bdeb2445fec93f0711944669`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f818d2b1a8412f6ca1bfe7ee1454d5d2506ce90e69da8ebbf3d8d77a3f1f2051`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4-2`

```console
$ docker pull fluentd@sha256:d9eafe8d04bebd067c171625702cf1d0751c188746bd68ecfd4f499f33a94e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.4-2` - linux; amd64

```console
$ docker pull fluentd@sha256:283dbbdb6abe42d29c011716be268c57e10ba136941e1ec5c34a516253f030b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13996120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ac1c3a2a01cfdb4e169a03439fdcc58c74ab213dc84e9063c7097aba98f9b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:24:36 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 00:24:36 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 00:25:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 00:25:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 00:25:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 00:25:12 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 00:25:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 00:25:12 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 00:25:12 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 00:25:13 GMT
USER fluent
# Sat, 11 May 2019 00:25:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 00:25:13 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3963d9fc5f160e58fd2efb1a6b94da347aa328eacf4888bd80525fc2cc6ca`  
		Last Modified: Sat, 11 May 2019 00:25:30 GMT  
		Size: 11.2 MB (11236921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c833d4d36e659a5788f0b6df195b804444424ace0c12fc5544318e308d5054d`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a624254fda36e7e999b1892fcd2cd7d5bdb9bd6360098a0a8171f1d159d3d4`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2251b782814dba69c2bf44cc553e7df00003f5749e27519c08a1b2569a511e18`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:7311dbd89c00cf300cc1ee171c6001344b5388f7632da68395d7e5f73104fe5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13454044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00582403eeb86ee76299d5f91688c103ecf062e5baf04ec6b17104f93745f43`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:12:16 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 09:12:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 09:13:37 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 09:13:39 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 09:13:40 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 09:13:40 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 09:13:40 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 09:13:41 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 09:13:41 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 09:13:41 GMT
USER fluent
# Sat, 11 May 2019 09:13:42 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 09:13:42 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7d54aecf46ded52c53d6d33b6f786d9f0ee9a1873d6123d0ae152851ebea9`  
		Last Modified: Sat, 11 May 2019 09:14:09 GMT  
		Size: 10.9 MB (10908399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0969a71806a74c0e0946171453f06f6d357dacfcf5c41687c97d0480e6a9b6`  
		Last Modified: Sat, 11 May 2019 09:14:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77df157494553eac8562656739438e26da5c34a7d73e2d73a54d10e47b8df8d`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3118f18acc3828089c0f421aab011b563b9f32f3f2218e45b8ba5ad2417a8b78`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:70b944217c70357786fa5d0b399ef4ec00d06643693a398fe3f4c03420459598
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13926455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e462070e4e1e138645397cf37b5078ccba7242d8b07f365aa3f0309ad159`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:24:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 10:25:00 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 10:27:43 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 10:27:48 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 10:27:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 10:27:50 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 10:27:51 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 10:27:52 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 10:27:53 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 10:27:54 GMT
USER fluent
# Sat, 11 May 2019 10:27:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 10:27:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f1322913bc52daf3c28530cd92c97fff57bffc97afc81f9d5d9d31a0cd443`  
		Last Modified: Sat, 11 May 2019 10:28:38 GMT  
		Size: 11.2 MB (11235507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12954f72e361b0e4224e717f29a48e04b153d0ae366672407d64cca6ddb47f1`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b32c16a26bbb16a303b3d37c47c568debcfc5489b9a3441d06f2a12c500c896`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f2e7e6b8993ee6cf9216a7b033b81c55cb1eb5de2845e7defe2f9fbe2c0a55`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; 386

```console
$ docker pull fluentd@sha256:4870ba39a9f177addfda936cdb9cc268a24a33db75ee0826bcc2fcf6be2d0118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207816f9614e8c7612c1f5dda0f67ca6a6a68c14649335ffb8344b9bbb95aab5`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 11:06:43 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 11:06:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 11:07:18 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 11:07:18 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 11:07:19 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 11:07:19 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 11:07:19 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 11:07:19 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 11:07:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 11:07:20 GMT
USER fluent
# Sat, 11 May 2019 11:07:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 11:07:20 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6af27728c94eaee88dd4d552f2cc137d2216fc24c0bcf08c4258af146b82fba`  
		Last Modified: Sat, 11 May 2019 11:07:37 GMT  
		Size: 11.1 MB (11141261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f6265826c65452d1ff00ebfc4fee3a63eacc66638901614eca17102ad2635`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8000df0c176195aad3bc9bcec73f2d872e9a952ee8bc5b71b3595753035198`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465898a6f92437437948b5537827a53cbc5e3a3191d00e3a951ff684707e234`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; ppc64le

```console
$ docker pull fluentd@sha256:9e8cad301b0da4514de4438eb01b2b80d0a3916f8ec7c405bdc783f75417da4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14403348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a11b8e741e94b3fd20eb7521c0fe8f9eb5f6b302cc81edba8980262724896b3`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:08 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 08:46:11 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 08:47:56 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 08:48:04 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 08:48:05 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 08:48:07 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 08:48:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 08:48:17 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 08:48:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 08:48:23 GMT
USER fluent
# Sat, 11 May 2019 08:48:26 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 08:48:29 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30edb6553bf6e75cdafe6a165c8b24128ccf4b2e97455769d94a4f275728f0`  
		Last Modified: Sat, 11 May 2019 08:49:14 GMT  
		Size: 11.6 MB (11620112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d50b0569f6497b3f36724b73ecd228548bd2ed4808ce15a9c28304002cf69`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d22dd40bfa9a05577f3362fc3d7ae61d669bc8d24345c3b4c0ffe037aaef49`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8ee18f0242953a7eb0c7a0def8b041de58e4b861ece500222f0f9b0766a1a7`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; s390x

```console
$ docker pull fluentd@sha256:d3dfc143e01c9acd097950a1b2abd5be826da1facb6352fe3785de8cedafbc4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13908145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a1a04fa5579ded0c3f2c0e8f088f9e26fbc6943714d198b9a4d3e315cd2254`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:02:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 12:02:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 12:02:54 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 12:02:56 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 12:02:56 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 12:02:56 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 12:02:56 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 12:02:57 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 12:02:57 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 12:02:57 GMT
USER fluent
# Sat, 11 May 2019 12:02:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 12:02:58 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb5764736b2ab24bc57527f513b7c4a0a476afa14d8aa8969b838606c1477dd`  
		Last Modified: Sat, 11 May 2019 12:03:26 GMT  
		Size: 11.4 MB (11362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4004732c6bdc89f8395c4e4e45d053ff7749d729929dea9548e4b7066db43cc9`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6936a44a7b7cd123f02e8db26b1c0ea0cc30346bdeb2445fec93f0711944669`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f818d2b1a8412f6ca1bfe7ee1454d5d2506ce90e69da8ebbf3d8d77a3f1f2051`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4.2-2.0`

```console
$ docker pull fluentd@sha256:d9eafe8d04bebd067c171625702cf1d0751c188746bd68ecfd4f499f33a94e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.4.2-2.0` - linux; amd64

```console
$ docker pull fluentd@sha256:283dbbdb6abe42d29c011716be268c57e10ba136941e1ec5c34a516253f030b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13996120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95ac1c3a2a01cfdb4e169a03439fdcc58c74ab213dc84e9063c7097aba98f9b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:24:36 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 00:24:36 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 00:25:11 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 00:25:12 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 00:25:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 00:25:12 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 00:25:12 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 00:25:12 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 00:25:12 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 00:25:13 GMT
USER fluent
# Sat, 11 May 2019 00:25:13 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 00:25:13 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca3963d9fc5f160e58fd2efb1a6b94da347aa328eacf4888bd80525fc2cc6ca`  
		Last Modified: Sat, 11 May 2019 00:25:30 GMT  
		Size: 11.2 MB (11236921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c833d4d36e659a5788f0b6df195b804444424ace0c12fc5544318e308d5054d`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a624254fda36e7e999b1892fcd2cd7d5bdb9bd6360098a0a8171f1d159d3d4`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2251b782814dba69c2bf44cc553e7df00003f5749e27519c08a1b2569a511e18`  
		Last Modified: Sat, 11 May 2019 00:25:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:7311dbd89c00cf300cc1ee171c6001344b5388f7632da68395d7e5f73104fe5f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13454044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00582403eeb86ee76299d5f91688c103ecf062e5baf04ec6b17104f93745f43`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:12:16 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 09:12:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 09:13:37 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 09:13:39 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 09:13:40 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 09:13:40 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 09:13:40 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 09:13:41 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 09:13:41 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 09:13:41 GMT
USER fluent
# Sat, 11 May 2019 09:13:42 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 09:13:42 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb7d54aecf46ded52c53d6d33b6f786d9f0ee9a1873d6123d0ae152851ebea9`  
		Last Modified: Sat, 11 May 2019 09:14:09 GMT  
		Size: 10.9 MB (10908399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0969a71806a74c0e0946171453f06f6d357dacfcf5c41687c97d0480e6a9b6`  
		Last Modified: Sat, 11 May 2019 09:14:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d77df157494553eac8562656739438e26da5c34a7d73e2d73a54d10e47b8df8d`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3118f18acc3828089c0f421aab011b563b9f32f3f2218e45b8ba5ad2417a8b78`  
		Last Modified: Sat, 11 May 2019 09:14:04 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:70b944217c70357786fa5d0b399ef4ec00d06643693a398fe3f4c03420459598
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13926455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52b4e462070e4e1e138645397cf37b5078ccba7242d8b07f365aa3f0309ad159`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:24:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 10:25:00 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 10:27:43 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 10:27:48 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 10:27:49 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 10:27:50 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 10:27:51 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 10:27:52 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 10:27:53 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 10:27:54 GMT
USER fluent
# Sat, 11 May 2019 10:27:55 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 10:27:56 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305f1322913bc52daf3c28530cd92c97fff57bffc97afc81f9d5d9d31a0cd443`  
		Last Modified: Sat, 11 May 2019 10:28:38 GMT  
		Size: 11.2 MB (11235507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12954f72e361b0e4224e717f29a48e04b153d0ae366672407d64cca6ddb47f1`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b32c16a26bbb16a303b3d37c47c568debcfc5489b9a3441d06f2a12c500c896`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f2e7e6b8993ee6cf9216a7b033b81c55cb1eb5de2845e7defe2f9fbe2c0a55`  
		Last Modified: Sat, 11 May 2019 10:28:27 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; 386

```console
$ docker pull fluentd@sha256:4870ba39a9f177addfda936cdb9cc268a24a33db75ee0826bcc2fcf6be2d0118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13895517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207816f9614e8c7612c1f5dda0f67ca6a6a68c14649335ffb8344b9bbb95aab5`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 11:06:43 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 11:06:43 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 11:07:18 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 11:07:18 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 11:07:19 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 11:07:19 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 11:07:19 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 11:07:19 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 11:07:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 11:07:20 GMT
USER fluent
# Sat, 11 May 2019 11:07:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 11:07:20 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6af27728c94eaee88dd4d552f2cc137d2216fc24c0bcf08c4258af146b82fba`  
		Last Modified: Sat, 11 May 2019 11:07:37 GMT  
		Size: 11.1 MB (11141261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837f6265826c65452d1ff00ebfc4fee3a63eacc66638901614eca17102ad2635`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8000df0c176195aad3bc9bcec73f2d872e9a952ee8bc5b71b3595753035198`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0465898a6f92437437948b5537827a53cbc5e3a3191d00e3a951ff684707e234`  
		Last Modified: Sat, 11 May 2019 11:07:34 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:9e8cad301b0da4514de4438eb01b2b80d0a3916f8ec7c405bdc783f75417da4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14403348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a11b8e741e94b3fd20eb7521c0fe8f9eb5f6b302cc81edba8980262724896b3`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:46:08 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 08:46:11 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 08:47:56 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 08:48:04 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 08:48:05 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 08:48:07 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 08:48:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 08:48:17 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 08:48:19 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 08:48:23 GMT
USER fluent
# Sat, 11 May 2019 08:48:26 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 08:48:29 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f30edb6553bf6e75cdafe6a165c8b24128ccf4b2e97455769d94a4f275728f0`  
		Last Modified: Sat, 11 May 2019 08:49:14 GMT  
		Size: 11.6 MB (11620112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba4d50b0569f6497b3f36724b73ecd228548bd2ed4808ce15a9c28304002cf69`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07d22dd40bfa9a05577f3362fc3d7ae61d669bc8d24345c3b4c0ffe037aaef49`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8ee18f0242953a7eb0c7a0def8b041de58e4b861ece500222f0f9b0766a1a7`  
		Last Modified: Sat, 11 May 2019 08:49:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; s390x

```console
$ docker pull fluentd@sha256:d3dfc143e01c9acd097950a1b2abd5be826da1facb6352fe3785de8cedafbc4d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13908145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6a1a04fa5579ded0c3f2c0e8f088f9e26fbc6943714d198b9a4d3e315cd2254`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:02:14 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 11 May 2019 12:02:14 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 11 May 2019 12:02:54 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 11 May 2019 12:02:56 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 11 May 2019 12:02:56 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 11 May 2019 12:02:56 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 11 May 2019 12:02:56 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 11 May 2019 12:02:57 GMT
ENV LD_PRELOAD=
# Sat, 11 May 2019 12:02:57 GMT
EXPOSE 24224 5140
# Sat, 11 May 2019 12:02:57 GMT
USER fluent
# Sat, 11 May 2019 12:02:57 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 11 May 2019 12:02:58 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb5764736b2ab24bc57527f513b7c4a0a476afa14d8aa8969b838606c1477dd`  
		Last Modified: Sat, 11 May 2019 12:03:26 GMT  
		Size: 11.4 MB (11362651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4004732c6bdc89f8395c4e4e45d053ff7749d729929dea9548e4b7066db43cc9`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6936a44a7b7cd123f02e8db26b1c0ea0cc30346bdeb2445fec93f0711944669`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f818d2b1a8412f6ca1bfe7ee1454d5d2506ce90e69da8ebbf3d8d77a3f1f2051`  
		Last Modified: Sat, 11 May 2019 12:03:23 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4.2-debian-2.0`

```console
$ docker pull fluentd@sha256:14332dda0d38d07a810dd098a3978e6855740f25dd2c77aebd81437d5e424f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.4.2-debian-2.0` - linux; amd64

```console
$ docker pull fluentd@sha256:27f7c52b67062852060506a8a2ead64c663132b7faacc326e3281df1d2d12cad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70759976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bb1222dd6c7464b5c57f0a2ca96269dea20d58eb6ab32c4f3cdadd7ddebe6e`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:24:15 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 08:24:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 08:24:16 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 08:26:45 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 08:26:47 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 08:26:47 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 08:26:47 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 08:26:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 08:26:48 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 08:26:48 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 08:26:48 GMT
USER fluent
# Wed, 08 May 2019 08:26:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 08:26:49 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b1a02e90dd221a44d766f717049ecede1fbb47d594b092652dc58c5d179230`  
		Last Modified: Wed, 08 May 2019 08:27:12 GMT  
		Size: 17.2 MB (17191537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3299973b1c04abfbacfb697b2722095956a7cd809c838e57fe92f71746918148`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c6d66530bdf87e0e8ef784ecc71c944c9e0769be209881e52f00909cc74da4`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c851ee4d2f29da7e51862ccd3d66e4f9d8e1bb101d692aa09ad8254293a1604e`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:6cc4469316d4e76ebbc62d2a442487917fe2e5edfd19eb0a7a5eb39caa94c71d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66918144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b70ee6aaec1e628f8778ba6ffe8b8ea663c5b92d9be28317881ae0c345b4d5`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:06:45 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 17:06:46 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 17:06:46 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 17:09:28 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 17:09:30 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 17:09:31 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 17:09:31 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 17:09:32 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 17:09:32 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 17:09:33 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 17:09:33 GMT
USER fluent
# Wed, 08 May 2019 17:09:34 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 17:09:34 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4dc22532522a26e5c27c96e1d283e7c6d42dfb2f7cc90d96e43cba4267c34`  
		Last Modified: Wed, 08 May 2019 17:09:56 GMT  
		Size: 16.7 MB (16694216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fdad5150f63fdb6b5e1af278a56caadd1b702e0af861eca913c1744e398592`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7c86d9a21eb03363be953e7fb24779b8d8907d229cf0a0b796f248d7d455e5`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f141927e2c28ab279cacd70d9a9142d5f88071c8a4b2e77ab248e393ce2ea`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ae2856f22df4c7d9a548f57ec1900341b42aec2f4ab776cbec3e9ffd01057e85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64180499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2a4abeadaa040291d85313fedcaff17e79430da6d3c293875e8b4e5f3a0d75`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:18:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:18:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 15:18:49 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 15:18:50 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 15:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:21:47 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:21:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:21:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:21:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:21:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:21:53 GMT
CMD ["irb"]
# Wed, 08 May 2019 18:31:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 18:31:11 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 18:31:11 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 18:33:36 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 18:33:38 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 18:33:39 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 18:33:39 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 18:33:40 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 18:33:40 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 18:33:41 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 18:33:41 GMT
USER fluent
# Wed, 08 May 2019 18:33:42 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 18:33:42 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883ad28bff7da2b53988153cc95adba039b192a69fc5a701f4f5240f4b8259f5`  
		Last Modified: Wed, 08 May 2019 15:56:18 GMT  
		Size: 9.1 MB (9079671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c0921102dd5b98b2f366d8f6fca94539efdd6b8ad800a9b4fe6bf09795dde5`  
		Last Modified: Wed, 08 May 2019 15:56:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c32b08998d386d808218a000bc2c8dbed24d267afce9fc9aded07c8929bd1d8`  
		Last Modified: Wed, 08 May 2019 15:56:17 GMT  
		Size: 19.3 MB (19293216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b011e824c62e60688c8dd51b4256ce58d597dfbe4f8d82f1cb34ecd3744c7272`  
		Last Modified: Wed, 08 May 2019 15:56:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0ee6e0741957e1af3aeaa58473a3c486163d2ce8912a196939c002f2d4080`  
		Last Modified: Wed, 08 May 2019 18:34:07 GMT  
		Size: 16.5 MB (16528312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07606276bb2a36513bfd2655c042b1a93bd0f50b41766e6460fbf5d8db0bac4`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6973d9a23bd853569117e506b8816581192942936c857dd3e50d25335a5d2c`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfb459d67f8d421be825f628024d5a849aad541990ac9d85b6b39388289e8ba`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:54b3753b690604fee242b2f62822fd301828005f82a8796b1aa32056db87e897
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67084985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df8eaec3bb66b92a5e1f5b27e381d84146b599860b21ffd4fe744be7058abab`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:51:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:51:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 19:51:07 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 19:51:07 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 19:51:08 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 19:59:12 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 19:59:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 19:59:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 19:59:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:59:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 19:59:17 GMT
CMD ["irb"]
# Thu, 09 May 2019 08:09:07 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 08:09:08 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 08:09:09 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 08:16:00 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 08:16:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 08:16:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 08:16:14 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 08:16:15 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 08:16:16 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 08:16:17 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 08:16:18 GMT
USER fluent
# Thu, 09 May 2019 08:16:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 08:16:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e40ed04e76f31dacc59215435e22880e5c6cbdb80e96b74dbd88d67bd8a1ade`  
		Last Modified: Wed, 08 May 2019 20:39:06 GMT  
		Size: 9.9 MB (9919071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66911e4d74f1fa6b22c9677ca2c1d1f8858065437754e0f6061b6d77660daa39`  
		Last Modified: Wed, 08 May 2019 20:38:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751c9db1899c5e415771de547ae53987ef8d8cfca8028f062d1dc68957aef9a5`  
		Last Modified: Wed, 08 May 2019 20:39:05 GMT  
		Size: 19.7 MB (19665414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dd936e2a338f55fc9f847e58c3bddaa5e41870d9d483dcf5814fb031011829`  
		Last Modified: Wed, 08 May 2019 20:38:55 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6e8a42aecee11d837eeddac569215112de19eb5807b6e5629fb0f5fc336087`  
		Last Modified: Thu, 09 May 2019 08:16:43 GMT  
		Size: 17.2 MB (17163643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee21e7388f1337bf5bab4b80ded9f759f67024f98d6ca30684aae7763c0ae38`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a173e04574d83ba5e01321237011ec9f2794e677ae65f726e1b6c146f5da770`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb344743f732e4b98ff62497929fc5d8a3576055d596924c0e06c40c137c817a`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; 386

```console
$ docker pull fluentd@sha256:a7a9efdb69e64a5209bf18586ecf47ffccb18892d51a9941e5899a8257a57e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73728107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d8a895e68e629a9ab70599b98620103679103c93c20834240f497fd8fa451`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:52:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:52:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 19:52:11 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 19:52:12 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 19:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 19:55:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 19:55:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 19:55:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 19:55:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:55:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 19:55:23 GMT
CMD ["irb"]
# Thu, 09 May 2019 03:20:16 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 03:20:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 03:20:17 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 03:21:45 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 03:21:46 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 03:21:46 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 03:21:47 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 03:21:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 03:21:47 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 03:21:47 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 03:21:47 GMT
USER fluent
# Thu, 09 May 2019 03:21:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 03:21:48 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044a37fadd7ede63d94cc815345783dfbc882ee603bd343c8b7b7fa16a4d0a23`  
		Last Modified: Wed, 08 May 2019 20:29:40 GMT  
		Size: 14.7 MB (14650570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a0010192299d2013689a4a73a52b06596101e7a0b4d13b13127b7c1b0fe7e`  
		Last Modified: Wed, 08 May 2019 20:29:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d471f361964ccee5a8b45ad792ae4e5f9b1c99d6bf40f887fcd48f9eaeef68ab`  
		Last Modified: Wed, 08 May 2019 20:29:39 GMT  
		Size: 19.4 MB (19438244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f71abfd128e0daa2eaaec97a42c16153146d7795f78e06e1ac9042c4549dad`  
		Last Modified: Wed, 08 May 2019 20:29:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9b467010d9441e42d6398182ed470469f923de771949396f10ce17ddb9119`  
		Last Modified: Thu, 09 May 2019 03:22:07 GMT  
		Size: 16.5 MB (16515437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4446de6aa38c639d424cfb95fd979816c8b6d97fdc332a89b6d03b35644c063c`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fa70ae013d43f072327acc5f834d4552b1dbe347e48257f2f9f4f919e515a2`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4259b4e6e1e38233368e97de982e68e8f67536c2f9629a9fcab1506ca9817dc6`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:a0b05a377b144b473e3d0884e21f26024f7272bcdd6d4105c98aa7d26d52df6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70921787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb6b9a655a5830bd4c4403b223d4a676f6f70b454138951bd3305841d9fc7b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:36:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:36:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 15:36:20 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 15:36:26 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 15:36:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:50:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:51:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:51:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:51:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:51:28 GMT
CMD ["irb"]
# Thu, 09 May 2019 00:47:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 00:47:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 00:47:15 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 00:51:36 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 00:51:46 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 00:51:47 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 00:51:48 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 00:51:50 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 00:51:55 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 00:52:01 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 00:52:05 GMT
USER fluent
# Thu, 09 May 2019 00:52:09 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 00:52:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f162df45f55ceec481c42898f89f67b15e8fb5ef88e8a90eda1f321d6d2b5558`  
		Last Modified: Wed, 08 May 2019 16:29:31 GMT  
		Size: 10.6 MB (10580030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b87d21da21e9b1169596b31eaad4db199c69a2b207f9f2f722a43b98081d29`  
		Last Modified: Wed, 08 May 2019 16:29:21 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e73960535e3b91efa4997723f8205e4134851a2ce733de71c21b50c1922fd`  
		Last Modified: Wed, 08 May 2019 16:29:32 GMT  
		Size: 20.1 MB (20102005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af66f738ebcda43f876808f04c238a66f92d53ea745875646b16059763c1179`  
		Last Modified: Wed, 08 May 2019 16:29:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833ac9e555758fa6d7d50239241df7544e334e6b319bc67ccf2206a1f296a1c2`  
		Last Modified: Thu, 09 May 2019 00:52:33 GMT  
		Size: 17.5 MB (17491736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d4f338433cc63e5b106e75754134e728ba0afec2128557c5fc503e9b60951`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 1.9 KB (1858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbebb1212359eb030e85fd079b8d65342ac478ddd8a95cd38f0f5a1cb4fb0c2d`  
		Last Modified: Thu, 09 May 2019 00:52:28 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b70e41b18a4d9c37db34a96ad42e51e4de2fe2a079bb18d19e2c0961f1dc7a`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; s390x

```console
$ docker pull fluentd@sha256:16e6475b1062157f7e4a259aa8082aaca064880e61a5b7b9c0f645ed0931b88a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73753160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d4500f13edfce0335703f60f837b3ddc403e0089283a05b040d9a29e676511`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:55:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 14:55:00 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 14:55:00 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 14:55:01 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:01:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:01:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:01:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:01:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:01:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:01:28 GMT
CMD ["irb"]
# Thu, 09 May 2019 07:45:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 07:45:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 07:45:55 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 07:52:19 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 07:52:29 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 07:52:31 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 07:52:33 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 07:52:34 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 07:52:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 07:52:37 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 07:52:39 GMT
USER fluent
# Thu, 09 May 2019 07:52:40 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 07:52:41 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c8c7ed37c50d7f76e5e518eb10ff7fed7c0d8032ffd470a1f78d75afb12569`  
		Last Modified: Wed, 08 May 2019 15:36:55 GMT  
		Size: 11.6 MB (11578323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9480b3fe529066a7187cfe4da118b2a354410941209d266e93fcfaa97ad4bc4b`  
		Last Modified: Wed, 08 May 2019 15:36:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd93c8bff9972cd88cf2f9dda0fb7e643f2169481cab231f9c06ea16de23b6e`  
		Last Modified: Wed, 08 May 2019 15:36:55 GMT  
		Size: 20.3 MB (20266795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba45d8f8af6dbf6f7310d13b3f99cd7d6de9b9cf5f90654cba630312fca0fc0`  
		Last Modified: Wed, 08 May 2019 15:36:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133712c55b091bcca7622f4dc8eeb302c252a3d78347fb4f4ceba82d5d0c3ee7`  
		Last Modified: Thu, 09 May 2019 07:53:50 GMT  
		Size: 19.6 MB (19566140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f11c1a55b61bd0460ecb4d86fd780ee50ef628f4fe394a3a6e8a616bb9e008`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2193991fe023c106000385917c17d2c603b0ee812c34c3a218d212845a9443`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f978a795d10d36832ac18959317d31da0d732e7873b90e7a58ffba68c193424`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4-debian-2`

```console
$ docker pull fluentd@sha256:14332dda0d38d07a810dd098a3978e6855740f25dd2c77aebd81437d5e424f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `fluentd:v1.4-debian-2` - linux; amd64

```console
$ docker pull fluentd@sha256:27f7c52b67062852060506a8a2ead64c663132b7faacc326e3281df1d2d12cad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70759976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bb1222dd6c7464b5c57f0a2ca96269dea20d58eb6ab32c4f3cdadd7ddebe6e`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:32:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:32:31 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 01:32:31 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 01:32:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 01:35:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 01:35:45 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 01:35:45 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 01:35:47 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 01:35:47 GMT
CMD ["irb"]
# Wed, 08 May 2019 08:24:15 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 08:24:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 08:24:16 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 08:26:45 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 08:26:47 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 08:26:47 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 08:26:47 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 08:26:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 08:26:48 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 08:26:48 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 08:26:48 GMT
USER fluent
# Wed, 08 May 2019 08:26:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 08:26:49 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f40e8c9fa4692b263a4693d43c516210c05dd9ed837b19f54046c7c1965a26`  
		Last Modified: Wed, 08 May 2019 01:59:40 GMT  
		Size: 11.2 MB (11172387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67f41fb8a11120c6ef93da2ba40676dcec8619019d957e066a70e3354698630`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d89c2bd9682f24a676f380aa0359172017a3a57721dfb49227b4ea0cd8d5ce`  
		Last Modified: Wed, 08 May 2019 01:59:41 GMT  
		Size: 19.9 MB (19903676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4e96c0ae601685b2806bf797b857db62399dd88479bd54d3b9fe4997b04838`  
		Last Modified: Wed, 08 May 2019 01:59:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b1a02e90dd221a44d766f717049ecede1fbb47d594b092652dc58c5d179230`  
		Last Modified: Wed, 08 May 2019 08:27:12 GMT  
		Size: 17.2 MB (17191537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3299973b1c04abfbacfb697b2722095956a7cd809c838e57fe92f71746918148`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c6d66530bdf87e0e8ef784ecc71c944c9e0769be209881e52f00909cc74da4`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c851ee4d2f29da7e51862ccd3d66e4f9d8e1bb101d692aa09ad8254293a1604e`  
		Last Modified: Wed, 08 May 2019 08:27:07 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:6cc4469316d4e76ebbc62d2a442487917fe2e5edfd19eb0a7a5eb39caa94c71d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66918144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b70ee6aaec1e628f8778ba6ffe8b8ea663c5b92d9be28317881ae0c345b4d5`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 08:53:38 GMT
ADD file:d9cc007a953434e1439cc534f397967f4f0f1bf149f1288a52f6209eca436852 in / 
# Wed, 08 May 2019 08:53:39 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:00:57 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:02 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 12:01:03 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 12:01:04 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 12:04:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 12:04:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 12:04:23 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:04:25 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 12:04:26 GMT
CMD ["irb"]
# Wed, 08 May 2019 17:06:45 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 17:06:46 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 17:06:46 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 17:09:28 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 17:09:30 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 17:09:31 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 17:09:31 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 17:09:32 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 17:09:32 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 17:09:33 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 17:09:33 GMT
USER fluent
# Wed, 08 May 2019 17:09:34 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 17:09:34 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:f23f9ce99dc288927adafc8d503252a16b6ea2b40c9cb0dca688223c56bd0235`  
		Last Modified: Wed, 08 May 2019 08:59:29 GMT  
		Size: 21.2 MB (21155863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706f94a64a34ca9d2b6b24bb8989e217cf2e7f790f2165d28579bc4fe45d90a8`  
		Last Modified: Wed, 08 May 2019 12:41:38 GMT  
		Size: 9.6 MB (9602563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9eecfb061ad8148013649b45d9cbe2f6235d8d5da8ac1a9640d73d96acd77c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e832425d7f0f4f1aa7e73fe199d50669f0f05959cf9b6c0c7e493035de37e53`  
		Last Modified: Wed, 08 May 2019 12:41:34 GMT  
		Size: 19.5 MB (19462424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69c75b03f1f6952da1040b40510fe556f535e344fa678119332af9d008590d0c`  
		Last Modified: Wed, 08 May 2019 12:41:29 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab4dc22532522a26e5c27c96e1d283e7c6d42dfb2f7cc90d96e43cba4267c34`  
		Last Modified: Wed, 08 May 2019 17:09:56 GMT  
		Size: 16.7 MB (16694216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fdad5150f63fdb6b5e1af278a56caadd1b702e0af861eca913c1744e398592`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7c86d9a21eb03363be953e7fb24779b8d8907d229cf0a0b796f248d7d455e5`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556f141927e2c28ab279cacd70d9a9142d5f88071c8a4b2e77ab248e393ce2ea`  
		Last Modified: Wed, 08 May 2019 17:09:50 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:ae2856f22df4c7d9a548f57ec1900341b42aec2f4ab776cbec3e9ffd01057e85
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64180499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a2a4abeadaa040291d85313fedcaff17e79430da6d3c293875e8b4e5f3a0d75`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 12:03:54 GMT
ADD file:7813549b5e7862c4d5ecec9e7d8da27b520dd2cc1433e66637c57bb695d4f55a in / 
# Wed, 08 May 2019 12:03:54 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:18:47 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:18:49 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 15:18:49 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 15:18:50 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 15:18:50 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:21:47 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:21:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:21:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:21:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:21:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:21:53 GMT
CMD ["irb"]
# Wed, 08 May 2019 18:31:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 08 May 2019 18:31:11 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 08 May 2019 18:31:11 GMT
ENV TINI_VERSION=0.18.0
# Wed, 08 May 2019 18:33:36 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 08 May 2019 18:33:38 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 08 May 2019 18:33:39 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 08 May 2019 18:33:39 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 08 May 2019 18:33:40 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 08 May 2019 18:33:40 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Wed, 08 May 2019 18:33:41 GMT
EXPOSE 24224 5140
# Wed, 08 May 2019 18:33:41 GMT
USER fluent
# Wed, 08 May 2019 18:33:42 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 08 May 2019 18:33:42 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:b0727b1ec48ef8920082aec023c050c83b563ae08080d9951d68fba55934bbd6`  
		Last Modified: Wed, 08 May 2019 12:10:01 GMT  
		Size: 19.3 MB (19276216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883ad28bff7da2b53988153cc95adba039b192a69fc5a701f4f5240f4b8259f5`  
		Last Modified: Wed, 08 May 2019 15:56:18 GMT  
		Size: 9.1 MB (9079671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c0921102dd5b98b2f366d8f6fca94539efdd6b8ad800a9b4fe6bf09795dde5`  
		Last Modified: Wed, 08 May 2019 15:56:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c32b08998d386d808218a000bc2c8dbed24d267afce9fc9aded07c8929bd1d8`  
		Last Modified: Wed, 08 May 2019 15:56:17 GMT  
		Size: 19.3 MB (19293216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b011e824c62e60688c8dd51b4256ce58d597dfbe4f8d82f1cb34ecd3744c7272`  
		Last Modified: Wed, 08 May 2019 15:56:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a0ee6e0741957e1af3aeaa58473a3c486163d2ce8912a196939c002f2d4080`  
		Last Modified: Wed, 08 May 2019 18:34:07 GMT  
		Size: 16.5 MB (16528312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07606276bb2a36513bfd2655c042b1a93bd0f50b41766e6460fbf5d8db0bac4`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 1.8 KB (1841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6973d9a23bd853569117e506b8816581192942936c857dd3e50d25335a5d2c`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfb459d67f8d421be825f628024d5a849aad541990ac9d85b6b39388289e8ba`  
		Last Modified: Wed, 08 May 2019 18:34:01 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:54b3753b690604fee242b2f62822fd301828005f82a8796b1aa32056db87e897
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67084985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9df8eaec3bb66b92a5e1f5b27e381d84146b599860b21ffd4fe744be7058abab`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:51:03 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:51:06 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 19:51:07 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 19:51:07 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 19:51:08 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 19:59:12 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 19:59:13 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 19:59:14 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 19:59:14 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:59:17 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 19:59:17 GMT
CMD ["irb"]
# Thu, 09 May 2019 08:09:07 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 08:09:08 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 08:09:09 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 08:16:00 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 08:16:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 08:16:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 08:16:14 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 08:16:15 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 08:16:16 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 08:16:17 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 08:16:18 GMT
USER fluent
# Thu, 09 May 2019 08:16:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 08:16:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e40ed04e76f31dacc59215435e22880e5c6cbdb80e96b74dbd88d67bd8a1ade`  
		Last Modified: Wed, 08 May 2019 20:39:06 GMT  
		Size: 9.9 MB (9919071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66911e4d74f1fa6b22c9677ca2c1d1f8858065437754e0f6061b6d77660daa39`  
		Last Modified: Wed, 08 May 2019 20:38:55 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751c9db1899c5e415771de547ae53987ef8d8cfca8028f062d1dc68957aef9a5`  
		Last Modified: Wed, 08 May 2019 20:39:05 GMT  
		Size: 19.7 MB (19665414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95dd936e2a338f55fc9f847e58c3bddaa5e41870d9d483dcf5814fb031011829`  
		Last Modified: Wed, 08 May 2019 20:38:55 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc6e8a42aecee11d837eeddac569215112de19eb5807b6e5629fb0f5fc336087`  
		Last Modified: Thu, 09 May 2019 08:16:43 GMT  
		Size: 17.2 MB (17163643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee21e7388f1337bf5bab4b80ded9f759f67024f98d6ca30684aae7763c0ae38`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 1.8 KB (1833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a173e04574d83ba5e01321237011ec9f2794e677ae65f726e1b6c146f5da770`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb344743f732e4b98ff62497929fc5d8a3576055d596924c0e06c40c137c817a`  
		Last Modified: Thu, 09 May 2019 08:16:37 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; 386

```console
$ docker pull fluentd@sha256:a7a9efdb69e64a5209bf18586ecf47ffccb18892d51a9941e5899a8257a57e42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73728107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:789d8a895e68e629a9ab70599b98620103679103c93c20834240f497fd8fa451`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 10:49:55 GMT
ADD file:32d77a56ac954d1cd433a660591f374200929db022f1d0cfcf99eb6ab9e1679c in / 
# Wed, 08 May 2019 10:49:55 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:52:10 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:52:11 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 19:52:11 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 19:52:12 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 19:52:12 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 19:55:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 19:55:22 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 19:55:22 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 19:55:22 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 19:55:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 19:55:23 GMT
CMD ["irb"]
# Thu, 09 May 2019 03:20:16 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 03:20:16 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 03:20:17 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 03:21:45 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 03:21:46 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 03:21:46 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 03:21:47 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 03:21:47 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 03:21:47 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 03:21:47 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 03:21:47 GMT
USER fluent
# Thu, 09 May 2019 03:21:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 03:21:48 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:3cf56ed221cf05f73233419fcc3a71b0afd424761fc83037e3a5cf101af5df46`  
		Last Modified: Wed, 08 May 2019 10:57:50 GMT  
		Size: 23.1 MB (23120843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044a37fadd7ede63d94cc815345783dfbc882ee603bd343c8b7b7fa16a4d0a23`  
		Last Modified: Wed, 08 May 2019 20:29:40 GMT  
		Size: 14.7 MB (14650570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc8a0010192299d2013689a4a73a52b06596101e7a0b4d13b13127b7c1b0fe7e`  
		Last Modified: Wed, 08 May 2019 20:29:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d471f361964ccee5a8b45ad792ae4e5f9b1c99d6bf40f887fcd48f9eaeef68ab`  
		Last Modified: Wed, 08 May 2019 20:29:39 GMT  
		Size: 19.4 MB (19438244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f71abfd128e0daa2eaaec97a42c16153146d7795f78e06e1ac9042c4549dad`  
		Last Modified: Wed, 08 May 2019 20:29:35 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde9b467010d9441e42d6398182ed470469f923de771949396f10ce17ddb9119`  
		Last Modified: Thu, 09 May 2019 03:22:07 GMT  
		Size: 16.5 MB (16515437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4446de6aa38c639d424cfb95fd979816c8b6d97fdc332a89b6d03b35644c063c`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 1.8 KB (1809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fa70ae013d43f072327acc5f834d4552b1dbe347e48257f2f9f4f919e515a2`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4259b4e6e1e38233368e97de982e68e8f67536c2f9629a9fcab1506ca9817dc6`  
		Last Modified: Thu, 09 May 2019 03:22:04 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; ppc64le

```console
$ docker pull fluentd@sha256:a0b05a377b144b473e3d0884e21f26024f7272bcdd6d4105c98aa7d26d52df6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70921787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21eb6b9a655a5830bd4c4403b223d4a676f6f70b454138951bd3305841d9fc7b`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 09:05:46 GMT
ADD file:fa23694e2ef3b1ff3ac824d7d18d6951725f7f1ebfd5350392edd91f6b90d89e in / 
# Wed, 08 May 2019 09:05:50 GMT
CMD ["bash"]
# Wed, 08 May 2019 15:36:00 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:36:15 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 15:36:20 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 15:36:26 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 15:36:32 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:50:54 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:51:01 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:51:07 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:51:13 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:51:23 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:51:28 GMT
CMD ["irb"]
# Thu, 09 May 2019 00:47:10 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 00:47:13 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 00:47:15 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 00:51:36 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 00:51:46 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 00:51:47 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 00:51:48 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 00:51:50 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 00:51:55 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 00:52:01 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 00:52:05 GMT
USER fluent
# Thu, 09 May 2019 00:52:09 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 00:52:12 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:64bfe8794b280a764f2e07634dce2977621d140ae17fb34a03635710e84c3dfb`  
		Last Modified: Wed, 08 May 2019 09:26:17 GMT  
		Size: 22.7 MB (22744914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f162df45f55ceec481c42898f89f67b15e8fb5ef88e8a90eda1f321d6d2b5558`  
		Last Modified: Wed, 08 May 2019 16:29:31 GMT  
		Size: 10.6 MB (10580030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b87d21da21e9b1169596b31eaad4db199c69a2b207f9f2f722a43b98081d29`  
		Last Modified: Wed, 08 May 2019 16:29:21 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e73960535e3b91efa4997723f8205e4134851a2ce733de71c21b50c1922fd`  
		Last Modified: Wed, 08 May 2019 16:29:32 GMT  
		Size: 20.1 MB (20102005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af66f738ebcda43f876808f04c238a66f92d53ea745875646b16059763c1179`  
		Last Modified: Wed, 08 May 2019 16:29:21 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833ac9e555758fa6d7d50239241df7544e334e6b319bc67ccf2206a1f296a1c2`  
		Last Modified: Thu, 09 May 2019 00:52:33 GMT  
		Size: 17.5 MB (17491736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9d4f338433cc63e5b106e75754134e728ba0afec2128557c5fc503e9b60951`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 1.9 KB (1858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbebb1212359eb030e85fd079b8d65342ac478ddd8a95cd38f0f5a1cb4fb0c2d`  
		Last Modified: Thu, 09 May 2019 00:52:28 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b70e41b18a4d9c37db34a96ad42e51e4de2fe2a079bb18d19e2c0961f1dc7a`  
		Last Modified: Thu, 09 May 2019 00:52:27 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; s390x

```console
$ docker pull fluentd@sha256:16e6475b1062157f7e4a259aa8082aaca064880e61a5b7b9c0f645ed0931b88a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73753160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d4500f13edfce0335703f60f837b3ddc403e0089283a05b040d9a29e676511`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 08 May 2019 11:47:01 GMT
ADD file:94f3707604bb7173eb9661df1719a395e39e97c32d08f5fc146b79dcee237fd8 in / 
# Wed, 08 May 2019 11:47:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 14:54:58 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:55:00 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 08 May 2019 14:55:00 GMT
ENV RUBY_MAJOR=2.6
# Wed, 08 May 2019 14:55:00 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 08 May 2019 14:55:01 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 08 May 2019 15:01:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 08 May 2019 15:01:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 15:01:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 15:01:26 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 15:01:27 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 08 May 2019 15:01:28 GMT
CMD ["irb"]
# Thu, 09 May 2019 07:45:53 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Thu, 09 May 2019 07:45:54 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Thu, 09 May 2019 07:45:55 GMT
ENV TINI_VERSION=0.18.0
# Thu, 09 May 2019 07:52:19 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Thu, 09 May 2019 07:52:29 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Thu, 09 May 2019 07:52:31 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Thu, 09 May 2019 07:52:33 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Thu, 09 May 2019 07:52:34 GMT
ENV FLUENTD_CONF=fluent.conf
# Thu, 09 May 2019 07:52:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Thu, 09 May 2019 07:52:37 GMT
EXPOSE 24224 5140
# Thu, 09 May 2019 07:52:39 GMT
USER fluent
# Thu, 09 May 2019 07:52:40 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Thu, 09 May 2019 07:52:41 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:e9681d6b3f0fb55b5da73b567906eaac580ed39b3428e95f839a34da054b5e37`  
		Last Modified: Wed, 08 May 2019 11:52:38 GMT  
		Size: 22.3 MB (22338869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2c8c7ed37c50d7f76e5e518eb10ff7fed7c0d8032ffd470a1f78d75afb12569`  
		Last Modified: Wed, 08 May 2019 15:36:55 GMT  
		Size: 11.6 MB (11578323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9480b3fe529066a7187cfe4da118b2a354410941209d266e93fcfaa97ad4bc4b`  
		Last Modified: Wed, 08 May 2019 15:36:49 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd93c8bff9972cd88cf2f9dda0fb7e643f2169481cab231f9c06ea16de23b6e`  
		Last Modified: Wed, 08 May 2019 15:36:55 GMT  
		Size: 20.3 MB (20266795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba45d8f8af6dbf6f7310d13b3f99cd7d6de9b9cf5f90654cba630312fca0fc0`  
		Last Modified: Wed, 08 May 2019 15:36:50 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:133712c55b091bcca7622f4dc8eeb302c252a3d78347fb4f4ceba82d5d0c3ee7`  
		Last Modified: Thu, 09 May 2019 07:53:50 GMT  
		Size: 19.6 MB (19566140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f11c1a55b61bd0460ecb4d86fd780ee50ef628f4fe394a3a6e8a616bb9e008`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 1.8 KB (1823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2193991fe023c106000385917c17d2c603b0ee812c34c3a218d212845a9443`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f978a795d10d36832ac18959317d31da0d732e7873b90e7a58ffba68c193424`  
		Last Modified: Thu, 09 May 2019 07:53:33 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
