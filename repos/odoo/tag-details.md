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
$ docker pull odoo@sha256:408e0c9273864a97ffaa35b7ac47fa4df40b33fe42aa07dac4595fcff043303d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:0e264482fbce109955ae6f2cd2a3dcdbd3a027fee736a6f9b287916a1932414a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280198522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87472a0d16a03fa0b76a581e84c281956911199ce359f4274bf11ab6d9356b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:20:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:22:09 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Jul 2018 21:25:01 GMT
ENV ODOO_VERSION=10.0
# Tue, 10 Jul 2018 21:25:02 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:27:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5aa056fa00a2f405652ba1386807c59ae563af29 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:27:02 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Jul 2018 21:27:02 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 10 Jul 2018 21:27:03 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:27:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:27:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:27:04 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:27:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:27:05 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:27:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:27:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b6d930c259631cc2f09d9a0ab2ef632d2a2764d33ecec71a3281d37cbf6f0`  
		Last Modified: Tue, 10 Jul 2018 21:31:03 GMT  
		Size: 87.0 MB (87033990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b8ed076435816ac944eefdc80a51a788955a8a90da912d297f6aef1b3ce66c`  
		Last Modified: Tue, 10 Jul 2018 21:33:01 GMT  
		Size: 138.9 MB (138910615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc26fc4635f3986dc561e8513136c85a5b67359f71574eef0b0b3c2ddb516a0`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d275739cdea3409c02372708ca50e1e8ac59e687e28d1a53513468dcde1e1ea4`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d517749ec977b5f7046a88e8e9bf5d9a5b9526a31dd672df7dcd11bc4d4d7a31`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01e37d639c2c6adb687a7b32943220b1f6964fa105eea4d4f1f49049c1c72c3`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:408e0c9273864a97ffaa35b7ac47fa4df40b33fe42aa07dac4595fcff043303d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:0e264482fbce109955ae6f2cd2a3dcdbd3a027fee736a6f9b287916a1932414a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.2 MB (280198522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e87472a0d16a03fa0b76a581e84c281956911199ce359f4274bf11ab6d9356b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:20:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:22:09 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Jul 2018 21:25:01 GMT
ENV ODOO_VERSION=10.0
# Tue, 10 Jul 2018 21:25:02 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:27:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '5aa056fa00a2f405652ba1386807c59ae563af29 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:27:02 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Jul 2018 21:27:02 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 10 Jul 2018 21:27:03 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:27:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:27:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:27:04 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:27:05 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:27:05 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:27:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:27:05 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b6d930c259631cc2f09d9a0ab2ef632d2a2764d33ecec71a3281d37cbf6f0`  
		Last Modified: Tue, 10 Jul 2018 21:31:03 GMT  
		Size: 87.0 MB (87033990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b8ed076435816ac944eefdc80a51a788955a8a90da912d297f6aef1b3ce66c`  
		Last Modified: Tue, 10 Jul 2018 21:33:01 GMT  
		Size: 138.9 MB (138910615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc26fc4635f3986dc561e8513136c85a5b67359f71574eef0b0b3c2ddb516a0`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d275739cdea3409c02372708ca50e1e8ac59e687e28d1a53513468dcde1e1ea4`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d517749ec977b5f7046a88e8e9bf5d9a5b9526a31dd672df7dcd11bc4d4d7a31`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01e37d639c2c6adb687a7b32943220b1f6964fa105eea4d4f1f49049c1c72c3`  
		Last Modified: Tue, 10 Jul 2018 21:32:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:c2a4cc9b4c1dea332969f0e1b6d0c03baf49cfcccca6c23210783c3dded657be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:b8e329bc981b35c68fd25bba80b2b456720ba05144ac207d95624f54923ab7a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420480785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7392ccae1eea26fdaec6ec20ed1522bd7debee0ad60192678da1048fe272c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:27:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:27:20 GMT
ENV LANG=C.UTF-8
# Tue, 10 Jul 2018 21:28:13 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_VERSION=11.0
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:29:51 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:30:05 GMT
RUN pip3 install num2words xlwt
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 10 Jul 2018 21:30:07 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:30:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:09 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:30:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236b9331f23ee522709701eabdc289dd3cdb6a9dc6c16892a33c6d4f7c04521`  
		Last Modified: Tue, 10 Jul 2018 21:35:02 GMT  
		Size: 222.1 MB (222137452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fc8785ef5d499b5f957da3b389aeb550b1e41271667f673376ecf73e96dc4`  
		Last Modified: Tue, 10 Jul 2018 21:34:48 GMT  
		Size: 152.5 MB (152490981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840108dae7720542ebc0b111f0498e4726c868dbf3adee2ddd6431a5605c682`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 531.3 KB (531295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee3f86657258f71b6ad66a4604812cd8d0372045fc2afbc5621df5b21f76f23`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b948859ec5ad186f3b41fd2d2db5c1223bbe0be5c0e1279f29a29a28acc627b`  
		Last Modified: Tue, 10 Jul 2018 21:33:52 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff5a91636095157bc4c77dcd784cb9e81ef6eb6c93689fb87693898e75a58f7`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4438999a898c04d365c3f6b2f0e32648b18293bd204cf4445b44624134025027`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:c2a4cc9b4c1dea332969f0e1b6d0c03baf49cfcccca6c23210783c3dded657be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:b8e329bc981b35c68fd25bba80b2b456720ba05144ac207d95624f54923ab7a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420480785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7392ccae1eea26fdaec6ec20ed1522bd7debee0ad60192678da1048fe272c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:27:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:27:20 GMT
ENV LANG=C.UTF-8
# Tue, 10 Jul 2018 21:28:13 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_VERSION=11.0
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:29:51 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:30:05 GMT
RUN pip3 install num2words xlwt
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 10 Jul 2018 21:30:07 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:30:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:09 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:30:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236b9331f23ee522709701eabdc289dd3cdb6a9dc6c16892a33c6d4f7c04521`  
		Last Modified: Tue, 10 Jul 2018 21:35:02 GMT  
		Size: 222.1 MB (222137452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fc8785ef5d499b5f957da3b389aeb550b1e41271667f673376ecf73e96dc4`  
		Last Modified: Tue, 10 Jul 2018 21:34:48 GMT  
		Size: 152.5 MB (152490981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840108dae7720542ebc0b111f0498e4726c868dbf3adee2ddd6431a5605c682`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 531.3 KB (531295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee3f86657258f71b6ad66a4604812cd8d0372045fc2afbc5621df5b21f76f23`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b948859ec5ad186f3b41fd2d2db5c1223bbe0be5c0e1279f29a29a28acc627b`  
		Last Modified: Tue, 10 Jul 2018 21:33:52 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff5a91636095157bc4c77dcd784cb9e81ef6eb6c93689fb87693898e75a58f7`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4438999a898c04d365c3f6b2f0e32648b18293bd204cf4445b44624134025027`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:05a7478ef7d55885faa01f3858fe7c0bb33d2adbeaa9e32ad070c82c4a63c087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:2bb16f9b511693dad6975a07860682659f7feb589da2e1264e7d579445dcdbf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290990298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d371fee191ca05a1b783f97e3ca35c68952110efbb4ed17303904e83237b654d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:20:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:22:09 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Jul 2018 21:22:10 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Jul 2018 21:22:10 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:24:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '79ec48555a83507ba8956f4bb25840f5c033178a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:24:36 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Jul 2018 21:24:36 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Jul 2018 21:24:37 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Jul 2018 21:24:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:24:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:24:38 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:24:38 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Jul 2018 21:24:39 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:24:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:24:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b6d930c259631cc2f09d9a0ab2ef632d2a2764d33ecec71a3281d37cbf6f0`  
		Last Modified: Tue, 10 Jul 2018 21:31:03 GMT  
		Size: 87.0 MB (87033990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97412e74bb58a0b86d3127cf5f5669f298e44aba2a9c6b2550e335b293cce19e`  
		Last Modified: Tue, 10 Jul 2018 21:31:30 GMT  
		Size: 149.7 MB (149702356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbd942fd18b0f8992733bc6c8998ab0bf60198d1c727579074b53a0c1de32`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbcd7bbd992fad32d02c93f7ebea893119bfde73733876d57a3b681c39a023`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2094d4c589edfca8c3bd2ab1afb25c779bd8340aeb56f2a3d2e7a4aa7b0834`  
		Last Modified: Tue, 10 Jul 2018 21:30:33 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f028a0bf3b5c580cbd1706bf2c60a96c98ef187f2c32f71bd9d716fba7725b`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:05a7478ef7d55885faa01f3858fe7c0bb33d2adbeaa9e32ad070c82c4a63c087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:2bb16f9b511693dad6975a07860682659f7feb589da2e1264e7d579445dcdbf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.0 MB (290990298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d371fee191ca05a1b783f97e3ca35c68952110efbb4ed17303904e83237b654d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:20:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:22:09 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 10 Jul 2018 21:22:10 GMT
ENV ODOO_VERSION=9.0
# Tue, 10 Jul 2018 21:22:10 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:24:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '79ec48555a83507ba8956f4bb25840f5c033178a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:24:36 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 10 Jul 2018 21:24:36 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 10 Jul 2018 21:24:37 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 10 Jul 2018 21:24:38 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:24:38 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:24:38 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:24:38 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 10 Jul 2018 21:24:39 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:24:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:24:39 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b6d930c259631cc2f09d9a0ab2ef632d2a2764d33ecec71a3281d37cbf6f0`  
		Last Modified: Tue, 10 Jul 2018 21:31:03 GMT  
		Size: 87.0 MB (87033990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97412e74bb58a0b86d3127cf5f5669f298e44aba2a9c6b2550e335b293cce19e`  
		Last Modified: Tue, 10 Jul 2018 21:31:30 GMT  
		Size: 149.7 MB (149702356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adccbd942fd18b0f8992733bc6c8998ab0bf60198d1c727579074b53a0c1de32`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febbcd7bbd992fad32d02c93f7ebea893119bfde73733876d57a3b681c39a023`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 587.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2094d4c589edfca8c3bd2ab1afb25c779bd8340aeb56f2a3d2e7a4aa7b0834`  
		Last Modified: Tue, 10 Jul 2018 21:30:33 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f028a0bf3b5c580cbd1706bf2c60a96c98ef187f2c32f71bd9d716fba7725b`  
		Last Modified: Tue, 10 Jul 2018 21:30:32 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:c2a4cc9b4c1dea332969f0e1b6d0c03baf49cfcccca6c23210783c3dded657be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:b8e329bc981b35c68fd25bba80b2b456720ba05144ac207d95624f54923ab7a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.5 MB (420480785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7392ccae1eea26fdaec6ec20ed1522bd7debee0ad60192678da1048fe272c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 10 Jul 2018 21:27:20 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 10 Jul 2018 21:27:20 GMT
ENV LANG=C.UTF-8
# Tue, 10 Jul 2018 21:28:13 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_VERSION=11.0
# Tue, 10 Jul 2018 21:28:18 GMT
ENV ODOO_RELEASE=20180710
# Tue, 10 Jul 2018 21:29:51 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'b843864476bb149d1b5715b7fa3ef726b3658d6a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 10 Jul 2018 21:30:05 GMT
RUN pip3 install num2words xlwt
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 10 Jul 2018 21:30:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 10 Jul 2018 21:30:07 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:08 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 10 Jul 2018 21:30:08 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 10 Jul 2018 21:30:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 10 Jul 2018 21:30:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 10 Jul 2018 21:30:09 GMT
USER [odoo]
# Tue, 10 Jul 2018 21:30:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:30:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0236b9331f23ee522709701eabdc289dd3cdb6a9dc6c16892a33c6d4f7c04521`  
		Last Modified: Tue, 10 Jul 2018 21:35:02 GMT  
		Size: 222.1 MB (222137452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fc8785ef5d499b5f957da3b389aeb550b1e41271667f673376ecf73e96dc4`  
		Last Modified: Tue, 10 Jul 2018 21:34:48 GMT  
		Size: 152.5 MB (152490981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f840108dae7720542ebc0b111f0498e4726c868dbf3adee2ddd6431a5605c682`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 531.3 KB (531295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee3f86657258f71b6ad66a4604812cd8d0372045fc2afbc5621df5b21f76f23`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b948859ec5ad186f3b41fd2d2db5c1223bbe0be5c0e1279f29a29a28acc627b`  
		Last Modified: Tue, 10 Jul 2018 21:33:52 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff5a91636095157bc4c77dcd784cb9e81ef6eb6c93689fb87693898e75a58f7`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4438999a898c04d365c3f6b2f0e32648b18293bd204cf4445b44624134025027`  
		Last Modified: Tue, 10 Jul 2018 21:33:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
