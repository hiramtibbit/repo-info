<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.4-2`](#fluentdv14-2)
-	[`fluentd:v1.4.2-2.0`](#fluentdv142-20)
-	[`fluentd:v1.4.2-debian-2.0`](#fluentdv142-debian-20)
-	[`fluentd:v1.4-debian-2`](#fluentdv14-debian-2)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:0c090ac54eb40fbf12c45ddc4870e4d92c65049efd10e567fb6855338c7a9e9e
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
$ docker pull fluentd@sha256:acebb0918f43571d032367f763acedc899e0e85a7f6b5856b00146f2c076b77f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636b179eae293b62002f3e3e355066820e053c722075bc44bd208ce4b8c032cf`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Fri, 26 Apr 2019 22:19:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Fri, 26 Apr 2019 22:20:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 26 Apr 2019 22:20:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 26 Apr 2019 22:20:01 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Fri, 26 Apr 2019 22:20:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 26 Apr 2019 22:20:01 GMT
ENV LD_PRELOAD=
# Fri, 26 Apr 2019 22:20:01 GMT
EXPOSE 24224 5140
# Fri, 26 Apr 2019 22:20:01 GMT
USER fluent
# Fri, 26 Apr 2019 22:20:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 26 Apr 2019 22:20:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e13149df06a4e473d921d20fee829da5d0d3f9438c0d17e4a5aeedeee6ad9b`  
		Last Modified: Fri, 26 Apr 2019 22:22:56 GMT  
		Size: 11.2 MB (11233591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d745dd9192f8045ab1831821909b6794af3ecd0f5d87fbf5bcac6045d7e67`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ac1fc1d9ccf10a671f88982ce55dcbfd8006373cefd0c69dc2131dae91d579`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54828fd27087c1d7862bef14dd84237d668521766695f41c7e199dee7bc3419d`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:470e6825ca3b785470d56f94d64eafe1f17a9598cbbf41cd478eb84e7511dbc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13450166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bb85a1348b4732f24e0e8e44c3d2fbc17d65c3c09b9412a94567953a4c99d1`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 07:49:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 07:49:22 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 07:50:33 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 07:50:35 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 07:50:36 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 07:50:37 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 07:50:37 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 07:50:38 GMT
USER fluent
# Sat, 27 Apr 2019 07:50:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 07:50:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1fad80e0e8dffd05f042a9b10249c979152cf009c60f7bf2c2a5216093ac98`  
		Last Modified: Sat, 27 Apr 2019 07:51:02 GMT  
		Size: 10.9 MB (10904509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf77fdfd1fde9c1d6cea4d8f0beac13b6060eef38e6ba0d2dbae9a65c7fd979c`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1274407682e1d7b56d408e5d056940474eb691bb9504ea8de34675871b6fa`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f80e07748f0aaa3d03050c9fbbfbf70edd61ac7e39717ead15af57bf13f4976`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:365bf1a2dd5d3eb12d8545cb8af2569050baa23733a68bc3d159af75b279cd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13922438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a80969fc319b1e22e3bbb9bb358df8aecb624791d36ecdd3ae9a6baa690f33`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:43:13 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:43:16 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:43:16 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:43:17 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:43:17 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:43:18 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:43:19 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:43:19 GMT
USER fluent
# Sat, 27 Apr 2019 08:43:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:43:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d980a0eed9bda040b4e28e826441e7f3182408b5ca2661ccb4810352acdaea`  
		Last Modified: Sat, 27 Apr 2019 08:48:50 GMT  
		Size: 11.2 MB (11231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3082f11c3f46e3a358d54c740ab6ecb90803a7077f32e82c9bf6dd7ab1bcd9`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b06af55d12d6469ac7e2432320bfb8e1e4fae86a37938720be63f05f72948`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f6feb181c6710fe5c2e1b71370cbcfb414c4f6478e78da40b0bd3ec132228`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; 386

```console
$ docker pull fluentd@sha256:4113a0d890f38f9d17de30d02ba879de178764df84747d6efa414c743ba3e7e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13898518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df556bf467211e5f4d2d5a1405323ddacd9c3269205ce71b8b2c27b96c66be74`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 10:44:19 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 10:44:20 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 10:44:20 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 10:44:21 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 10:44:21 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 10:44:21 GMT
USER fluent
# Sat, 27 Apr 2019 10:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 10:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743bc6c22c6a43442f03f4f87ecc831f60a5ea14f074cb47f9ade9110c299c26`  
		Last Modified: Sat, 27 Apr 2019 10:46:18 GMT  
		Size: 11.1 MB (11144189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedef7e8d812c838077788aca04c9ff2150ce297d44eb49088fdafcaf3bff5dc`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38b850c724908476528ec2eebeb7aa4876dd01f0fa5633a5e8142a9b2efb41d`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479f852a8100c0e32c400035d126ec45f6dc3e27e532c8eaad8ed8cc55c95b34`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; ppc64le

```console
$ docker pull fluentd@sha256:db2716f2b46d5f55db00a0ee6855cf1725e45b7f724abde54be790e67c4385db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703f8ee78efbf14e42f621a51a23a0e3e94cae6541323779726dc54a9fc6583d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:37:22 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:37:25 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:38:24 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:38:33 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:38:34 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:38:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:38:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:38:41 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:38:43 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:38:46 GMT
USER fluent
# Sat, 27 Apr 2019 08:38:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:38:51 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1872615ec51f765008bb68411b57af097468ff2178e87374163aef59fcb1ae`  
		Last Modified: Sat, 27 Apr 2019 08:44:03 GMT  
		Size: 11.6 MB (11617920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36452309e0a2d591171c2a0dcf89896ba8ca56d3bdc6ae79cbffdbbdf743ca3`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b2326b622ae554b97df1f6c7020ecde7b02e64c7f3a7936f273d65ca534835`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d8beca48c32b892afeec83feeaef47ac1d48e4fd8bb707c7d4295d03ff1643`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:latest` - linux; s390x

```console
$ docker pull fluentd@sha256:36397cbf3387e6daabe0c4a87214ceadd61427777ddd94176c13c383a275d3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13904732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4821da075d02e89022f5aa14a9fd8e58b9e8063d02f7267d04239856f7d7e2a4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:42:41 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 11:42:45 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 11:42:45 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 11:42:46 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 11:42:46 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 11:42:47 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 11:42:48 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 11:42:49 GMT
USER fluent
# Sat, 27 Apr 2019 11:42:50 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 11:42:50 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641b3bd07969fe864d82f770b0646412d7506c39a2c10c2b8f256ad26088dae5`  
		Last Modified: Sat, 27 Apr 2019 11:47:48 GMT  
		Size: 11.4 MB (11359233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901a6c4ffd293822fcdcef69062c3b8d8678722317f4e1d228acc3009bd9266d`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19439ec7cdbcc3ea2b62bad58b3d014d2f40848e012fe2bbf3e98654466ff464`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf96bc1b46b7cf59b39b6d60ccf82918b6b41169f4f152f234a4fdfefa1651b`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4-2`

```console
$ docker pull fluentd@sha256:0c090ac54eb40fbf12c45ddc4870e4d92c65049efd10e567fb6855338c7a9e9e
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
$ docker pull fluentd@sha256:acebb0918f43571d032367f763acedc899e0e85a7f6b5856b00146f2c076b77f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636b179eae293b62002f3e3e355066820e053c722075bc44bd208ce4b8c032cf`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Fri, 26 Apr 2019 22:19:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Fri, 26 Apr 2019 22:20:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 26 Apr 2019 22:20:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 26 Apr 2019 22:20:01 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Fri, 26 Apr 2019 22:20:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 26 Apr 2019 22:20:01 GMT
ENV LD_PRELOAD=
# Fri, 26 Apr 2019 22:20:01 GMT
EXPOSE 24224 5140
# Fri, 26 Apr 2019 22:20:01 GMT
USER fluent
# Fri, 26 Apr 2019 22:20:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 26 Apr 2019 22:20:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e13149df06a4e473d921d20fee829da5d0d3f9438c0d17e4a5aeedeee6ad9b`  
		Last Modified: Fri, 26 Apr 2019 22:22:56 GMT  
		Size: 11.2 MB (11233591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d745dd9192f8045ab1831821909b6794af3ecd0f5d87fbf5bcac6045d7e67`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ac1fc1d9ccf10a671f88982ce55dcbfd8006373cefd0c69dc2131dae91d579`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54828fd27087c1d7862bef14dd84237d668521766695f41c7e199dee7bc3419d`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:470e6825ca3b785470d56f94d64eafe1f17a9598cbbf41cd478eb84e7511dbc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13450166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bb85a1348b4732f24e0e8e44c3d2fbc17d65c3c09b9412a94567953a4c99d1`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 07:49:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 07:49:22 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 07:50:33 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 07:50:35 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 07:50:36 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 07:50:37 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 07:50:37 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 07:50:38 GMT
USER fluent
# Sat, 27 Apr 2019 07:50:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 07:50:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1fad80e0e8dffd05f042a9b10249c979152cf009c60f7bf2c2a5216093ac98`  
		Last Modified: Sat, 27 Apr 2019 07:51:02 GMT  
		Size: 10.9 MB (10904509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf77fdfd1fde9c1d6cea4d8f0beac13b6060eef38e6ba0d2dbae9a65c7fd979c`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1274407682e1d7b56d408e5d056940474eb691bb9504ea8de34675871b6fa`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f80e07748f0aaa3d03050c9fbbfbf70edd61ac7e39717ead15af57bf13f4976`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:365bf1a2dd5d3eb12d8545cb8af2569050baa23733a68bc3d159af75b279cd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13922438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a80969fc319b1e22e3bbb9bb358df8aecb624791d36ecdd3ae9a6baa690f33`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:43:13 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:43:16 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:43:16 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:43:17 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:43:17 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:43:18 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:43:19 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:43:19 GMT
USER fluent
# Sat, 27 Apr 2019 08:43:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:43:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d980a0eed9bda040b4e28e826441e7f3182408b5ca2661ccb4810352acdaea`  
		Last Modified: Sat, 27 Apr 2019 08:48:50 GMT  
		Size: 11.2 MB (11231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3082f11c3f46e3a358d54c740ab6ecb90803a7077f32e82c9bf6dd7ab1bcd9`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b06af55d12d6469ac7e2432320bfb8e1e4fae86a37938720be63f05f72948`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f6feb181c6710fe5c2e1b71370cbcfb414c4f6478e78da40b0bd3ec132228`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; 386

```console
$ docker pull fluentd@sha256:4113a0d890f38f9d17de30d02ba879de178764df84747d6efa414c743ba3e7e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13898518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df556bf467211e5f4d2d5a1405323ddacd9c3269205ce71b8b2c27b96c66be74`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 10:44:19 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 10:44:20 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 10:44:20 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 10:44:21 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 10:44:21 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 10:44:21 GMT
USER fluent
# Sat, 27 Apr 2019 10:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 10:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743bc6c22c6a43442f03f4f87ecc831f60a5ea14f074cb47f9ade9110c299c26`  
		Last Modified: Sat, 27 Apr 2019 10:46:18 GMT  
		Size: 11.1 MB (11144189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedef7e8d812c838077788aca04c9ff2150ce297d44eb49088fdafcaf3bff5dc`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38b850c724908476528ec2eebeb7aa4876dd01f0fa5633a5e8142a9b2efb41d`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479f852a8100c0e32c400035d126ec45f6dc3e27e532c8eaad8ed8cc55c95b34`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; ppc64le

```console
$ docker pull fluentd@sha256:db2716f2b46d5f55db00a0ee6855cf1725e45b7f724abde54be790e67c4385db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703f8ee78efbf14e42f621a51a23a0e3e94cae6541323779726dc54a9fc6583d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:37:22 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:37:25 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:38:24 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:38:33 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:38:34 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:38:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:38:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:38:41 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:38:43 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:38:46 GMT
USER fluent
# Sat, 27 Apr 2019 08:38:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:38:51 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1872615ec51f765008bb68411b57af097468ff2178e87374163aef59fcb1ae`  
		Last Modified: Sat, 27 Apr 2019 08:44:03 GMT  
		Size: 11.6 MB (11617920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36452309e0a2d591171c2a0dcf89896ba8ca56d3bdc6ae79cbffdbbdf743ca3`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b2326b622ae554b97df1f6c7020ecde7b02e64c7f3a7936f273d65ca534835`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d8beca48c32b892afeec83feeaef47ac1d48e4fd8bb707c7d4295d03ff1643`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-2` - linux; s390x

```console
$ docker pull fluentd@sha256:36397cbf3387e6daabe0c4a87214ceadd61427777ddd94176c13c383a275d3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13904732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4821da075d02e89022f5aa14a9fd8e58b9e8063d02f7267d04239856f7d7e2a4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:42:41 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 11:42:45 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 11:42:45 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 11:42:46 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 11:42:46 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 11:42:47 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 11:42:48 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 11:42:49 GMT
USER fluent
# Sat, 27 Apr 2019 11:42:50 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 11:42:50 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641b3bd07969fe864d82f770b0646412d7506c39a2c10c2b8f256ad26088dae5`  
		Last Modified: Sat, 27 Apr 2019 11:47:48 GMT  
		Size: 11.4 MB (11359233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901a6c4ffd293822fcdcef69062c3b8d8678722317f4e1d228acc3009bd9266d`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19439ec7cdbcc3ea2b62bad58b3d014d2f40848e012fe2bbf3e98654466ff464`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf96bc1b46b7cf59b39b6d60ccf82918b6b41169f4f152f234a4fdfefa1651b`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4.2-2.0`

```console
$ docker pull fluentd@sha256:0c090ac54eb40fbf12c45ddc4870e4d92c65049efd10e567fb6855338c7a9e9e
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
$ docker pull fluentd@sha256:acebb0918f43571d032367f763acedc899e0e85a7f6b5856b00146f2c076b77f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13992764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636b179eae293b62002f3e3e355066820e053c722075bc44bd208ce4b8c032cf`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 26 Apr 2019 22:19:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Fri, 26 Apr 2019 22:19:59 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Fri, 26 Apr 2019 22:20:00 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 26 Apr 2019 22:20:00 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 26 Apr 2019 22:20:01 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Fri, 26 Apr 2019 22:20:01 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 26 Apr 2019 22:20:01 GMT
ENV LD_PRELOAD=
# Fri, 26 Apr 2019 22:20:01 GMT
EXPOSE 24224 5140
# Fri, 26 Apr 2019 22:20:01 GMT
USER fluent
# Fri, 26 Apr 2019 22:20:01 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 26 Apr 2019 22:20:02 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e13149df06a4e473d921d20fee829da5d0d3f9438c0d17e4a5aeedeee6ad9b`  
		Last Modified: Fri, 26 Apr 2019 22:22:56 GMT  
		Size: 11.2 MB (11233591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012d745dd9192f8045ab1831821909b6794af3ecd0f5d87fbf5bcac6045d7e67`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ac1fc1d9ccf10a671f88982ce55dcbfd8006373cefd0c69dc2131dae91d579`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54828fd27087c1d7862bef14dd84237d668521766695f41c7e199dee7bc3419d`  
		Last Modified: Fri, 26 Apr 2019 22:22:54 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; arm variant v6

```console
$ docker pull fluentd@sha256:470e6825ca3b785470d56f94d64eafe1f17a9598cbbf41cd478eb84e7511dbc9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.5 MB (13450166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bb85a1348b4732f24e0e8e44c3d2fbc17d65c3c09b9412a94567953a4c99d1`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 07:49:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 07:49:22 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 07:50:33 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 07:50:35 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 07:50:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 07:50:36 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 07:50:37 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 07:50:37 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 07:50:38 GMT
USER fluent
# Sat, 27 Apr 2019 07:50:38 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 07:50:38 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1fad80e0e8dffd05f042a9b10249c979152cf009c60f7bf2c2a5216093ac98`  
		Last Modified: Sat, 27 Apr 2019 07:51:02 GMT  
		Size: 10.9 MB (10904509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf77fdfd1fde9c1d6cea4d8f0beac13b6060eef38e6ba0d2dbae9a65c7fd979c`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 1.4 KB (1365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1274407682e1d7b56d408e5d056940474eb691bb9504ea8de34675871b6fa`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f80e07748f0aaa3d03050c9fbbfbf70edd61ac7e39717ead15af57bf13f4976`  
		Last Modified: Sat, 27 Apr 2019 07:50:55 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:365bf1a2dd5d3eb12d8545cb8af2569050baa23733a68bc3d159af75b279cd1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13922438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a80969fc319b1e22e3bbb9bb358df8aecb624791d36ecdd3ae9a6baa690f33`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:41:42 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:43:13 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:43:16 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:43:16 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:43:17 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:43:17 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:43:18 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:43:19 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:43:19 GMT
USER fluent
# Sat, 27 Apr 2019 08:43:20 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:43:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d980a0eed9bda040b4e28e826441e7f3182408b5ca2661ccb4810352acdaea`  
		Last Modified: Sat, 27 Apr 2019 08:48:50 GMT  
		Size: 11.2 MB (11231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3082f11c3f46e3a358d54c740ab6ecb90803a7077f32e82c9bf6dd7ab1bcd9`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657b06af55d12d6469ac7e2432320bfb8e1e4fae86a37938720be63f05f72948`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f6feb181c6710fe5c2e1b71370cbcfb414c4f6478e78da40b0bd3ec132228`  
		Last Modified: Sat, 27 Apr 2019 08:48:43 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; 386

```console
$ docker pull fluentd@sha256:4113a0d890f38f9d17de30d02ba879de178764df84747d6efa414c743ba3e7e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13898518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df556bf467211e5f4d2d5a1405323ddacd9c3269205ce71b8b2c27b96c66be74`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 10:43:44 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 10:44:19 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 10:44:20 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 10:44:20 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 10:44:20 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 10:44:21 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 10:44:21 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 10:44:21 GMT
USER fluent
# Sat, 27 Apr 2019 10:44:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 10:44:21 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:743bc6c22c6a43442f03f4f87ecc831f60a5ea14f074cb47f9ade9110c299c26`  
		Last Modified: Sat, 27 Apr 2019 10:46:18 GMT  
		Size: 11.1 MB (11144189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedef7e8d812c838077788aca04c9ff2150ce297d44eb49088fdafcaf3bff5dc`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38b850c724908476528ec2eebeb7aa4876dd01f0fa5633a5e8142a9b2efb41d`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479f852a8100c0e32c400035d126ec45f6dc3e27e532c8eaad8ed8cc55c95b34`  
		Last Modified: Sat, 27 Apr 2019 10:46:15 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:db2716f2b46d5f55db00a0ee6855cf1725e45b7f724abde54be790e67c4385db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.4 MB (14401162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703f8ee78efbf14e42f621a51a23a0e3e94cae6541323779726dc54a9fc6583d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 08:37:22 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:37:25 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:38:24 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:38:33 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:38:34 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:38:36 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:38:39 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:38:41 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 08:38:43 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:38:46 GMT
USER fluent
# Sat, 27 Apr 2019 08:38:48 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:38:51 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1872615ec51f765008bb68411b57af097468ff2178e87374163aef59fcb1ae`  
		Last Modified: Sat, 27 Apr 2019 08:44:03 GMT  
		Size: 11.6 MB (11617920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36452309e0a2d591171c2a0dcf89896ba8ca56d3bdc6ae79cbffdbbdf743ca3`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b2326b622ae554b97df1f6c7020ecde7b02e64c7f3a7936f273d65ca534835`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d8beca48c32b892afeec83feeaef47ac1d48e4fd8bb707c7d4295d03ff1643`  
		Last Modified: Sat, 27 Apr 2019 08:43:52 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-2.0` - linux; s390x

```console
$ docker pull fluentd@sha256:36397cbf3387e6daabe0c4a87214ceadd61427777ddd94176c13c383a275d3f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13904732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4821da075d02e89022f5aa14a9fd8e58b9e8063d02f7267d04239856f7d7e2a4`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:41:39 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:42:41 GMT
RUN apk update  && apk add --no-cache         ca-certificates         ruby ruby-irb ruby-etc ruby-webrick         tini  && apk add --no-cache --virtual .build-deps         build-base         ruby-dev gnupg  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && gem install bigdecimal -v 1.3.5  && apk del .build-deps  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 11:42:45 GMT
RUN addgroup -S fluent && adduser -S -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 11:42:45 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 11:42:46 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 11:42:46 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 11:42:47 GMT
ENV LD_PRELOAD=
# Sat, 27 Apr 2019 11:42:48 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 11:42:49 GMT
USER fluent
# Sat, 27 Apr 2019 11:42:50 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 11:42:50 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641b3bd07969fe864d82f770b0646412d7506c39a2c10c2b8f256ad26088dae5`  
		Last Modified: Sat, 27 Apr 2019 11:47:48 GMT  
		Size: 11.4 MB (11359233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901a6c4ffd293822fcdcef69062c3b8d8678722317f4e1d228acc3009bd9266d`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19439ec7cdbcc3ea2b62bad58b3d014d2f40848e012fe2bbf3e98654466ff464`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 409.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf96bc1b46b7cf59b39b6d60ccf82918b6b41169f4f152f234a4fdfefa1651b`  
		Last Modified: Sat, 27 Apr 2019 11:47:41 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4.2-debian-2.0`

```console
$ docker pull fluentd@sha256:61ef9f443b92e81ef0dfc55546854369d6bc4e7365e2bf84fb58c8260aa4e28f
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
$ docker pull fluentd@sha256:2abf1348a6b7fb10f7fa691b8580b2ad421c103fbdf0f66b6d93aa34d2b8287d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70766833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd75a4a38daa057b06e72e3de8c1124da07a45ccfc9112001b844aa952c477d1`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:32:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:32:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 10:32:21 GMT
ENV RUBY_MAJOR=2.6
# Wed, 17 Apr 2019 23:39:23 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 17 Apr 2019 23:39:24 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 17 Apr 2019 23:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 17 Apr 2019 23:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Apr 2019 23:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Apr 2019 23:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Apr 2019 23:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Apr 2019 23:44:03 GMT
CMD ["irb"]
# Fri, 26 Apr 2019 22:20:07 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 26 Apr 2019 22:21:00 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Fri, 26 Apr 2019 22:21:00 GMT
ENV TINI_VERSION=0.18.0
# Fri, 26 Apr 2019 22:22:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Fri, 26 Apr 2019 22:22:35 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 26 Apr 2019 22:22:35 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 26 Apr 2019 22:22:35 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Fri, 26 Apr 2019 22:22:35 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 26 Apr 2019 22:22:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Fri, 26 Apr 2019 22:22:36 GMT
EXPOSE 24224 5140
# Fri, 26 Apr 2019 22:22:36 GMT
USER fluent
# Fri, 26 Apr 2019 22:22:36 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 26 Apr 2019 22:22:36 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b0f1e21cda3d97cc441fdf11e7f99ec7b60e2014369b721ee5c87c4f7dc5d`  
		Last Modified: Wed, 27 Mar 2019 11:45:11 GMT  
		Size: 11.2 MB (11172380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c865bf2b94447e89b17356ad091d6a1419cc7b9c2bb80128638ed321b90545ba`  
		Last Modified: Wed, 27 Mar 2019 11:45:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6700f885814fce61f4e281d101a8996ab60bf27a4333009e6cf4f8b909c1e`  
		Last Modified: Wed, 17 Apr 2019 23:54:50 GMT  
		Size: 19.9 MB (19903806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de598c10ce0b661e60f04c3260eb3ec54f7e56ad36843977f5a874e62ed62ecf`  
		Last Modified: Wed, 17 Apr 2019 23:54:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb9cba98b11e238fd3127268b2b638f92f54d5a4835af00f50192670669f8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:07 GMT  
		Size: 17.2 MB (17191575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8c3aea724abcb399d7afbce0c030f9b69b000f4b264b18e334557875dcb4a3`  
		Last Modified: Fri, 26 Apr 2019 22:23:00 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0da36c073b42874cef134422700ff3b6d30c4d0d2e96a51d2c51b5c05e7c9a7`  
		Last Modified: Fri, 26 Apr 2019 22:23:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3845a63bb2d273a52a5a854077d8e7b6fc4d2b3f3c501b6124b8313b1650aed`  
		Last Modified: Fri, 26 Apr 2019 22:23:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:7fcbf444cd161ce61cbafb2b54132c74889989aed581dd2e625a64c62d7ae31d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66922627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f64e05c44b1a6c877f2149ef7b5ed81758e476581a08026f8ec84d7e786d53`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:28:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:28:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:28:30 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 08:52:49 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 08:52:49 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 08:56:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 08:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 08:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 08:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 08:56:02 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 08:56:02 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:48:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:48:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:48:22 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:51:05 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:51:06 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:51:07 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:51:07 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:51:08 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:51:08 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:51:08 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:51:09 GMT
USER fluent
# Sat, 27 Apr 2019 08:51:09 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:51:09 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2540bbb15025b94717408aae8e14383a9e0ac42948adbc9cb1cd3c692660b39`  
		Last Modified: Wed, 27 Mar 2019 13:31:28 GMT  
		Size: 9.6 MB (9602530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b477cfb3d6d378f0fc6f95748a1825076bf55cd19490b6bfefdc91508742bdb`  
		Last Modified: Wed, 27 Mar 2019 13:31:22 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809fb66a8a5f82db379390c2f90477e7abc59ecf9d33119afb247e7d067844d`  
		Last Modified: Thu, 18 Apr 2019 08:57:25 GMT  
		Size: 19.5 MB (19462077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8f0b34461657641fec4c9fa1920437b02a01bb8f84f09395b6e784f23828f3`  
		Last Modified: Thu, 18 Apr 2019 08:57:20 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de85e4bbf605ced7c5469bc37bd6a2c727015f5d2542fd66f35c6f02ae32cbd`  
		Last Modified: Sat, 27 Apr 2019 08:51:31 GMT  
		Size: 16.7 MB (16694273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37855651bf66660764ccf809614bb01c4b90d4e1005bfea371adebcabfd2c83`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50582a7e27051ccdc235f40732bc473c8113b895aef4adf1c69aa95504765702`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b944c82c53e8cc4927bd7f69a704c2390465fa79fe15f1a821a6ae6c6555aa53`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:450085566badbaff3b156bc767b1db7937c45a9393da82bba59db57336445152
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64186362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8697904f4969c9f50c31bbe54f1dc5ac1b641311fa2fe101bed7de04515e09dd`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 11:57:25 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:57:26 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:57:26 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 12:00:06 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 12:00:07 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 12:00:08 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 12:00:08 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 12:00:09 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 12:00:09 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 12:00:10 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 12:00:10 GMT
USER fluent
# Sat, 27 Apr 2019 12:00:11 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 12:00:11 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dd51a056cd8d138974dae5480a5435b1a6a2c10cab58d0a7cc8c765b888911`  
		Last Modified: Sat, 27 Apr 2019 12:00:35 GMT  
		Size: 16.5 MB (16528456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981a33055afc8359d810b997bb89900ae1cc5012623f033df90f175eb3258024`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71e73c464886439f12b14f0d73aeb8b72527a77d46d2e6bf37cd26a805f64e9`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4028dee228dff909731dc32c8573e694a5430b813cde5554a08f089c7c4915b`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:6721beb1df03344553daee0307384b75d3dda0f644effcfc0e30623c258fb839
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67090917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5b2d2704cfe388d13d7af56f1d096856245a48317bb9a123b1f381499a639d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:43:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:43:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:43:31 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:48:11 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:48:15 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:48:16 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:48:17 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:48:18 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:48:19 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:48:20 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:48:21 GMT
USER fluent
# Sat, 27 Apr 2019 08:48:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:48:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b73fb364013e344cd875b4d25559a58aa0c226be334a9ae1cbf045039b4ab0`  
		Last Modified: Sat, 27 Apr 2019 08:49:12 GMT  
		Size: 17.2 MB (17163444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0cc3b9c4b48c956115853e4e2dbf05e6bab48e38c746fce5e30e6aff9e2d61`  
		Last Modified: Sat, 27 Apr 2019 08:49:01 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9853e0b328e92b8d6266847db22012b6842fa4b49ae822a3461343b2d41dcb`  
		Last Modified: Sat, 27 Apr 2019 08:49:01 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c984ad367b3ca25e8133dd7ffe5393ee5efe97334c855f2b57591149679d6d2a`  
		Last Modified: Sat, 27 Apr 2019 08:49:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; 386

```console
$ docker pull fluentd@sha256:56bc18ea8a06e347a758016bb05741d7ac7bd06673dea1e2eb970f960100f65e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73732892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90bc8ba86255c0222b0ef3d25b1276a675b87b0643ec2774ff03f729dadff62`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 10:44:28 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 10:44:28 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 10:44:28 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 10:46:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 10:46:05 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 10:46:05 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 10:46:05 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 10:46:06 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 10:46:06 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 10:46:06 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 10:46:06 GMT
USER fluent
# Sat, 27 Apr 2019 10:46:06 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 10:46:07 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efdf5907413cc776bc2e3c2b93e9832b6e9302541e10980ff9d8089bac2d175`  
		Last Modified: Sat, 27 Apr 2019 10:46:32 GMT  
		Size: 16.5 MB (16515397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6070f2d15b37616200e182e3598f8595912890693774bd5a500c97d4ff63df6f`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c4cad47697a4c81c6234c7f2694e54776699e31bdd8c003649da1e1ab263af`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f034805ddf1bc5c4995ecfc4a62728597a37bb75c8b2106d4ae953367357d2`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; ppc64le

```console
$ docker pull fluentd@sha256:12c7282d5df008cee8d96d614d68f3cd7e95cbe1db44f81b5972d07ce274c552
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70925360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb463933515b5a8f71f06e9bec5d082d21543a781666ef0934908fc8bbe0910`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:38:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:39:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:39:04 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:43:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:43:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:43:13 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:43:14 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:43:15 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:43:16 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:43:18 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:43:19 GMT
USER fluent
# Sat, 27 Apr 2019 08:43:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:43:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03771dc9567ccea9e990b0d38b04a29f947740b1a7575acd9fa7bc3555573e77`  
		Last Modified: Sat, 27 Apr 2019 08:44:23 GMT  
		Size: 17.5 MB (17490492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f25097f609bde770b06a52a8e5f0c9c1c1279da89b26a5baf5ba533137da479`  
		Last Modified: Sat, 27 Apr 2019 08:44:18 GMT  
		Size: 1.9 KB (1861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b668272aec770c42646718f9dddc7c62380d9500e26b9e4931f566cc36cb62`  
		Last Modified: Sat, 27 Apr 2019 08:44:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21ca67f597481cf3787342d09ffdd43b2970702dfd6eb9c3b5a2e59c0be90c`  
		Last Modified: Sat, 27 Apr 2019 08:44:16 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4.2-debian-2.0` - linux; s390x

```console
$ docker pull fluentd@sha256:10ef7fdfa63b4dc2e11bd8dce4326643351e588206eb313af4ba7406cf5d72c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73758186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45804608339a85a2b7e466cc09349c54048b4acdb6b8c0e3fcf5cbf81dc14782`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 11:43:01 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:43:03 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:43:03 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 11:47:07 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 11:47:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 11:47:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 11:47:13 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 11:47:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 11:47:14 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 11:47:14 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 11:47:15 GMT
USER fluent
# Sat, 27 Apr 2019 11:47:16 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 11:47:19 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6559450f01edf09d52d62f75178560a2d7b85b9ba051d89f2ae699230ebe698`  
		Last Modified: Sat, 27 Apr 2019 11:48:06 GMT  
		Size: 19.6 MB (19565820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89257798a7f525261fc3b670c6d7c6b71dc79489b74883b01f982533a247d7fa`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b58eb70d5fecb8c815c76d703b229d849a28f96f2768b846efccc9629f93f1b`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6017a11c2bd1610cc2b517f1ad9f2d2de508cfa8552f0c6b31775a386e10594d`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fluentd:v1.4-debian-2`

```console
$ docker pull fluentd@sha256:61ef9f443b92e81ef0dfc55546854369d6bc4e7365e2bf84fb58c8260aa4e28f
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
$ docker pull fluentd@sha256:2abf1348a6b7fb10f7fa691b8580b2ad421c103fbdf0f66b6d93aa34d2b8287d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70766833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd75a4a38daa057b06e72e3de8c1124da07a45ccfc9112001b844aa952c477d1`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:32:20 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:32:21 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 10:32:21 GMT
ENV RUBY_MAJOR=2.6
# Wed, 17 Apr 2019 23:39:23 GMT
ENV RUBY_VERSION=2.6.3
# Wed, 17 Apr 2019 23:39:24 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Wed, 17 Apr 2019 23:44:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Wed, 17 Apr 2019 23:44:02 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 17 Apr 2019 23:44:02 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 17 Apr 2019 23:44:02 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Apr 2019 23:44:03 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Wed, 17 Apr 2019 23:44:03 GMT
CMD ["irb"]
# Fri, 26 Apr 2019 22:20:07 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Fri, 26 Apr 2019 22:21:00 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Fri, 26 Apr 2019 22:21:00 GMT
ENV TINI_VERSION=0.18.0
# Fri, 26 Apr 2019 22:22:34 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Fri, 26 Apr 2019 22:22:35 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Fri, 26 Apr 2019 22:22:35 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Fri, 26 Apr 2019 22:22:35 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Fri, 26 Apr 2019 22:22:35 GMT
ENV FLUENTD_CONF=fluent.conf
# Fri, 26 Apr 2019 22:22:35 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Fri, 26 Apr 2019 22:22:36 GMT
EXPOSE 24224 5140
# Fri, 26 Apr 2019 22:22:36 GMT
USER fluent
# Fri, 26 Apr 2019 22:22:36 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Fri, 26 Apr 2019 22:22:36 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b0f1e21cda3d97cc441fdf11e7f99ec7b60e2014369b721ee5c87c4f7dc5d`  
		Last Modified: Wed, 27 Mar 2019 11:45:11 GMT  
		Size: 11.2 MB (11172380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c865bf2b94447e89b17356ad091d6a1419cc7b9c2bb80128638ed321b90545ba`  
		Last Modified: Wed, 27 Mar 2019 11:45:08 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae6700f885814fce61f4e281d101a8996ab60bf27a4333009e6cf4f8b909c1e`  
		Last Modified: Wed, 17 Apr 2019 23:54:50 GMT  
		Size: 19.9 MB (19903806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de598c10ce0b661e60f04c3260eb3ec54f7e56ad36843977f5a874e62ed62ecf`  
		Last Modified: Wed, 17 Apr 2019 23:54:46 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb9cba98b11e238fd3127268b2b638f92f54d5a4835af00f50192670669f8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:07 GMT  
		Size: 17.2 MB (17191575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8c3aea724abcb399d7afbce0c030f9b69b000f4b264b18e334557875dcb4a3`  
		Last Modified: Fri, 26 Apr 2019 22:23:00 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0da36c073b42874cef134422700ff3b6d30c4d0d2e96a51d2c51b5c05e7c9a7`  
		Last Modified: Fri, 26 Apr 2019 22:23:01 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3845a63bb2d273a52a5a854077d8e7b6fc4d2b3f3c501b6124b8313b1650aed`  
		Last Modified: Fri, 26 Apr 2019 22:23:00 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm variant v5

```console
$ docker pull fluentd@sha256:7fcbf444cd161ce61cbafb2b54132c74889989aed581dd2e625a64c62d7ae31d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66922627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f64e05c44b1a6c877f2149ef7b5ed81758e476581a08026f8ec84d7e786d53`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:28:28 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:28:29 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:28:30 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 08:52:49 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 08:52:49 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 08:56:00 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 08:56:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 08:56:01 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 08:56:01 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 08:56:02 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 08:56:02 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:48:21 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:48:21 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:48:22 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:51:05 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:51:06 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:51:07 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:51:07 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:51:08 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:51:08 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:51:08 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:51:09 GMT
USER fluent
# Sat, 27 Apr 2019 08:51:09 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:51:09 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2540bbb15025b94717408aae8e14383a9e0ac42948adbc9cb1cd3c692660b39`  
		Last Modified: Wed, 27 Mar 2019 13:31:28 GMT  
		Size: 9.6 MB (9602530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b477cfb3d6d378f0fc6f95748a1825076bf55cd19490b6bfefdc91508742bdb`  
		Last Modified: Wed, 27 Mar 2019 13:31:22 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e809fb66a8a5f82db379390c2f90477e7abc59ecf9d33119afb247e7d067844d`  
		Last Modified: Thu, 18 Apr 2019 08:57:25 GMT  
		Size: 19.5 MB (19462077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8f0b34461657641fec4c9fa1920437b02a01bb8f84f09395b6e784f23828f3`  
		Last Modified: Thu, 18 Apr 2019 08:57:20 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de85e4bbf605ced7c5469bc37bd6a2c727015f5d2542fd66f35c6f02ae32cbd`  
		Last Modified: Sat, 27 Apr 2019 08:51:31 GMT  
		Size: 16.7 MB (16694273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37855651bf66660764ccf809614bb01c4b90d4e1005bfea371adebcabfd2c83`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50582a7e27051ccdc235f40732bc473c8113b895aef4adf1c69aa95504765702`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b944c82c53e8cc4927bd7f69a704c2390465fa79fe15f1a821a6ae6c6555aa53`  
		Last Modified: Sat, 27 Apr 2019 08:51:26 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm variant v7

```console
$ docker pull fluentd@sha256:450085566badbaff3b156bc767b1db7937c45a9393da82bba59db57336445152
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64186362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8697904f4969c9f50c31bbe54f1dc5ac1b641311fa2fe101bed7de04515e09dd`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:02:37 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:02:39 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:02:40 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:10:35 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:10:37 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:13:46 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:13:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:13:49 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:13:52 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:13:53 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 11:57:25 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:57:26 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:57:26 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 12:00:06 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 12:00:07 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 12:00:08 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 12:00:08 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 12:00:09 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 12:00:09 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 12:00:10 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 12:00:10 GMT
USER fluent
# Sat, 27 Apr 2019 12:00:11 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 12:00:11 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9c49cc9bf813783c8adad9a8112b31eb2329d6e61f1f236daa69ead9b7c5ae3`  
		Last Modified: Wed, 27 Mar 2019 15:53:45 GMT  
		Size: 9.1 MB (9079104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819e11271eca83204620d6fb3eeb33dd25ff007c2b251045f34cc378acf4f0cd`  
		Last Modified: Wed, 27 Mar 2019 15:53:41 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8871fe4978fa4225668bbc026b62412b971d07ac7df05f300ad4d4d59daa0d97`  
		Last Modified: Thu, 18 Apr 2019 12:18:20 GMT  
		Size: 19.3 MB (19293275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af854397c90109de28033b52b306dac3e5f40c9231e0b6223e84084c20ff496e`  
		Last Modified: Thu, 18 Apr 2019 12:18:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dd51a056cd8d138974dae5480a5435b1a6a2c10cab58d0a7cc8c765b888911`  
		Last Modified: Sat, 27 Apr 2019 12:00:35 GMT  
		Size: 16.5 MB (16528456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981a33055afc8359d810b997bb89900ae1cc5012623f033df90f175eb3258024`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71e73c464886439f12b14f0d73aeb8b72527a77d46d2e6bf37cd26a805f64e9`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4028dee228dff909731dc32c8573e694a5430b813cde5554a08f089c7c4915b`  
		Last Modified: Sat, 27 Apr 2019 12:00:30 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; arm64 variant v8

```console
$ docker pull fluentd@sha256:6721beb1df03344553daee0307384b75d3dda0f644effcfc0e30623c258fb839
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.1 MB (67090917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a5b2d2704cfe388d13d7af56f1d096856245a48317bb9a123b1f381499a639d`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 18:11:31 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:11:34 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 18:11:35 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:50:15 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:50:16 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 10:00:08 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 10:00:09 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 10:00:11 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 10:00:14 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 10:00:15 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:43:29 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:43:29 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:43:31 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:48:11 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:48:15 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:48:16 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:48:17 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:48:18 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:48:19 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:48:20 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:48:21 GMT
USER fluent
# Sat, 27 Apr 2019 08:48:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:48:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c613f8affe15c08d52860f2f82976cd28108920773a126f5e8ed34502e416d`  
		Last Modified: Wed, 27 Mar 2019 19:16:39 GMT  
		Size: 9.9 MB (9918759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81067de155e8674a09c1ef1804197185b69e8b1612def4b315c465fc582fe34`  
		Last Modified: Wed, 27 Mar 2019 19:16:35 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07bcfa82ce7a1f78426d87b6a2f3444460b359644bc06066ab9080e0458e55a`  
		Last Modified: Thu, 18 Apr 2019 10:16:55 GMT  
		Size: 19.7 MB (19665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4cc090ec1ad1d3be01ab0d4f4306764aeff5a29f9343e0cbc9b029793282c85`  
		Last Modified: Thu, 18 Apr 2019 10:16:50 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b73fb364013e344cd875b4d25559a58aa0c226be334a9ae1cbf045039b4ab0`  
		Last Modified: Sat, 27 Apr 2019 08:49:12 GMT  
		Size: 17.2 MB (17163444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0cc3b9c4b48c956115853e4e2dbf05e6bab48e38c746fce5e30e6aff9e2d61`  
		Last Modified: Sat, 27 Apr 2019 08:49:01 GMT  
		Size: 1.8 KB (1821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9853e0b328e92b8d6266847db22012b6842fa4b49ae822a3461343b2d41dcb`  
		Last Modified: Sat, 27 Apr 2019 08:49:01 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c984ad367b3ca25e8133dd7ffe5393ee5efe97334c855f2b57591149679d6d2a`  
		Last Modified: Sat, 27 Apr 2019 08:49:02 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; 386

```console
$ docker pull fluentd@sha256:56bc18ea8a06e347a758016bb05741d7ac7bd06673dea1e2eb970f960100f65e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73732892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90bc8ba86255c0222b0ef3d25b1276a675b87b0643ec2774ff03f729dadff62`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 20:55:08 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 20:55:09 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 20:55:09 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 12:08:28 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 12:11:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 12:11:43 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 12:11:43 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 12:11:44 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 12:11:44 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 10:44:28 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 10:44:28 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 10:44:28 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 10:46:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 10:46:05 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 10:46:05 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 10:46:05 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 10:46:06 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 10:46:06 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 10:46:06 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 10:46:06 GMT
USER fluent
# Sat, 27 Apr 2019 10:46:06 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 10:46:07 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d932b8f9eea89a08c5e1b3c174cd1d280f9caf519ee3a1a0612423a9c55a66b`  
		Last Modified: Wed, 27 Mar 2019 21:55:51 GMT  
		Size: 14.7 MB (14650447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f9b4729012ad4092c8f82377a8f2a612e1afd2905d844300da2fc817ad770cf`  
		Last Modified: Wed, 27 Mar 2019 21:55:47 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74571d682e80329765a1f60b2c17dfd9f6d9f4346b6fe945e0d3e173ac8acc3`  
		Last Modified: Thu, 18 Apr 2019 12:19:11 GMT  
		Size: 19.4 MB (19438293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75eafaf3a5e5121801dba635dca944584a84b223b15cbb11ab05cd80af134678`  
		Last Modified: Thu, 18 Apr 2019 12:19:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efdf5907413cc776bc2e3c2b93e9832b6e9302541e10980ff9d8089bac2d175`  
		Last Modified: Sat, 27 Apr 2019 10:46:32 GMT  
		Size: 16.5 MB (16515397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6070f2d15b37616200e182e3598f8595912890693774bd5a500c97d4ff63df6f`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c4cad47697a4c81c6234c7f2694e54776699e31bdd8c003649da1e1ab263af`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 404.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f034805ddf1bc5c4995ecfc4a62728597a37bb75c8b2106d4ae953367357d2`  
		Last Modified: Sat, 27 Apr 2019 10:46:27 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; ppc64le

```console
$ docker pull fluentd@sha256:12c7282d5df008cee8d96d614d68f3cd7e95cbe1db44f81b5972d07ce274c552
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70925360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb463933515b5a8f71f06e9bec5d082d21543a781666ef0934908fc8bbe0910`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:39:59 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:05 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 12:40:07 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 09:10:18 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 09:10:21 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 09:17:44 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 09:17:47 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 09:17:53 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 09:18:01 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 09:18:06 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 08:38:59 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 08:39:02 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 08:39:04 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 08:43:04 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 08:43:12 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 08:43:13 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 08:43:14 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 08:43:15 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 08:43:16 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 08:43:18 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 08:43:19 GMT
USER fluent
# Sat, 27 Apr 2019 08:43:21 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 08:43:22 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b4fe728e78dd4b2706ccada38f5536db9f302d42b74b93d814d8e7a486504fa`  
		Last Modified: Wed, 27 Mar 2019 13:27:43 GMT  
		Size: 10.6 MB (10579362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc6f4b16bfffc24a0be21b65f2fad900773298f7f4f0ca4833e6f1fa8311a2e`  
		Last Modified: Wed, 27 Mar 2019 13:27:36 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7dab7d204e930fa3f2611592ea95b93bff2d000e734a6b3373d0ef9652f834`  
		Last Modified: Thu, 18 Apr 2019 09:27:42 GMT  
		Size: 20.1 MB (20101021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b139d05b11ad61a24565cee416c596a65a761d6368c12c3f002c8ab43d5f18`  
		Last Modified: Thu, 18 Apr 2019 09:27:37 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03771dc9567ccea9e990b0d38b04a29f947740b1a7575acd9fa7bc3555573e77`  
		Last Modified: Sat, 27 Apr 2019 08:44:23 GMT  
		Size: 17.5 MB (17490492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f25097f609bde770b06a52a8e5f0c9c1c1279da89b26a5baf5ba533137da479`  
		Last Modified: Sat, 27 Apr 2019 08:44:18 GMT  
		Size: 1.9 KB (1861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b668272aec770c42646718f9dddc7c62380d9500e26b9e4931f566cc36cb62`  
		Last Modified: Sat, 27 Apr 2019 08:44:17 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21ca67f597481cf3787342d09ffdd43b2970702dfd6eb9c3b5a2e59c0be90c`  
		Last Modified: Sat, 27 Apr 2019 08:44:16 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fluentd:v1.4-debian-2` - linux; s390x

```console
$ docker pull fluentd@sha256:10ef7fdfa63b4dc2e11bd8dce4326643351e588206eb313af4ba7406cf5d72c6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73758186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45804608339a85a2b7e466cc09349c54048b4acdb6b8c0e3fcf5cbf81dc14782`
-	Entrypoint: `["tini","--","\/bin\/entrypoint.sh"]`
-	Default Command: `["fluentd"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:29 GMT
RUN apt-get update 	&& apt-get install -y --no-install-recommends 		bzip2 		ca-certificates 		libffi-dev 		libgdbm3 		libgmp-dev 		libssl-dev 		libyaml-dev 		procps 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:32 GMT
RUN mkdir -p /usr/local/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /usr/local/etc/gemrc
# Wed, 27 Mar 2019 15:24:32 GMT
ENV RUBY_MAJOR=2.6
# Thu, 18 Apr 2019 15:42:26 GMT
ENV RUBY_VERSION=2.6.3
# Thu, 18 Apr 2019 15:42:27 GMT
ENV RUBY_DOWNLOAD_SHA256=11a83f85c03d3f0fc9b8a9b6cad1b2674f26c5aaa43ba858d4b0fcc2b54171e1
# Thu, 18 Apr 2019 15:47:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		autoconf 		bison 		dpkg-dev 		gcc 		libbz2-dev 		libgdbm-dev 		libglib2.0-dev 		libncurses-dev 		libreadline-dev 		libxml2-dev 		libxslt-dev 		make 		ruby 		wget 		xz-utils 	&& rm -rf /var/lib/apt/lists/* 		&& wget -O ruby.tar.xz "https://cache.ruby-lang.org/pub/ruby/${RUBY_MAJOR%-rc}/ruby-$RUBY_VERSION.tar.xz" 	&& echo "$RUBY_DOWNLOAD_SHA256 *ruby.tar.xz" | sha256sum -c - 		&& mkdir -p /usr/src/ruby 	&& tar -xJf ruby.tar.xz -C /usr/src/ruby --strip-components=1 	&& rm ruby.tar.xz 		&& cd /usr/src/ruby 		&& { 		echo '#define ENABLE_PATH_CHECK 0'; 		echo; 		cat file.c; 	} > file.c.new 	&& mv file.c.new file.c 		&& autoconf 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--disable-install-doc 		--enable-shared 	&& make -j "$(nproc)" 	&& make install 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 		&& cd / 	&& rm -r /usr/src/ruby 	&& ruby --version && gem --version && bundle --version
# Thu, 18 Apr 2019 15:47:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 18 Apr 2019 15:47:58 GMT
ENV PATH=/usr/local/bundle/bin:/usr/local/bundle/gems/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Apr 2019 15:48:00 GMT
RUN mkdir -p "$GEM_HOME" && chmod 777 "$GEM_HOME"
# Thu, 18 Apr 2019 15:48:01 GMT
CMD ["irb"]
# Sat, 27 Apr 2019 11:43:01 GMT
LABEL maintainer=Fluentd developers <fluentd@googlegroups.com>
# Sat, 27 Apr 2019 11:43:03 GMT
LABEL Description=Fluentd docker image Vendor=Fluent Organization Version=1.4.2
# Sat, 27 Apr 2019 11:43:03 GMT
ENV TINI_VERSION=0.18.0
# Sat, 27 Apr 2019 11:47:07 GMT
RUN apt-get update  && apt-get install -y --no-install-recommends             ca-certificates  && buildDeps="       make gcc g++ libc-dev       wget bzip2 gnupg dirmngr     "  && apt-get install -y --no-install-recommends $buildDeps  && echo 'gem: --no-document' >> /etc/gemrc  && gem install oj -v 3.3.10  && gem install json -v 2.2.0  && gem install fluentd -v 1.4.2  && dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"  && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch"  && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/v$TINI_VERSION/tini-$dpkgArch.asc"  && export GNUPGHOME="$(mktemp -d)"  && gpg --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5  && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini  && rm -r /usr/local/bin/tini.asc  && chmod +x /usr/local/bin/tini  && tini -h  && wget -O /tmp/jemalloc-4.5.0.tar.bz2 https://github.com/jemalloc/jemalloc/releases/download/4.5.0/jemalloc-4.5.0.tar.bz2  && cd /tmp && tar -xjf jemalloc-4.5.0.tar.bz2 && cd jemalloc-4.5.0/  && ./configure && make  && mv lib/libjemalloc.so.2 /usr/lib  && apt-get purge -y --auto-remove                   -o APT::AutoRemove::RecommendsImportant=false                   $buildDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
# Sat, 27 Apr 2019 11:47:11 GMT
RUN groupadd -r fluent && useradd -r -g fluent fluent     && mkdir -p /fluentd/log     && mkdir -p /fluentd/etc /fluentd/plugins     && chown -R fluent /fluentd && chgrp -R fluent /fluentd
# Sat, 27 Apr 2019 11:47:12 GMT
COPY file:06d9a84b9b428b4e0ef5a9e3699798758dc9716908d82091239fb9f85dd30d70 in /fluentd/etc/ 
# Sat, 27 Apr 2019 11:47:13 GMT
COPY file:f70a6a04a7c32c744ebb989e7d706ca5f78829c1489be8d165d4b1b682c9eaf8 in /bin/ 
# Sat, 27 Apr 2019 11:47:13 GMT
ENV FLUENTD_CONF=fluent.conf
# Sat, 27 Apr 2019 11:47:14 GMT
ENV LD_PRELOAD=/usr/lib/libjemalloc.so.2
# Sat, 27 Apr 2019 11:47:14 GMT
EXPOSE 24224 5140
# Sat, 27 Apr 2019 11:47:15 GMT
USER fluent
# Sat, 27 Apr 2019 11:47:16 GMT
ENTRYPOINT ["tini" "--" "/bin/entrypoint.sh"]
# Sat, 27 Apr 2019 11:47:19 GMT
CMD ["fluentd"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9136d6190ab77b3e9ab9c467fa4d462ec05bc3271cd4c5f140aa2805f83851db`  
		Last Modified: Wed, 27 Mar 2019 15:49:43 GMT  
		Size: 11.6 MB (11577628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3a0b1fb24a2e46e9629ed6f6b483f560041432e96e86e23159dbbfdab02bb6`  
		Last Modified: Wed, 27 Mar 2019 15:49:39 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d24879684d4a4e8b4570e50a16d905c1f033b3ef1482c8bdc8fd2b479982c6`  
		Last Modified: Thu, 18 Apr 2019 15:59:29 GMT  
		Size: 20.3 MB (20266423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503c0c98aa1ad53de5760a95d495beabe07dcfc056fb8a9d3116aff75ed46568`  
		Last Modified: Thu, 18 Apr 2019 15:59:26 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6559450f01edf09d52d62f75178560a2d7b85b9ba051d89f2ae699230ebe698`  
		Last Modified: Sat, 27 Apr 2019 11:48:06 GMT  
		Size: 19.6 MB (19565820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89257798a7f525261fc3b670c6d7c6b71dc79489b74883b01f982533a247d7fa`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b58eb70d5fecb8c815c76d703b229d849a28f96f2768b846efccc9629f93f1b`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6017a11c2bd1610cc2b517f1ad9f2d2de508cfa8552f0c6b31775a386e10594d`  
		Last Modified: Sat, 27 Apr 2019 11:47:59 GMT  
		Size: 443.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
