<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:10`](#odoo10)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:11`](#odoo11)
-	[`odoo:11.0`](#odoo110)
-	[`odoo:9`](#odoo9)
-	[`odoo:9.0`](#odoo90)
-	[`odoo:latest`](#odoolatest)

## `odoo:10`

```console
$ docker pull odoo@sha256:ac17c13349744ac5ff96382edf477da6d280d09e9ea13723e3a035ba74661abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:274a1fafe915bf03833d8dec385cc387f35e572890eb9174dc6349c64e7959cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277478299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4159ad02c732abfd8308229db30fe0d8ca934005995bdf7388b14e0a2c23cdf6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 03:19:21 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Feb 2018 03:20:16 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 17 Feb 2018 03:41:18 GMT
ENV ODOO_VERSION=10.0
# Sat, 17 Feb 2018 03:41:18 GMT
ENV ODOO_RELEASE=20180122
# Sat, 17 Feb 2018 03:42:57 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Feb 2018 03:52:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Feb 2018 03:52:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 17 Feb 2018 03:52:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Feb 2018 03:52:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Feb 2018 03:52:23 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Feb 2018 03:56:47 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Feb 2018 03:56:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Feb 2018 03:56:48 GMT
USER [odoo]
# Sat, 17 Feb 2018 03:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 03:56:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f7750b1aac6bd091706e4c635e269acc91e6ae7624617512243b57118ac90`  
		Last Modified: Sat, 17 Feb 2018 03:57:47 GMT  
		Size: 88.7 MB (88739376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffdd1649e4c62638f16913d25f2a738abf33a570c507122cc7b7dd2d07ca2ae`  
		Last Modified: Sat, 17 Feb 2018 04:13:22 GMT  
		Size: 136.1 MB (136128756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc1988f9661bc5b927124c4def7afc050c4d3f988b2abd8d629cedc528c769`  
		Last Modified: Sat, 17 Feb 2018 04:12:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b781bef67c10bc02839a8105994744e4e362de36d62bcbe7faed8594394619`  
		Last Modified: Sat, 17 Feb 2018 04:12:32 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aee0a08a9643dd966d2a299838306bcbd19dd9e2b65eb43421c4604d73ae4b`  
		Last Modified: Sat, 17 Feb 2018 04:12:31 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130604894dc424e52d840500fbd5720f2fe2b74c0bfd5ba34af550a49162d6f0`  
		Last Modified: Sat, 17 Feb 2018 04:12:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:ac17c13349744ac5ff96382edf477da6d280d09e9ea13723e3a035ba74661abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:274a1fafe915bf03833d8dec385cc387f35e572890eb9174dc6349c64e7959cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277478299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4159ad02c732abfd8308229db30fe0d8ca934005995bdf7388b14e0a2c23cdf6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 03:19:21 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Feb 2018 03:20:16 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 17 Feb 2018 03:41:18 GMT
ENV ODOO_VERSION=10.0
# Sat, 17 Feb 2018 03:41:18 GMT
ENV ODOO_RELEASE=20180122
# Sat, 17 Feb 2018 03:42:57 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Feb 2018 03:52:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Feb 2018 03:52:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 17 Feb 2018 03:52:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Feb 2018 03:52:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Feb 2018 03:52:23 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Feb 2018 03:56:47 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Feb 2018 03:56:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Feb 2018 03:56:48 GMT
USER [odoo]
# Sat, 17 Feb 2018 03:56:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 03:56:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f7750b1aac6bd091706e4c635e269acc91e6ae7624617512243b57118ac90`  
		Last Modified: Sat, 17 Feb 2018 03:57:47 GMT  
		Size: 88.7 MB (88739376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ffdd1649e4c62638f16913d25f2a738abf33a570c507122cc7b7dd2d07ca2ae`  
		Last Modified: Sat, 17 Feb 2018 04:13:22 GMT  
		Size: 136.1 MB (136128756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecbc1988f9661bc5b927124c4def7afc050c4d3f988b2abd8d629cedc528c769`  
		Last Modified: Sat, 17 Feb 2018 04:12:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b781bef67c10bc02839a8105994744e4e362de36d62bcbe7faed8594394619`  
		Last Modified: Sat, 17 Feb 2018 04:12:32 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aee0a08a9643dd966d2a299838306bcbd19dd9e2b65eb43421c4604d73ae4b`  
		Last Modified: Sat, 17 Feb 2018 04:12:31 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130604894dc424e52d840500fbd5720f2fe2b74c0bfd5ba34af550a49162d6f0`  
		Last Modified: Sat, 17 Feb 2018 04:12:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:88b85c3a92d3bb4d54caa72cc54a7f0ed4aa73c04331956f2900b3a558ac2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:62f03800a3ee442247d72c01c1ed44ab0db5fd29191a09e807ba5b41e0572d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414650620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0918ac36491878b38149028a8e4d3b831a883b3c25aeeccb9c6c0799813214c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:31:09 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Thu, 15 Feb 2018 05:31:10 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 05:31:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_VERSION=11.0
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_RELEASE=20180122
# Thu, 15 Feb 2018 05:33:30 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 15 Feb 2018 05:47:32 GMT
RUN pip3 install num2words xlwt
# Thu, 15 Feb 2018 05:48:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 15 Feb 2018 05:48:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 15 Feb 2018 05:48:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 15 Feb 2018 05:48:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Feb 2018 05:48:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 15 Feb 2018 05:48:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:30 GMT
USER [odoo]
# Thu, 15 Feb 2018 05:48:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 05:48:30 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f57eb3a9087678ab5b41ece88387e4118ba54c59796465906304c3d344cc4e`  
		Last Modified: Thu, 15 Feb 2018 05:49:42 GMT  
		Size: 221.5 MB (221475348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c115b53817cfd6011d46adb10f14ae133ba0e0b51dcb15ad0465dc33cf593f7b`  
		Last Modified: Thu, 15 Feb 2018 05:49:59 GMT  
		Size: 147.6 MB (147578536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e826e57202c31d7d72b78a8cd7e87f10b9d1a63604e97f1908401715cd7be312`  
		Last Modified: Thu, 15 Feb 2018 05:49:01 GMT  
		Size: 462.3 KB (462280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4846483e36e960b6075ebfc6024c11665df526df88029375e576263c570f67e`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723867db3cc467a1154d45f1bfd064b62a4f9398e45c49d4be70d5be65169eb0`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dc01a740ba6eca3e60eba27dac2a87ccf3997186ae9cfa05cc665d097bb8`  
		Last Modified: Thu, 15 Feb 2018 05:48:59 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfe8299d5501d9fd3417af60fb9a496e1ee3f10d09100a70e7172c77b80872d`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:88b85c3a92d3bb4d54caa72cc54a7f0ed4aa73c04331956f2900b3a558ac2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:62f03800a3ee442247d72c01c1ed44ab0db5fd29191a09e807ba5b41e0572d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414650620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0918ac36491878b38149028a8e4d3b831a883b3c25aeeccb9c6c0799813214c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:31:09 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Thu, 15 Feb 2018 05:31:10 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 05:31:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_VERSION=11.0
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_RELEASE=20180122
# Thu, 15 Feb 2018 05:33:30 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 15 Feb 2018 05:47:32 GMT
RUN pip3 install num2words xlwt
# Thu, 15 Feb 2018 05:48:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 15 Feb 2018 05:48:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 15 Feb 2018 05:48:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 15 Feb 2018 05:48:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Feb 2018 05:48:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 15 Feb 2018 05:48:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:30 GMT
USER [odoo]
# Thu, 15 Feb 2018 05:48:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 05:48:30 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f57eb3a9087678ab5b41ece88387e4118ba54c59796465906304c3d344cc4e`  
		Last Modified: Thu, 15 Feb 2018 05:49:42 GMT  
		Size: 221.5 MB (221475348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c115b53817cfd6011d46adb10f14ae133ba0e0b51dcb15ad0465dc33cf593f7b`  
		Last Modified: Thu, 15 Feb 2018 05:49:59 GMT  
		Size: 147.6 MB (147578536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e826e57202c31d7d72b78a8cd7e87f10b9d1a63604e97f1908401715cd7be312`  
		Last Modified: Thu, 15 Feb 2018 05:49:01 GMT  
		Size: 462.3 KB (462280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4846483e36e960b6075ebfc6024c11665df526df88029375e576263c570f67e`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723867db3cc467a1154d45f1bfd064b62a4f9398e45c49d4be70d5be65169eb0`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dc01a740ba6eca3e60eba27dac2a87ccf3997186ae9cfa05cc665d097bb8`  
		Last Modified: Thu, 15 Feb 2018 05:48:59 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfe8299d5501d9fd3417af60fb9a496e1ee3f10d09100a70e7172c77b80872d`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:3d66924e800794b60b32dacf0ebc2d96f3543f523bef716760c62dcfd1489b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:f32c32f56e7e12344300d25d24c43e4aed2e77c819a30bc361df6d39bb754a70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289917485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0d2c535dd9c82e0d3935ca4901bb12f3e2663d4d9c57e8c2d41948a372edff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 03:19:21 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Feb 2018 03:20:16 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 17 Feb 2018 03:20:22 GMT
ENV ODOO_VERSION=9.0
# Sat, 17 Feb 2018 03:20:22 GMT
ENV ODOO_RELEASE=20180122
# Sat, 17 Feb 2018 03:21:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Feb 2018 03:23:47 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Sat, 17 Feb 2018 03:23:48 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Sat, 17 Feb 2018 03:23:49 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Sat, 17 Feb 2018 03:37:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Feb 2018 03:37:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Feb 2018 03:37:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Feb 2018 03:37:37 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Sat, 17 Feb 2018 03:37:38 GMT
USER [odoo]
# Sat, 17 Feb 2018 03:37:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 03:37:38 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f7750b1aac6bd091706e4c635e269acc91e6ae7624617512243b57118ac90`  
		Last Modified: Sat, 17 Feb 2018 03:57:47 GMT  
		Size: 88.7 MB (88739376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73da0e535080d9382cd8d951c0e5104ff0c690b0995bc49db7e7fc2c11c6e36`  
		Last Modified: Sat, 17 Feb 2018 03:58:19 GMT  
		Size: 148.6 MB (148567908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5752307d13dad2a73d73601e928f3849f2e9aea1f169490d31dab50a2a863c1`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e00b6ea22f9c69204f2be9165c84c49459b1c5fee275c86c7a34b38df8762`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc3347f390388588ca635f9885e9860e839cab2b78dacea474f422aba529c5f`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb83831b94ac9ad457fbbdcaacca8485f142b65b12c124116c310169159d0d`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:3d66924e800794b60b32dacf0ebc2d96f3543f523bef716760c62dcfd1489b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:f32c32f56e7e12344300d25d24c43e4aed2e77c819a30bc361df6d39bb754a70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289917485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0d2c535dd9c82e0d3935ca4901bb12f3e2663d4d9c57e8c2d41948a372edff`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 03:19:21 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Feb 2018 03:20:16 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Sat, 17 Feb 2018 03:20:22 GMT
ENV ODOO_VERSION=9.0
# Sat, 17 Feb 2018 03:20:22 GMT
ENV ODOO_RELEASE=20180122
# Sat, 17 Feb 2018 03:21:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Feb 2018 03:23:47 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Sat, 17 Feb 2018 03:23:48 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Sat, 17 Feb 2018 03:23:49 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Sat, 17 Feb 2018 03:37:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Feb 2018 03:37:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Feb 2018 03:37:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Feb 2018 03:37:37 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Sat, 17 Feb 2018 03:37:38 GMT
USER [odoo]
# Sat, 17 Feb 2018 03:37:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Feb 2018 03:37:38 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41f7750b1aac6bd091706e4c635e269acc91e6ae7624617512243b57118ac90`  
		Last Modified: Sat, 17 Feb 2018 03:57:47 GMT  
		Size: 88.7 MB (88739376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73da0e535080d9382cd8d951c0e5104ff0c690b0995bc49db7e7fc2c11c6e36`  
		Last Modified: Sat, 17 Feb 2018 03:58:19 GMT  
		Size: 148.6 MB (148567908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5752307d13dad2a73d73601e928f3849f2e9aea1f169490d31dab50a2a863c1`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e00b6ea22f9c69204f2be9165c84c49459b1c5fee275c86c7a34b38df8762`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc3347f390388588ca635f9885e9860e839cab2b78dacea474f422aba529c5f`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccb83831b94ac9ad457fbbdcaacca8485f142b65b12c124116c310169159d0d`  
		Last Modified: Sat, 17 Feb 2018 03:57:20 GMT  
		Size: 123.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:88b85c3a92d3bb4d54caa72cc54a7f0ed4aa73c04331956f2900b3a558ac2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:62f03800a3ee442247d72c01c1ed44ab0db5fd29191a09e807ba5b41e0572d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414650620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0918ac36491878b38149028a8e4d3b831a883b3c25aeeccb9c6c0799813214c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:31:09 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Thu, 15 Feb 2018 05:31:10 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 05:31:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_VERSION=11.0
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_RELEASE=20180122
# Thu, 15 Feb 2018 05:33:30 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 15 Feb 2018 05:47:32 GMT
RUN pip3 install num2words xlwt
# Thu, 15 Feb 2018 05:48:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 15 Feb 2018 05:48:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 15 Feb 2018 05:48:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 15 Feb 2018 05:48:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Feb 2018 05:48:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 15 Feb 2018 05:48:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:30 GMT
USER [odoo]
# Thu, 15 Feb 2018 05:48:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 05:48:30 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f57eb3a9087678ab5b41ece88387e4118ba54c59796465906304c3d344cc4e`  
		Last Modified: Thu, 15 Feb 2018 05:49:42 GMT  
		Size: 221.5 MB (221475348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c115b53817cfd6011d46adb10f14ae133ba0e0b51dcb15ad0465dc33cf593f7b`  
		Last Modified: Thu, 15 Feb 2018 05:49:59 GMT  
		Size: 147.6 MB (147578536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e826e57202c31d7d72b78a8cd7e87f10b9d1a63604e97f1908401715cd7be312`  
		Last Modified: Thu, 15 Feb 2018 05:49:01 GMT  
		Size: 462.3 KB (462280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4846483e36e960b6075ebfc6024c11665df526df88029375e576263c570f67e`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723867db3cc467a1154d45f1bfd064b62a4f9398e45c49d4be70d5be65169eb0`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dc01a740ba6eca3e60eba27dac2a87ccf3997186ae9cfa05cc665d097bb8`  
		Last Modified: Thu, 15 Feb 2018 05:48:59 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfe8299d5501d9fd3417af60fb9a496e1ee3f10d09100a70e7172c77b80872d`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
