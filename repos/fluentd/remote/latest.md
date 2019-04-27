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
