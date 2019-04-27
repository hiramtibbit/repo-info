<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fluentd`

-	[`fluentd:latest`](#fluentdlatest)
-	[`fluentd:v1.4-2`](#fluentdv14-2)
-	[`fluentd:v1.4.2-2.0`](#fluentdv142-20)
-	[`fluentd:v1.4.2-debian-2.0`](#fluentdv142-debian-20)
-	[`fluentd:v1.4-debian-2`](#fluentdv14-debian-2)

## `fluentd:latest`

```console
$ docker pull fluentd@sha256:5875738e0f5060f921d2fd8628f4f451d79861c8d26751740eff71820a06cb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `fluentd:v1.4-2`

```console
$ docker pull fluentd@sha256:5875738e0f5060f921d2fd8628f4f451d79861c8d26751740eff71820a06cb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `fluentd:v1.4.2-2.0`

```console
$ docker pull fluentd@sha256:5875738e0f5060f921d2fd8628f4f451d79861c8d26751740eff71820a06cb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

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

## `fluentd:v1.4.2-debian-2.0`

```console
$ docker pull fluentd@sha256:b1ee6c0d465914098601bff562cb1b1463f132133227b2ff00c39e32c2a7ace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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

## `fluentd:v1.4-debian-2`

```console
$ docker pull fluentd@sha256:b1ee6c0d465914098601bff562cb1b1463f132133227b2ff00c39e32c2a7ace1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
