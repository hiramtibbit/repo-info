<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `odoo`

-	[`odoo:10`](#odoo10)
-	[`odoo:10.0`](#odoo100)
-	[`odoo:11`](#odoo11)
-	[`odoo:11.0`](#odoo110)
-	[`odoo:12`](#odoo12)
-	[`odoo:12.0`](#odoo120)
-	[`odoo:latest`](#odoolatest)

## `odoo:10`

```console
$ docker pull odoo@sha256:1a3f95d246c92ea203db30b37ad287720e05c1a83a2466292fcf152bb239110e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:29d411b6933077ba1eb1286ae0e49eec38fc9d960a486c2abbfffccbf8cb641e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281084047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cf47c614da6c7377de09c4639a0ca55a02a19f33e07788b3c6a22f030be27b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:48:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 16 Oct 2018 06:48:54 GMT
ENV ODOO_VERSION=10.0
# Tue, 16 Oct 2018 06:48:55 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:50:06 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b94e32470287957ff4e1111e6c58e85c057f60db odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:50:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:50:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 16 Oct 2018 06:50:08 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:50:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:50:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:50:09 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:50:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:50:09 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:50:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfb396894bd7b19124ef6854496845489641cffe85214e237e8fe1bfd96e7d2`  
		Last Modified: Tue, 16 Oct 2018 06:52:50 GMT  
		Size: 87.0 MB (87034819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b79c71c35ea4ae534869eb161cd0ff5dcc1b94f54efa51d0f1b2025f9608c9`  
		Last Modified: Tue, 16 Oct 2018 06:52:59 GMT  
		Size: 139.8 MB (139795219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fb6604213d6f75b8de24d92bc9d6f354423dad434e03e1bae8ecd7f753e247`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4840d1877605c0d880da089d70dc06e6033cd124d0ca4ff41b58693f4dfbe437`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0758d187bb266d2df8b71c8a8eb7c7a5c774dd5ed9f43e9230ce396a61626f`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933195d87b0ea3252f8ba1a82baa3238a964baf2474e53f6217ba6c534f45c4d`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:1a3f95d246c92ea203db30b37ad287720e05c1a83a2466292fcf152bb239110e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:29d411b6933077ba1eb1286ae0e49eec38fc9d960a486c2abbfffccbf8cb641e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281084047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09cf47c614da6c7377de09c4639a0ca55a02a19f33e07788b3c6a22f030be27b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:26 GMT
ADD file:28906382f13932b8498c715984587f13905a32cc9427fb4f8779b7f159a68580 in / 
# Mon, 15 Oct 2018 23:20:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:47:37 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:48:54 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 16 Oct 2018 06:48:54 GMT
ENV ODOO_VERSION=10.0
# Tue, 16 Oct 2018 06:48:55 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:50:06 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b94e32470287957ff4e1111e6c58e85c057f60db odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:50:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:50:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 16 Oct 2018 06:50:08 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:50:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:50:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:50:09 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:50:09 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:50:09 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:50:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:50:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:61be48634cb9ffcb29c1508fc1c308be81c32f84e95a627de9bdf107a854408c`  
		Last Modified: Mon, 15 Oct 2018 23:28:32 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfb396894bd7b19124ef6854496845489641cffe85214e237e8fe1bfd96e7d2`  
		Last Modified: Tue, 16 Oct 2018 06:52:50 GMT  
		Size: 87.0 MB (87034819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b79c71c35ea4ae534869eb161cd0ff5dcc1b94f54efa51d0f1b2025f9608c9`  
		Last Modified: Tue, 16 Oct 2018 06:52:59 GMT  
		Size: 139.8 MB (139795219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fb6604213d6f75b8de24d92bc9d6f354423dad434e03e1bae8ecd7f753e247`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4840d1877605c0d880da089d70dc06e6033cd124d0ca4ff41b58693f4dfbe437`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0758d187bb266d2df8b71c8a8eb7c7a5c774dd5ed9f43e9230ce396a61626f`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933195d87b0ea3252f8ba1a82baa3238a964baf2474e53f6217ba6c534f45c4d`  
		Last Modified: Tue, 16 Oct 2018 06:52:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:dbb53cfb88004469c1fb59373936fc14bd4d4e481954ce7b95d1c4bddba34023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:b8fb548e28ca7e1eba51ace05b349d464feb5458caf5a0def0d181a6baa06f0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.3 MB (422269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e05ae2e51896f5e1b61e5419a2afcd2ebc850be11d10654e1f660f7196cba5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:44:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:44:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 06:44:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 06:46:19 GMT
ENV ODOO_VERSION=11.0
# Tue, 16 Oct 2018 06:46:19 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:47:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:47:16 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 06:47:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:47:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 06:47:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:47:18 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:47:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:47:18 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:47:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:47:19 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:47:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:47:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbea6af0fc40efc1121ff154072b05f4e765aea2b774ba6b58d6d7c311f620`  
		Last Modified: Tue, 16 Oct 2018 06:51:07 GMT  
		Size: 222.2 MB (222192380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee6b660667d42667f9c63cf668fb867ff467709987e200e7272b8ed0fde6d8`  
		Last Modified: Tue, 16 Oct 2018 06:52:07 GMT  
		Size: 154.2 MB (154234044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527404b34be890730ec5429abe727d18ecc6781b2ce3e703b01e885879133d21`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 531.2 KB (531213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3d53b59a6703d9ccf97637ce7c45f0969ee6f977f89a8624fee33e6f58b391`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11ea36a402c2414f59fb28220c4b197db40ed975c9500b5219b05f1d09338d4`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b62fe72fe6c34eb6c080e06ee1848aea74fe84ba443aea775ffe9f19d06dfb4`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a1bda8521bed3610a067301d726de49aebcd17aa7818e25982649e2ea7b296`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:9b5ea012711c61dcb6a3e37bf63e009488c4a64a7d555ac46254f06c4e2f627d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.8 MB (415829189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e667f207e5d4cb1c7014973bfd11d528f2ef1b5077a77b616cf5644e97ac024`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 05 Sep 2018 12:17:47 GMT
ENV ODOO_VERSION=11.0
# Tue, 09 Oct 2018 08:56:18 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:59:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 09:00:14 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 09:00:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 09:00:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 09:00:19 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 09:00:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 09:00:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 09:00:22 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 09:00:23 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 09:00:24 GMT
USER [odoo]
# Tue, 09 Oct 2018 09:00:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 09:00:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0fbad29d1a146215a301b019ad668bece5317da81e87cbd2af94fd261cee5`  
		Last Modified: Tue, 09 Oct 2018 09:03:24 GMT  
		Size: 152.8 MB (152754697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f2361b93d932f3d1b609bf319e23839d6bf10115f720dc27632ddedab27695`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 531.3 KB (531289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726ab1210e3e0c0a47009337fc91f8d42b8f199948c126820d1dfbc031c975fd`  
		Last Modified: Tue, 09 Oct 2018 09:02:26 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d92ad58c2164fd61e6579feadeca59ec253158069221e16197689cf6fe88419`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5915ac9b54d713bdc667280e7dcb41456f946e17742a35aaf414e37388e9514`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441ad3d717c3d7c14608647ec04901693df1310ae04a63f869fa324532ca93a2`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:dbb53cfb88004469c1fb59373936fc14bd4d4e481954ce7b95d1c4bddba34023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:b8fb548e28ca7e1eba51ace05b349d464feb5458caf5a0def0d181a6baa06f0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.3 MB (422269405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5e05ae2e51896f5e1b61e5419a2afcd2ebc850be11d10654e1f660f7196cba5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:44:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:44:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 06:44:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 06:46:19 GMT
ENV ODOO_VERSION=11.0
# Tue, 16 Oct 2018 06:46:19 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:47:10 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:47:16 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 06:47:16 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:47:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 06:47:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:47:18 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:47:18 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:47:18 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:47:19 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:47:19 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:47:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:47:19 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbea6af0fc40efc1121ff154072b05f4e765aea2b774ba6b58d6d7c311f620`  
		Last Modified: Tue, 16 Oct 2018 06:51:07 GMT  
		Size: 222.2 MB (222192380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdee6b660667d42667f9c63cf668fb867ff467709987e200e7272b8ed0fde6d8`  
		Last Modified: Tue, 16 Oct 2018 06:52:07 GMT  
		Size: 154.2 MB (154234044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527404b34be890730ec5429abe727d18ecc6781b2ce3e703b01e885879133d21`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 531.2 KB (531213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3d53b59a6703d9ccf97637ce7c45f0969ee6f977f89a8624fee33e6f58b391`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11ea36a402c2414f59fb28220c4b197db40ed975c9500b5219b05f1d09338d4`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b62fe72fe6c34eb6c080e06ee1848aea74fe84ba443aea775ffe9f19d06dfb4`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a1bda8521bed3610a067301d726de49aebcd17aa7818e25982649e2ea7b296`  
		Last Modified: Tue, 16 Oct 2018 06:51:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:9b5ea012711c61dcb6a3e37bf63e009488c4a64a7d555ac46254f06c4e2f627d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.8 MB (415829189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e667f207e5d4cb1c7014973bfd11d528f2ef1b5077a77b616cf5644e97ac024`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 05 Sep 2018 12:17:47 GMT
ENV ODOO_VERSION=11.0
# Tue, 09 Oct 2018 08:56:18 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:59:52 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 09:00:14 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 09:00:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 09:00:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 09:00:19 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 09:00:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 09:00:21 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 09:00:22 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 09:00:23 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 09:00:24 GMT
USER [odoo]
# Tue, 09 Oct 2018 09:00:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 09:00:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f0fbad29d1a146215a301b019ad668bece5317da81e87cbd2af94fd261cee5`  
		Last Modified: Tue, 09 Oct 2018 09:03:24 GMT  
		Size: 152.8 MB (152754697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f2361b93d932f3d1b609bf319e23839d6bf10115f720dc27632ddedab27695`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 531.3 KB (531289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726ab1210e3e0c0a47009337fc91f8d42b8f199948c126820d1dfbc031c975fd`  
		Last Modified: Tue, 09 Oct 2018 09:02:26 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d92ad58c2164fd61e6579feadeca59ec253158069221e16197689cf6fe88419`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5915ac9b54d713bdc667280e7dcb41456f946e17742a35aaf414e37388e9514`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441ad3d717c3d7c14608647ec04901693df1310ae04a63f869fa324532ca93a2`  
		Last Modified: Tue, 09 Oct 2018 09:02:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12`

```console
$ docker pull odoo@sha256:f0cda40c07f90d37c4a8e4b99c0efb41a1c3a09e881d81d5274f5a250c4483e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:f798cd9f9976388408a89d263042957f3b5cd60037f1665b03da72a4c39f3750
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.5 MB (400460384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951ff0eef15ddef28d7546d3361d1212138508facb49028d05e8c8e4b9eed947`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:44:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:44:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 06:44:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_VERSION=12.0
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:46:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:46:05 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 06:46:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:46:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 06:46:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:46:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:46:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:46:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:08 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:46:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:46:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbea6af0fc40efc1121ff154072b05f4e765aea2b774ba6b58d6d7c311f620`  
		Last Modified: Tue, 16 Oct 2018 06:51:07 GMT  
		Size: 222.2 MB (222192380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561fe8f1ee816d78157e7320990fbd6fce42de03fe468cb70dacb628cab53192`  
		Last Modified: Tue, 16 Oct 2018 06:50:58 GMT  
		Size: 132.4 MB (132424991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9aa762ecb27c64af41549cf2cd0cfe4b321603c8d601512c0f67adb42b895`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 531.2 KB (531244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a521c24aec7cb1ff09f0d718be55d179f4a2e61e2c0d2a3dc24d0464b2cc1f6`  
		Last Modified: Tue, 16 Oct 2018 06:50:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67114fbc0cd24ead882ef2daab04ceb39d2685251d8eb044165c9e4d9cfe2338`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9802a77661b820e34810cef1eac66e092fa7abeeb4a40b305ca55f8f065d3a`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2873d4871107e7d9b81513a18d5a187f79ed73d9fc0a413a4b511845e35e678`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:72952c7adb5bce9c3979b1faf36f3b8185b130b2b56e9099edbeef39eb472e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393987066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87de0a2769dd52d629d6a56e44b7e082c40907c5240b5859d6ba8308a7aaaf25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 05 Oct 2018 09:09:01 GMT
ENV ODOO_VERSION=12.0
# Tue, 09 Oct 2018 08:51:31 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:55:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 08:55:37 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 08:55:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 08:55:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 08:55:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:55:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 08:55:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 08:55:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 08:56:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:56:01 GMT
USER [odoo]
# Tue, 09 Oct 2018 08:56:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 08:56:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ecb491b6e36740db12f6aed000c39a2d40b511e19fc0878c221913ca0a5725`  
		Last Modified: Tue, 09 Oct 2018 09:01:40 GMT  
		Size: 130.9 MB (130912568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c7badae181688c4e03eb20434dce5e12fbe6367d0cff4bf0f84871ef9ff102`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 531.3 KB (531300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6584b2e951d677b589c124ada8bfaafd293b8d4e7f287735473e869993c03a7`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38563e78d6d5c50b787011ee029e6342191a6989779af847aee141f09bf3ccbd`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac2bfc83771c31f3aaaf86622503b9d8005e1ae95c66429ab69790a54fe5a15`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3526def363b8ede320d8a01566b589ef4504269625f74c19a3de18f817fedb76`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12.0`

```console
$ docker pull odoo@sha256:f0cda40c07f90d37c4a8e4b99c0efb41a1c3a09e881d81d5274f5a250c4483e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:f798cd9f9976388408a89d263042957f3b5cd60037f1665b03da72a4c39f3750
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.5 MB (400460384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951ff0eef15ddef28d7546d3361d1212138508facb49028d05e8c8e4b9eed947`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:44:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:44:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 06:44:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_VERSION=12.0
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:46:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:46:05 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 06:46:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:46:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 06:46:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:46:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:46:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:46:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:08 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:46:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:46:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbea6af0fc40efc1121ff154072b05f4e765aea2b774ba6b58d6d7c311f620`  
		Last Modified: Tue, 16 Oct 2018 06:51:07 GMT  
		Size: 222.2 MB (222192380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561fe8f1ee816d78157e7320990fbd6fce42de03fe468cb70dacb628cab53192`  
		Last Modified: Tue, 16 Oct 2018 06:50:58 GMT  
		Size: 132.4 MB (132424991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9aa762ecb27c64af41549cf2cd0cfe4b321603c8d601512c0f67adb42b895`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 531.2 KB (531244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a521c24aec7cb1ff09f0d718be55d179f4a2e61e2c0d2a3dc24d0464b2cc1f6`  
		Last Modified: Tue, 16 Oct 2018 06:50:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67114fbc0cd24ead882ef2daab04ceb39d2685251d8eb044165c9e4d9cfe2338`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9802a77661b820e34810cef1eac66e092fa7abeeb4a40b305ca55f8f065d3a`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2873d4871107e7d9b81513a18d5a187f79ed73d9fc0a413a4b511845e35e678`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:72952c7adb5bce9c3979b1faf36f3b8185b130b2b56e9099edbeef39eb472e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393987066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87de0a2769dd52d629d6a56e44b7e082c40907c5240b5859d6ba8308a7aaaf25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 05 Oct 2018 09:09:01 GMT
ENV ODOO_VERSION=12.0
# Tue, 09 Oct 2018 08:51:31 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:55:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 08:55:37 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 08:55:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 08:55:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 08:55:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:55:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 08:55:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 08:55:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 08:56:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:56:01 GMT
USER [odoo]
# Tue, 09 Oct 2018 08:56:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 08:56:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ecb491b6e36740db12f6aed000c39a2d40b511e19fc0878c221913ca0a5725`  
		Last Modified: Tue, 09 Oct 2018 09:01:40 GMT  
		Size: 130.9 MB (130912568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c7badae181688c4e03eb20434dce5e12fbe6367d0cff4bf0f84871ef9ff102`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 531.3 KB (531300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6584b2e951d677b589c124ada8bfaafd293b8d4e7f287735473e869993c03a7`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38563e78d6d5c50b787011ee029e6342191a6989779af847aee141f09bf3ccbd`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac2bfc83771c31f3aaaf86622503b9d8005e1ae95c66429ab69790a54fe5a15`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3526def363b8ede320d8a01566b589ef4504269625f74c19a3de18f817fedb76`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:f0cda40c07f90d37c4a8e4b99c0efb41a1c3a09e881d81d5274f5a250c4483e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:f798cd9f9976388408a89d263042957f3b5cd60037f1665b03da72a4c39f3750
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.5 MB (400460384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:951ff0eef15ddef28d7546d3361d1212138508facb49028d05e8c8e4b9eed947`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:44:16 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 06:44:17 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 06:44:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_VERSION=12.0
# Tue, 16 Oct 2018 06:44:50 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 06:46:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 06:46:05 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 06:46:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 06:46:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 06:46:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 06:46:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 06:46:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 06:46:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 06:46:08 GMT
USER [odoo]
# Tue, 16 Oct 2018 06:46:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 06:46:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fbea6af0fc40efc1121ff154072b05f4e765aea2b774ba6b58d6d7c311f620`  
		Last Modified: Tue, 16 Oct 2018 06:51:07 GMT  
		Size: 222.2 MB (222192380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561fe8f1ee816d78157e7320990fbd6fce42de03fe468cb70dacb628cab53192`  
		Last Modified: Tue, 16 Oct 2018 06:50:58 GMT  
		Size: 132.4 MB (132424991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e9aa762ecb27c64af41549cf2cd0cfe4b321603c8d601512c0f67adb42b895`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 531.2 KB (531244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a521c24aec7cb1ff09f0d718be55d179f4a2e61e2c0d2a3dc24d0464b2cc1f6`  
		Last Modified: Tue, 16 Oct 2018 06:50:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67114fbc0cd24ead882ef2daab04ceb39d2685251d8eb044165c9e4d9cfe2338`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9802a77661b820e34810cef1eac66e092fa7abeeb4a40b305ca55f8f065d3a`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2873d4871107e7d9b81513a18d5a187f79ed73d9fc0a413a4b511845e35e678`  
		Last Modified: Tue, 16 Oct 2018 06:50:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:72952c7adb5bce9c3979b1faf36f3b8185b130b2b56e9099edbeef39eb472e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393987066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87de0a2769dd52d629d6a56e44b7e082c40907c5240b5859d6ba8308a7aaaf25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 05 Oct 2018 09:09:01 GMT
ENV ODOO_VERSION=12.0
# Tue, 09 Oct 2018 08:51:31 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:55:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 08:55:37 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 08:55:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 08:55:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 08:55:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:55:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 08:55:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 08:55:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 08:56:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:56:01 GMT
USER [odoo]
# Tue, 09 Oct 2018 08:56:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 08:56:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ecb491b6e36740db12f6aed000c39a2d40b511e19fc0878c221913ca0a5725`  
		Last Modified: Tue, 09 Oct 2018 09:01:40 GMT  
		Size: 130.9 MB (130912568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c7badae181688c4e03eb20434dce5e12fbe6367d0cff4bf0f84871ef9ff102`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 531.3 KB (531300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6584b2e951d677b589c124ada8bfaafd293b8d4e7f287735473e869993c03a7`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38563e78d6d5c50b787011ee029e6342191a6989779af847aee141f09bf3ccbd`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac2bfc83771c31f3aaaf86622503b9d8005e1ae95c66429ab69790a54fe5a15`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3526def363b8ede320d8a01566b589ef4504269625f74c19a3de18f817fedb76`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
