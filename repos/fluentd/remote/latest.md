## `fluentd:latest`

```console
$ docker pull fluentd@sha256:ca0ddbdf06c2b19f002e1630f10c7fc35270a94268402b579b77d467d19b953d
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
$ docker pull fluentd@sha256:3956402a924f9d22ca7ed36bfa4cbb4c4764870594da367416490427d8435248
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13927881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967e4ff4c05f4f0721871e5e2ddcc4eb178b3c6f209304ebf1f554670c7cd2d9`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 22:09:23 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 19 Jun 2019 22:09:24 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 19 Jun 2019 22:10:24 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 19 Jun 2019 22:10:27 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 19 Jun 2019 22:10:28 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 19 Jun 2019 22:10:28 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 19 Jun 2019 22:10:29 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 19 Jun 2019 22:10:29 GMT
ENV LD_PRELOAD=
# Wed, 19 Jun 2019 22:10:30 GMT
EXPOSE 24224 5140
# Wed, 19 Jun 2019 22:10:30 GMT
USER fluent
# Wed, 19 Jun 2019 22:10:31 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 19 Jun 2019 22:10:32 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1718ec01d614ae6fce2d51628afff458943f6c5df2b3826086aebaf5cab8bc`  
		Last Modified: Wed, 19 Jun 2019 22:10:52 GMT  
		Size: 11.2 MB (11236884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f3237559007dd111d59cd000143b9bc3820d69ffee5f55c514d18c36099f26`  
		Last Modified: Wed, 19 Jun 2019 22:10:51 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140ce7869f29ef2269429ab899b9408c5def0d9f60287e5985fc04786e032d56`  
		Last Modified: Wed, 19 Jun 2019 22:10:51 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00973b30639edff0edbf39280d0d817683018a743fde67ad2bf2ae9917d79e32`  
		Last Modified: Wed, 19 Jun 2019 22:10:51 GMT  
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
$ docker pull fluentd@sha256:d34896a5daeb625c682d8a9c84776790cba7649442219d084ff5119c5b31af01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14404701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e129f2612434ab0fd7bf237e79942a048b77275d0a31f859410e90928c46458d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:35 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Wed, 19 Jun 2019 21:20:36 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 23:01:43 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Wed, 19 Jun 2019 23:01:45 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Wed, 19 Jun 2019 23:02:36 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Wed, 19 Jun 2019 23:02:45 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Wed, 19 Jun 2019 23:02:46 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Wed, 19 Jun 2019 23:02:47 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Wed, 19 Jun 2019 23:02:48 GMT
ENV FLUENTD_CONF=fluent.conf
# Wed, 19 Jun 2019 23:02:51 GMT
ENV LD_PRELOAD=
# Wed, 19 Jun 2019 23:02:52 GMT
EXPOSE 24224 5140
# Wed, 19 Jun 2019 23:02:54 GMT
USER fluent
# Wed, 19 Jun 2019 23:02:56 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Wed, 19 Jun 2019 23:02:58 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553800d6a2218b0ded84e99f7ff1941bc0f9a4e92b045a3bc2e4ff5ba9b5d0ef`  
		Last Modified: Wed, 19 Jun 2019 23:03:22 GMT  
		Size: 11.6 MB (11621462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c9f23d05f80c2aa1476f499c4957d89cbf2b5054a0e71014c3d7b6fc2a1fbc`  
		Last Modified: Wed, 19 Jun 2019 23:03:17 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3b461ffedba5d11cce890a4cf8579c6191b8b9dc22357d6bd89b41f1d9036a8`  
		Last Modified: Wed, 19 Jun 2019 23:03:18 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb19ff18c1f86e62d77ca7888055ed0467fdb566dd3098cda51901d8b7b4c2f`  
		Last Modified: Wed, 19 Jun 2019 23:03:17 GMT  
		Size: 447.0 B  
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
