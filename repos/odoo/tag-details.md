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
$ docker pull odoo@sha256:b3f6d59b58e845e5eda7125cd0780bc901c86f10c21350526e5726adb9131eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:2d94714394937b457b3fcaf121aa76409cd7f4593e1b1a1ae8e52c43f14d4683
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280525431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d762c00d8c9cb1418a215b091d8ef773f8fd55e2dafb7df3f90e146cba6a023e`
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
# Wed, 05 Sep 2018 01:08:38 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:10:23 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '98736953010be3c578f4b9eb1c7e2c87da93a7bd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:10:24 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:10:24 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 05 Sep 2018 01:10:25 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:10:25 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:10:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:10:26 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:10:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:10:26 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:10:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:10:26 GMT
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
	-	`sha256:59c8c465dc01630484be017b27c7921fb8025a8199c4ae5b01ce4d420a62779d`  
		Last Modified: Wed, 05 Sep 2018 01:13:14 GMT  
		Size: 139.2 MB (139235300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3163c81b98e96a8bde14a76afdc40806f7e31c3278626ef63ba323474b0acc1`  
		Last Modified: Wed, 05 Sep 2018 01:12:42 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798f991aa98f3073b2efd3d80017c104cbbcd33a017fcd2bd4781bc1ed852bc6`  
		Last Modified: Wed, 05 Sep 2018 01:12:43 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1354a72698c74647bf2ad943a59ec074858caf4c6eee4f3b37c8418cb62796`  
		Last Modified: Wed, 05 Sep 2018 01:12:43 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72f96cf7617944a6ce22075f7e17d623b070f23447c05cafedcd1af579224a`  
		Last Modified: Wed, 05 Sep 2018 01:12:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:b3f6d59b58e845e5eda7125cd0780bc901c86f10c21350526e5726adb9131eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:2d94714394937b457b3fcaf121aa76409cd7f4593e1b1a1ae8e52c43f14d4683
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280525431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d762c00d8c9cb1418a215b091d8ef773f8fd55e2dafb7df3f90e146cba6a023e`
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
# Wed, 05 Sep 2018 01:08:38 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:10:23 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '98736953010be3c578f4b9eb1c7e2c87da93a7bd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:10:24 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:10:24 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 05 Sep 2018 01:10:25 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:10:25 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:10:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:10:26 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:10:26 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:10:26 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:10:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:10:26 GMT
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
	-	`sha256:59c8c465dc01630484be017b27c7921fb8025a8199c4ae5b01ce4d420a62779d`  
		Last Modified: Wed, 05 Sep 2018 01:13:14 GMT  
		Size: 139.2 MB (139235300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3163c81b98e96a8bde14a76afdc40806f7e31c3278626ef63ba323474b0acc1`  
		Last Modified: Wed, 05 Sep 2018 01:12:42 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798f991aa98f3073b2efd3d80017c104cbbcd33a017fcd2bd4781bc1ed852bc6`  
		Last Modified: Wed, 05 Sep 2018 01:12:43 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1354a72698c74647bf2ad943a59ec074858caf4c6eee4f3b37c8418cb62796`  
		Last Modified: Wed, 05 Sep 2018 01:12:43 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72f96cf7617944a6ce22075f7e17d623b070f23447c05cafedcd1af579224a`  
		Last Modified: Wed, 05 Sep 2018 01:12:42 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:dae7f71055de7112e838734fcae2d40168b64fc08492a52f32d922f1de6ec721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:f99fcab1dfb31bb247c6942fbeeb05468638369b9ebecbb126a9595fe5cddca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.2 MB (421223194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f4eed3dd7d1c05112527c52b44bac0894d380352e52ae68d2e2ab981a2b423`
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
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:07:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:07:15 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 01:07:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:07:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 01:07:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:07:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:07:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:07:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:07:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:07:18 GMT
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
	-	`sha256:a2bfb5d8724d597c83f2ec417ccddf0595d8301160620d62f7cfeeb48211af71`  
		Last Modified: Wed, 05 Sep 2018 01:12:26 GMT  
		Size: 153.3 MB (153290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eb141c83ff10ca6bcad03d8fb56b60592f91dbbdffbe22fc9367f6794a417`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 531.3 KB (531296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b4bb035ddd9fd788fb666dc1483de414cc9933bbb2800f1a46072635e24c11`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf59212822d1c984fb2aee4a33e5cc427be71c740edfafa8b0044b33056a95b`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e5d84f03153a89c287d029e565eb0e05dab276a802ab1619366a64ce608135`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019089ad41c29037db55d6039ace7c2d94b9a8480bf41ac439def4c67064998d`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4f840e5c6cb9863c797af9f12cabecb5a3094f1751d7c34e51d3c19efcc088aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.9 MB (414880983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6cf008f071b0e99dbb4c9ef7abf49d5acb6cf62befc76366def243f085b273`
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
# Wed, 05 Sep 2018 12:17:48 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 12:21:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 12:21:41 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 12:21:42 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 12:21:43 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 12:21:47 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 12:21:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 12:21:50 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 12:21:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:52 GMT
USER [odoo]
# Wed, 05 Sep 2018 12:21:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:21:54 GMT
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
	-	`sha256:e1f68a9d1f9b061ea280b293397ebf35a86d7d17ce2b806836fdd6c7e8a19a94`  
		Last Modified: Wed, 05 Sep 2018 12:23:32 GMT  
		Size: 151.8 MB (151806475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30f0923a6bc672d6cc39b4da8576771e22d85723de9aa6dca1d7d1e7d2144d`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 531.3 KB (531306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671ac17c483498e992d1390f3c51a86545716ced322bbbfd362abd086f69e6c6`  
		Last Modified: Wed, 05 Sep 2018 12:22:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e6ded01fbd43ea4e645b5a6a957c368c49fc9177f1797829b53db56c325d2c`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b4a7e725f101a694fe96a2b36356ffc2dd385d7b2c15b4c341d2218a48f179`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add9c11ed1119a275b688eccad1c4932f330d0db44efd96b0c6547aa758e4f`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:dae7f71055de7112e838734fcae2d40168b64fc08492a52f32d922f1de6ec721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:f99fcab1dfb31bb247c6942fbeeb05468638369b9ebecbb126a9595fe5cddca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.2 MB (421223194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f4eed3dd7d1c05112527c52b44bac0894d380352e52ae68d2e2ab981a2b423`
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
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:07:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:07:15 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 01:07:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:07:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 01:07:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:07:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:07:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:07:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:07:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:07:18 GMT
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
	-	`sha256:a2bfb5d8724d597c83f2ec417ccddf0595d8301160620d62f7cfeeb48211af71`  
		Last Modified: Wed, 05 Sep 2018 01:12:26 GMT  
		Size: 153.3 MB (153290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eb141c83ff10ca6bcad03d8fb56b60592f91dbbdffbe22fc9367f6794a417`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 531.3 KB (531296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b4bb035ddd9fd788fb666dc1483de414cc9933bbb2800f1a46072635e24c11`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf59212822d1c984fb2aee4a33e5cc427be71c740edfafa8b0044b33056a95b`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e5d84f03153a89c287d029e565eb0e05dab276a802ab1619366a64ce608135`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019089ad41c29037db55d6039ace7c2d94b9a8480bf41ac439def4c67064998d`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4f840e5c6cb9863c797af9f12cabecb5a3094f1751d7c34e51d3c19efcc088aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.9 MB (414880983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6cf008f071b0e99dbb4c9ef7abf49d5acb6cf62befc76366def243f085b273`
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
# Wed, 05 Sep 2018 12:17:48 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 12:21:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 12:21:41 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 12:21:42 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 12:21:43 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 12:21:47 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 12:21:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 12:21:50 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 12:21:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:52 GMT
USER [odoo]
# Wed, 05 Sep 2018 12:21:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:21:54 GMT
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
	-	`sha256:e1f68a9d1f9b061ea280b293397ebf35a86d7d17ce2b806836fdd6c7e8a19a94`  
		Last Modified: Wed, 05 Sep 2018 12:23:32 GMT  
		Size: 151.8 MB (151806475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30f0923a6bc672d6cc39b4da8576771e22d85723de9aa6dca1d7d1e7d2144d`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 531.3 KB (531306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671ac17c483498e992d1390f3c51a86545716ced322bbbfd362abd086f69e6c6`  
		Last Modified: Wed, 05 Sep 2018 12:22:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e6ded01fbd43ea4e645b5a6a957c368c49fc9177f1797829b53db56c325d2c`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b4a7e725f101a694fe96a2b36356ffc2dd385d7b2c15b4c341d2218a48f179`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add9c11ed1119a275b688eccad1c4932f330d0db44efd96b0c6547aa758e4f`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:65f820a12396c53452116810fa1adbb7b65cd3e0bb54dad658748eb1e7f340ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:586aa5000b502898491f28a8d704069dc22f8166633169f3cec8a8310c1111bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291330587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43745a0ac9bdc8f18dabe8eeb787557c8b36c4423c32c93684656a454ebefae8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:07:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:08:38 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 05 Sep 2018 01:10:33 GMT
ENV ODOO_VERSION=9.0
# Wed, 05 Sep 2018 01:10:33 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:11:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '25f90d98509484bc4b54174ccb814dd96ddb797b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:11:39 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 05 Sep 2018 01:11:39 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 05 Sep 2018 01:11:39 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 05 Sep 2018 01:11:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:11:40 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:11:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:11:41 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 05 Sep 2018 01:11:41 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:11:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:11:41 GMT
CMD ["openerp-server"]
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
	-	`sha256:24759b5d352bd3b899dcfc81b9190e8f6b23e3ed00de0f753fdc4f4dec5e3bf1`  
		Last Modified: Wed, 05 Sep 2018 01:13:51 GMT  
		Size: 150.0 MB (150040420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13edf4a371eedceaac2e67fa8f422d97398c87f477663c8b6f04e97936450df8`  
		Last Modified: Wed, 05 Sep 2018 01:13:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7567919b6c14127f7201fe161ee5a928a899e6dc8cd033e70fdf780bcbc34f`  
		Last Modified: Wed, 05 Sep 2018 01:13:21 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74d4123b90afb6153f40018819f3473525ef577f0c0d53cf0aabc88ade5610e`  
		Last Modified: Wed, 05 Sep 2018 01:13:20 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cc3e3a204d07a41d60406a653007ad46a83abcae002ea735c7032d138d0823`  
		Last Modified: Wed, 05 Sep 2018 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:65f820a12396c53452116810fa1adbb7b65cd3e0bb54dad658748eb1e7f340ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:586aa5000b502898491f28a8d704069dc22f8166633169f3cec8a8310c1111bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291330587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43745a0ac9bdc8f18dabe8eeb787557c8b36c4423c32c93684656a454ebefae8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:07:32 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:08:38 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 05 Sep 2018 01:10:33 GMT
ENV ODOO_VERSION=9.0
# Wed, 05 Sep 2018 01:10:33 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:11:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '25f90d98509484bc4b54174ccb814dd96ddb797b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:11:39 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 05 Sep 2018 01:11:39 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 05 Sep 2018 01:11:39 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 05 Sep 2018 01:11:40 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:11:40 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:11:40 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:11:41 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 05 Sep 2018 01:11:41 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:11:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:11:41 GMT
CMD ["openerp-server"]
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
	-	`sha256:24759b5d352bd3b899dcfc81b9190e8f6b23e3ed00de0f753fdc4f4dec5e3bf1`  
		Last Modified: Wed, 05 Sep 2018 01:13:51 GMT  
		Size: 150.0 MB (150040420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13edf4a371eedceaac2e67fa8f422d97398c87f477663c8b6f04e97936450df8`  
		Last Modified: Wed, 05 Sep 2018 01:13:21 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7567919b6c14127f7201fe161ee5a928a899e6dc8cd033e70fdf780bcbc34f`  
		Last Modified: Wed, 05 Sep 2018 01:13:21 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74d4123b90afb6153f40018819f3473525ef577f0c0d53cf0aabc88ade5610e`  
		Last Modified: Wed, 05 Sep 2018 01:13:20 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cc3e3a204d07a41d60406a653007ad46a83abcae002ea735c7032d138d0823`  
		Last Modified: Wed, 05 Sep 2018 01:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:dae7f71055de7112e838734fcae2d40168b64fc08492a52f32d922f1de6ec721
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:f99fcab1dfb31bb247c6942fbeeb05468638369b9ebecbb126a9595fe5cddca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.2 MB (421223194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f4eed3dd7d1c05112527c52b44bac0894d380352e52ae68d2e2ab981a2b423`
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
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:07:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:07:15 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 01:07:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:07:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 01:07:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:07:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:07:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:07:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:07:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:07:18 GMT
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
	-	`sha256:a2bfb5d8724d597c83f2ec417ccddf0595d8301160620d62f7cfeeb48211af71`  
		Last Modified: Wed, 05 Sep 2018 01:12:26 GMT  
		Size: 153.3 MB (153290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eb141c83ff10ca6bcad03d8fb56b60592f91dbbdffbe22fc9367f6794a417`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 531.3 KB (531296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b4bb035ddd9fd788fb666dc1483de414cc9933bbb2800f1a46072635e24c11`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf59212822d1c984fb2aee4a33e5cc427be71c740edfafa8b0044b33056a95b`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e5d84f03153a89c287d029e565eb0e05dab276a802ab1619366a64ce608135`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019089ad41c29037db55d6039ace7c2d94b9a8480bf41ac439def4c67064998d`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4f840e5c6cb9863c797af9f12cabecb5a3094f1751d7c34e51d3c19efcc088aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.9 MB (414880983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f6cf008f071b0e99dbb4c9ef7abf49d5acb6cf62befc76366def243f085b273`
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
# Wed, 05 Sep 2018 12:17:48 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 12:21:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 12:21:41 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 12:21:42 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 12:21:43 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 12:21:47 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:49 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 12:21:49 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 12:21:50 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 12:21:51 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 12:21:52 GMT
USER [odoo]
# Wed, 05 Sep 2018 12:21:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 12:21:54 GMT
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
	-	`sha256:e1f68a9d1f9b061ea280b293397ebf35a86d7d17ce2b806836fdd6c7e8a19a94`  
		Last Modified: Wed, 05 Sep 2018 12:23:32 GMT  
		Size: 151.8 MB (151806475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd30f0923a6bc672d6cc39b4da8576771e22d85723de9aa6dca1d7d1e7d2144d`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 531.3 KB (531306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:671ac17c483498e992d1390f3c51a86545716ced322bbbfd362abd086f69e6c6`  
		Last Modified: Wed, 05 Sep 2018 12:22:24 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e6ded01fbd43ea4e645b5a6a957c368c49fc9177f1797829b53db56c325d2c`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b4a7e725f101a694fe96a2b36356ffc2dd385d7b2c15b4c341d2218a48f179`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add9c11ed1119a275b688eccad1c4932f330d0db44efd96b0c6547aa758e4f`  
		Last Modified: Wed, 05 Sep 2018 12:22:25 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
