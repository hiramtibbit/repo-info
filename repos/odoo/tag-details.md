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
$ docker pull odoo@sha256:386ec8f9c4620ff670d157654dd29d97b3e5fa2a694e4dec108330159f90a358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:e207730387eef77da737759393a887bb239a1bce1a8dde4008fa3f9ae285b084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288509970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f20ab1124bb00e6f87ff4b56ce934c0332fbad88c0d182ef35c3a51b947a41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:07:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:08:38 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 05 Sep 2018 01:08:38 GMT
ENV ODOO_VERSION=10.0
# Mon, 08 Oct 2018 23:32:12 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:33:29 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b94e32470287957ff4e1111e6c58e85c057f60db odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:33:30 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:33:30 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Mon, 08 Oct 2018 23:33:31 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:33:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:33:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:33:32 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:33:32 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:33:32 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:33:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:33:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10510b3f6784246ab0b3fada8c8d44ffa27bf54c343a39e2d29da415535127c8`  
		Last Modified: Wed, 05 Sep 2018 01:13:03 GMT  
		Size: 87.0 MB (87036039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50efd221f9585dd3b076370f554d5da852297e495c8cd3753dbf3e31814fea59`  
		Last Modified: Mon, 08 Oct 2018 23:35:44 GMT  
		Size: 147.2 MB (147219835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e868c42fb9544c0bcd70a200abc0c6b120fc6f3f696018c9627f68eb6b592cb`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f88d91f47b55384e455fe34aaa5618f7b5b6e9dd0fcd71d25a40369f52ac53`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9d8807a4a456f6ece83b2d86008215759607e1d49827965310a653385aa7c9`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5bb716b230cfd62879cc599fabea7198b8529e89b771a299da915f987ca653`  
		Last Modified: Mon, 08 Oct 2018 23:35:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:386ec8f9c4620ff670d157654dd29d97b3e5fa2a694e4dec108330159f90a358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:e207730387eef77da737759393a887bb239a1bce1a8dde4008fa3f9ae285b084
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288509970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92f20ab1124bb00e6f87ff4b56ce934c0332fbad88c0d182ef35c3a51b947a41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:07:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:08:38 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 05 Sep 2018 01:08:38 GMT
ENV ODOO_VERSION=10.0
# Mon, 08 Oct 2018 23:32:12 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:33:29 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b94e32470287957ff4e1111e6c58e85c057f60db odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:33:30 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:33:30 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Mon, 08 Oct 2018 23:33:31 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:33:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:33:32 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:33:32 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:33:32 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:33:32 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:33:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:33:33 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10510b3f6784246ab0b3fada8c8d44ffa27bf54c343a39e2d29da415535127c8`  
		Last Modified: Wed, 05 Sep 2018 01:13:03 GMT  
		Size: 87.0 MB (87036039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50efd221f9585dd3b076370f554d5da852297e495c8cd3753dbf3e31814fea59`  
		Last Modified: Mon, 08 Oct 2018 23:35:44 GMT  
		Size: 147.2 MB (147219835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e868c42fb9544c0bcd70a200abc0c6b120fc6f3f696018c9627f68eb6b592cb`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f88d91f47b55384e455fe34aaa5618f7b5b6e9dd0fcd71d25a40369f52ac53`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9d8807a4a456f6ece83b2d86008215759607e1d49827965310a653385aa7c9`  
		Last Modified: Mon, 08 Oct 2018 23:35:19 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa5bb716b230cfd62879cc599fabea7198b8529e89b771a299da915f987ca653`  
		Last Modified: Mon, 08 Oct 2018 23:35:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:da3d6bfabdc9324f5efe1b6fe044a436dc2767afdf0ae709c821255005bf8879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:f0117e5d368abfff36184ed3f7d67af5e6540a7ff9b496edf58acb324f43ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422167516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc2367521397932ecb2da45b5139d8da88f9c11cc4c5e9383aed6b4c80f02c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_VERSION=11.0
# Mon, 08 Oct 2018 23:30:51 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:31:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:31:44 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:31:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:31:47 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:31:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:31:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:31:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:31:56 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:31:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:31:56 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1c674aa418676115f1a65d3bb35dfb80c210ffc0d8d53ce4065945bb11c623`  
		Last Modified: Mon, 08 Oct 2018 23:35:02 GMT  
		Size: 154.2 MB (154235006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8925bd6e65fa15f95a95e24472d30d62788f4ae8029aa686015a31f33cf6508f`  
		Last Modified: Mon, 08 Oct 2018 23:34:36 GMT  
		Size: 531.3 KB (531289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0824584baca89a3f16cfa4fed58f396a0917adc925a26a32f98d56fdcb3730a4`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4ae665eb30384bdcfb1650585f505df430d170785d0c96cb852f66964161f0`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07055ea5627309db6dcd4b7719d31293353ddb1cdc49d219c58553701144f52`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a626a6c83b32d9719dff018be2751f39ccfe6cb4840a9a6057ff515e1cbc4c2`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
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
$ docker pull odoo@sha256:da3d6bfabdc9324f5efe1b6fe044a436dc2767afdf0ae709c821255005bf8879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:f0117e5d368abfff36184ed3f7d67af5e6540a7ff9b496edf58acb324f43ff97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.2 MB (422167516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc2367521397932ecb2da45b5139d8da88f9c11cc4c5e9383aed6b4c80f02c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_VERSION=11.0
# Mon, 08 Oct 2018 23:30:51 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:31:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '28804ea596ea88eeb1cec5c6089436af0bd67d57 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:31:44 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:31:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:31:47 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:31:54 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:31:55 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:31:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:31:56 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:31:56 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:31:56 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:31:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:57 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1c674aa418676115f1a65d3bb35dfb80c210ffc0d8d53ce4065945bb11c623`  
		Last Modified: Mon, 08 Oct 2018 23:35:02 GMT  
		Size: 154.2 MB (154235006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8925bd6e65fa15f95a95e24472d30d62788f4ae8029aa686015a31f33cf6508f`  
		Last Modified: Mon, 08 Oct 2018 23:34:36 GMT  
		Size: 531.3 KB (531289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0824584baca89a3f16cfa4fed58f396a0917adc925a26a32f98d56fdcb3730a4`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4ae665eb30384bdcfb1650585f505df430d170785d0c96cb852f66964161f0`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07055ea5627309db6dcd4b7719d31293353ddb1cdc49d219c58553701144f52`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a626a6c83b32d9719dff018be2751f39ccfe6cb4840a9a6057ff515e1cbc4c2`  
		Last Modified: Mon, 08 Oct 2018 23:34:35 GMT  
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
$ docker pull odoo@sha256:0e050fde9ca8b8ba5d92e7382d350e82faad8d8a554e8a1fd8f7ee0796e465d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:3023176442254d1dade6bcfa3ec802978c842dc96eea0cadacbd1ee82cab1dfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.4 MB (400359628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa47cf206bc2ff7c9a08e87ecc37b1e0e26923ead3e48f48dcca87aa7e6ed98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 04 Oct 2018 18:19:48 GMT
ENV ODOO_VERSION=12.0
# Mon, 08 Oct 2018 23:29:16 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:30:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:30:23 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:30:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:30:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:30:28 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:30:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:30:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:30:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:36 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:30:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:30:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3ba02f584a801389f8772c46676cbb8db7cf0b96c347b151b8ac72ef85bc41`  
		Last Modified: Mon, 08 Oct 2018 23:34:10 GMT  
		Size: 132.4 MB (132427139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405853b67e93ab86487a7045504c8c3e0757cff3c24e4fd95342e78673f31d23`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 531.3 KB (531269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501dd141170c71191272954db3235b1de8e45fc4ede9041a173d5c54c5b418fa`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1aeec802cd31b29532492a3e5ab24125010a6ab1affa06bae574eb7a7c2d28`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1346d0907e53228e9565ae53fa7180ad59fcde5716f822c8a31ad7132e724598`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb0375692f06a474365f742af6852098c227d55ddab45a073225fc4ca6e05b`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 127.0 B  
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
$ docker pull odoo@sha256:0e050fde9ca8b8ba5d92e7382d350e82faad8d8a554e8a1fd8f7ee0796e465d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:3023176442254d1dade6bcfa3ec802978c842dc96eea0cadacbd1ee82cab1dfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.4 MB (400359628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa47cf206bc2ff7c9a08e87ecc37b1e0e26923ead3e48f48dcca87aa7e6ed98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 04 Oct 2018 18:19:48 GMT
ENV ODOO_VERSION=12.0
# Mon, 08 Oct 2018 23:29:16 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:30:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:30:23 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:30:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:30:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:30:28 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:30:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:30:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:30:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:36 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:30:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:30:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3ba02f584a801389f8772c46676cbb8db7cf0b96c347b151b8ac72ef85bc41`  
		Last Modified: Mon, 08 Oct 2018 23:34:10 GMT  
		Size: 132.4 MB (132427139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405853b67e93ab86487a7045504c8c3e0757cff3c24e4fd95342e78673f31d23`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 531.3 KB (531269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501dd141170c71191272954db3235b1de8e45fc4ede9041a173d5c54c5b418fa`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1aeec802cd31b29532492a3e5ab24125010a6ab1affa06bae574eb7a7c2d28`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1346d0907e53228e9565ae53fa7180ad59fcde5716f822c8a31ad7132e724598`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb0375692f06a474365f742af6852098c227d55ddab45a073225fc4ca6e05b`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 127.0 B  
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
$ docker pull odoo@sha256:a20ddfe6c265627ca0279b3e462e251bee957e138de143bc1cc620bfdafdc5cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:3023176442254d1dade6bcfa3ec802978c842dc96eea0cadacbd1ee82cab1dfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.4 MB (400359628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa47cf206bc2ff7c9a08e87ecc37b1e0e26923ead3e48f48dcca87aa7e6ed98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 04 Oct 2018 18:19:48 GMT
ENV ODOO_VERSION=12.0
# Mon, 08 Oct 2018 23:29:16 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:30:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:30:23 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:30:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:30:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:30:28 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:30:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:30:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:30:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:36 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:30:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:30:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3ba02f584a801389f8772c46676cbb8db7cf0b96c347b151b8ac72ef85bc41`  
		Last Modified: Mon, 08 Oct 2018 23:34:10 GMT  
		Size: 132.4 MB (132427139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405853b67e93ab86487a7045504c8c3e0757cff3c24e4fd95342e78673f31d23`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 531.3 KB (531269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501dd141170c71191272954db3235b1de8e45fc4ede9041a173d5c54c5b418fa`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1aeec802cd31b29532492a3e5ab24125010a6ab1affa06bae574eb7a7c2d28`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1346d0907e53228e9565ae53fa7180ad59fcde5716f822c8a31ad7132e724598`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb0375692f06a474365f742af6852098c227d55ddab45a073225fc4ca6e05b`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:e2e9c5615d28c6cbd8ddaba10ca626008e17b4201a3dff2261c175752f24cfb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.2 MB (394231063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf723fcc32ec5abbece31d41a1429df896ef613d1489d4c7e47762e36916b2e`
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
# Fri, 05 Oct 2018 09:09:02 GMT
ENV ODOO_RELEASE=20181004
# Fri, 05 Oct 2018 09:17:54 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '3c8718416df355bc823a0c1cb4af6b8141183a3b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 05 Oct 2018 09:18:35 GMT
RUN pip3 install num2words xlwt
# Fri, 05 Oct 2018 09:18:36 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 05 Oct 2018 09:18:37 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 05 Oct 2018 09:18:39 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 05 Oct 2018 09:18:41 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 05 Oct 2018 09:18:44 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 05 Oct 2018 09:18:45 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 05 Oct 2018 09:18:46 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 05 Oct 2018 09:18:47 GMT
USER [odoo]
# Fri, 05 Oct 2018 09:18:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 05 Oct 2018 09:18:49 GMT
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
	-	`sha256:d141f5ae8b203eebc32fb52e668bddd97a09a8d1485afeca7ff49626b03404bd`  
		Last Modified: Fri, 05 Oct 2018 09:20:26 GMT  
		Size: 131.2 MB (131156560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb30a0dc9762fc3627f330098c59263dc179aa4ce4ef154fad59ba1a4e8a2e9`  
		Last Modified: Fri, 05 Oct 2018 09:19:29 GMT  
		Size: 531.3 KB (531300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2578e6ec8a86b14aa55caad0f47981ed82cd7e19333036767169fb48459b0ed4`  
		Last Modified: Fri, 05 Oct 2018 09:19:29 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0e239ef4dde4fe251b6e71e9ac073d3a192a1a7a5ccac614bcf35fa8f907a8`  
		Last Modified: Fri, 05 Oct 2018 09:19:29 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bb2601fc75bba26927fed3836b353b3561fa69308b6e66e1799a70c2f676de`  
		Last Modified: Fri, 05 Oct 2018 09:19:29 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf36169b6a300a85ee44d581bc411524cc0f89641bfc6b10400bd5e525f10ca`  
		Last Modified: Fri, 05 Oct 2018 09:19:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
