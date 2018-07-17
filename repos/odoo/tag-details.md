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
$ docker pull odoo@sha256:95814b07578c46ecdb6cd69d828e013a6d40c2cfe0650affdac07dc1472a3a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:9b2c8382d8a9da484941ec5d743eef9c69477c940eace933b4f8db1cecafa759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280199451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbf82376cd2db522f24e1b9c9537dbbd44b6afe217c9c7e9302e7469503c008`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:31:27 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:33:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jul 2018 04:36:07 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jul 2018 04:36:08 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:38:05 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5aa056fa00a2f405652ba1386807c59ae563af29 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:38:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jul 2018 04:38:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 17 Jul 2018 04:38:08 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:38:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:38:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:38:10 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:38:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:38:10 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:38:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:38:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6926caede5b5ab28d05270141c14145d98ba3bcb1e22728f26732a3a9e852c3`  
		Last Modified: Tue, 17 Jul 2018 04:42:33 GMT  
		Size: 87.0 MB (87033875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c51f32a56bf6e76a453bff4849a5084648c29349cbd48aa204f7d637d292`  
		Last Modified: Tue, 17 Jul 2018 04:44:36 GMT  
		Size: 138.9 MB (138911569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dbd77d0336eb7f0e31dcbd0b86e753b442debd04ee65d858552a2889abd3d8`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc71221f7c2534a6cd951a36de0f29b0eb00ca2d71e032e10c8c6d50078087f`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02d36a21c00722ad1796eb39e4c257c0a88dc0871185e14644a825d33a83878`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec908f8ea6906b8dacbd454641912cf2ffbe968af95c533f9c3dcf7590ccd3f`  
		Last Modified: Tue, 17 Jul 2018 04:43:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:95814b07578c46ecdb6cd69d828e013a6d40c2cfe0650affdac07dc1472a3a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:9b2c8382d8a9da484941ec5d743eef9c69477c940eace933b4f8db1cecafa759
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280199451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbbf82376cd2db522f24e1b9c9537dbbd44b6afe217c9c7e9302e7469503c008`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:31:27 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:33:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jul 2018 04:36:07 GMT
ENV ODOO_VERSION=10.0
# Tue, 17 Jul 2018 04:36:08 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:38:05 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5aa056fa00a2f405652ba1386807c59ae563af29 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:38:07 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jul 2018 04:38:07 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 17 Jul 2018 04:38:08 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:38:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:38:09 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:38:10 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:38:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:38:10 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:38:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:38:10 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6926caede5b5ab28d05270141c14145d98ba3bcb1e22728f26732a3a9e852c3`  
		Last Modified: Tue, 17 Jul 2018 04:42:33 GMT  
		Size: 87.0 MB (87033875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd7c51f32a56bf6e76a453bff4849a5084648c29349cbd48aa204f7d637d292`  
		Last Modified: Tue, 17 Jul 2018 04:44:36 GMT  
		Size: 138.9 MB (138911569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dbd77d0336eb7f0e31dcbd0b86e753b442debd04ee65d858552a2889abd3d8`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc71221f7c2534a6cd951a36de0f29b0eb00ca2d71e032e10c8c6d50078087f`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02d36a21c00722ad1796eb39e4c257c0a88dc0871185e14644a825d33a83878`  
		Last Modified: Tue, 17 Jul 2018 04:43:49 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec908f8ea6906b8dacbd454641912cf2ffbe968af95c533f9c3dcf7590ccd3f`  
		Last Modified: Tue, 17 Jul 2018 04:43:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:15d7a3ea02c4ef7d3298cf493dc2a088042a82a3969a0e5515dd257a668bfc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:44ae5bf5fa3a3d6ce5dcf54e54cd3225acef4a63a3ed6d23ce37bdd592acb364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.4 MB (420430312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2c49f534cdd52d2a4ed36ec65fb6222ace52c72300643725da9f4cf07f4821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:38:48 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:38:49 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 04:39:36 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_VERSION=11.0
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:41:09 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:41:18 GMT
RUN pip3 install num2words xlwt
# Tue, 17 Jul 2018 04:41:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jul 2018 04:41:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 17 Jul 2018 04:41:29 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:41:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:41:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:41:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:30 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:41:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a099e7415dec128f1b36668da3dcefad66c5c3cdaa08fa8398b3c971b14b50`  
		Last Modified: Tue, 17 Jul 2018 04:46:30 GMT  
		Size: 222.1 MB (222070509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d625aa523bcbc5691d0a5bd83d8ce11027894d910351eb796482e223734e8c`  
		Last Modified: Tue, 17 Jul 2018 04:46:18 GMT  
		Size: 152.5 MB (152516681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d34711977c6d666388fa174f9e2affc1311bef1b67d27ade322c73173615bd9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 531.2 KB (531243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f087a7558e102d1862c5c81336fd3463e76c79cf534c32897e84b4d89c8a29`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d3ebec654f4b2b04cd23286c07a3c04d120088e98d3e803266acb14f896d9d`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f373c062f56bfa63c2c0b1966fe8c89b59c8b79a8b8e3dad1728d374a2a2d9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc69530680dfaedc0a9a4e4333235f40c3d119a3d3506832ec104c96bec324fc`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:15d7a3ea02c4ef7d3298cf493dc2a088042a82a3969a0e5515dd257a668bfc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:44ae5bf5fa3a3d6ce5dcf54e54cd3225acef4a63a3ed6d23ce37bdd592acb364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.4 MB (420430312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2c49f534cdd52d2a4ed36ec65fb6222ace52c72300643725da9f4cf07f4821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:38:48 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:38:49 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 04:39:36 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_VERSION=11.0
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:41:09 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:41:18 GMT
RUN pip3 install num2words xlwt
# Tue, 17 Jul 2018 04:41:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jul 2018 04:41:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 17 Jul 2018 04:41:29 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:41:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:41:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:41:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:30 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:41:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a099e7415dec128f1b36668da3dcefad66c5c3cdaa08fa8398b3c971b14b50`  
		Last Modified: Tue, 17 Jul 2018 04:46:30 GMT  
		Size: 222.1 MB (222070509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d625aa523bcbc5691d0a5bd83d8ce11027894d910351eb796482e223734e8c`  
		Last Modified: Tue, 17 Jul 2018 04:46:18 GMT  
		Size: 152.5 MB (152516681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d34711977c6d666388fa174f9e2affc1311bef1b67d27ade322c73173615bd9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 531.2 KB (531243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f087a7558e102d1862c5c81336fd3463e76c79cf534c32897e84b4d89c8a29`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d3ebec654f4b2b04cd23286c07a3c04d120088e98d3e803266acb14f896d9d`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f373c062f56bfa63c2c0b1966fe8c89b59c8b79a8b8e3dad1728d374a2a2d9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc69530680dfaedc0a9a4e4333235f40c3d119a3d3506832ec104c96bec324fc`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:379dbdc08628bb3808c132c16315317e365d391b46191425d0e3749610e14aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:3a24a2d3326983b84047691d62ce986cc87b83743641dbdae05e996c58bfebe8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290988888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62bb52b00d07d70ba4809be3e1a7cf0855779559eca7b35f2943eb4f4a52f23f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:31:27 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:33:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jul 2018 04:33:28 GMT
ENV ODOO_VERSION=9.0
# Tue, 17 Jul 2018 04:33:28 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:35:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '79ec48555a83507ba8956f4bb25840f5c033178a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:35:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jul 2018 04:35:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 17 Jul 2018 04:35:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jul 2018 04:35:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:35:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:35:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:35:53 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jul 2018 04:35:54 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:35:54 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6926caede5b5ab28d05270141c14145d98ba3bcb1e22728f26732a3a9e852c3`  
		Last Modified: Tue, 17 Jul 2018 04:42:33 GMT  
		Size: 87.0 MB (87033875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d0ea28738ba0ef6b01946135acdb9bf42aa17201df1e3163a0b2954e45f17`  
		Last Modified: Tue, 17 Jul 2018 04:42:58 GMT  
		Size: 149.7 MB (149700970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969b881f418eaef3be08b49249df4918116ad1ba55a639677be92d383bf6604`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6db60dc26029edcf22e04388acacd0ee39cd431ba5084164639a5b029ebda38`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69354472868bca849a87f83dab2c6a7f96442a3682d7218a84071869ee77688`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625847ce212f3653533875c38f62bc1aa86c463a12b040f13fa2a3cf04906e3`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:379dbdc08628bb3808c132c16315317e365d391b46191425d0e3749610e14aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:3a24a2d3326983b84047691d62ce986cc87b83743641dbdae05e996c58bfebe8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290988888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62bb52b00d07d70ba4809be3e1a7cf0855779559eca7b35f2943eb4f4a52f23f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:31:27 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:33:19 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 17 Jul 2018 04:33:28 GMT
ENV ODOO_VERSION=9.0
# Tue, 17 Jul 2018 04:33:28 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:35:39 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '79ec48555a83507ba8956f4bb25840f5c033178a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:35:51 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 17 Jul 2018 04:35:51 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 17 Jul 2018 04:35:52 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 17 Jul 2018 04:35:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:35:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:35:53 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:35:53 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 17 Jul 2018 04:35:54 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:35:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:35:54 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6926caede5b5ab28d05270141c14145d98ba3bcb1e22728f26732a3a9e852c3`  
		Last Modified: Tue, 17 Jul 2018 04:42:33 GMT  
		Size: 87.0 MB (87033875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52d0ea28738ba0ef6b01946135acdb9bf42aa17201df1e3163a0b2954e45f17`  
		Last Modified: Tue, 17 Jul 2018 04:42:58 GMT  
		Size: 149.7 MB (149700970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2969b881f418eaef3be08b49249df4918116ad1ba55a639677be92d383bf6604`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6db60dc26029edcf22e04388acacd0ee39cd431ba5084164639a5b029ebda38`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69354472868bca849a87f83dab2c6a7f96442a3682d7218a84071869ee77688`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8625847ce212f3653533875c38f62bc1aa86c463a12b040f13fa2a3cf04906e3`  
		Last Modified: Tue, 17 Jul 2018 04:42:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:15d7a3ea02c4ef7d3298cf493dc2a088042a82a3969a0e5515dd257a668bfc23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:44ae5bf5fa3a3d6ce5dcf54e54cd3225acef4a63a3ed6d23ce37bdd592acb364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.4 MB (420430312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d2c49f534cdd52d2a4ed36ec65fb6222ace52c72300643725da9f4cf07f4821`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:38:48 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 17 Jul 2018 04:38:49 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 04:39:36 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_VERSION=11.0
# Tue, 17 Jul 2018 04:39:43 GMT
ENV ODOO_RELEASE=20180710
# Tue, 17 Jul 2018 04:41:09 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 17 Jul 2018 04:41:18 GMT
RUN pip3 install num2words xlwt
# Tue, 17 Jul 2018 04:41:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 17 Jul 2018 04:41:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 17 Jul 2018 04:41:29 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 17 Jul 2018 04:41:30 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 17 Jul 2018 04:41:30 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 17 Jul 2018 04:41:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 17 Jul 2018 04:41:30 GMT
USER [odoo]
# Tue, 17 Jul 2018 04:41:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 04:41:43 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a099e7415dec128f1b36668da3dcefad66c5c3cdaa08fa8398b3c971b14b50`  
		Last Modified: Tue, 17 Jul 2018 04:46:30 GMT  
		Size: 222.1 MB (222070509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d625aa523bcbc5691d0a5bd83d8ce11027894d910351eb796482e223734e8c`  
		Last Modified: Tue, 17 Jul 2018 04:46:18 GMT  
		Size: 152.5 MB (152516681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d34711977c6d666388fa174f9e2affc1311bef1b67d27ade322c73173615bd9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 531.2 KB (531243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f087a7558e102d1862c5c81336fd3463e76c79cf534c32897e84b4d89c8a29`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d3ebec654f4b2b04cd23286c07a3c04d120088e98d3e803266acb14f896d9d`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f373c062f56bfa63c2c0b1966fe8c89b59c8b79a8b8e3dad1728d374a2a2d9`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc69530680dfaedc0a9a4e4333235f40c3d119a3d3506832ec104c96bec324fc`  
		Last Modified: Tue, 17 Jul 2018 04:45:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
