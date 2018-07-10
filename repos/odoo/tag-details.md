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
$ docker pull odoo@sha256:90ebca7fe964c5bdfb7aa02d5b29f1f6811f31c13266c8188c73824650aa3342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:6970b1639ef0c0541d93b2ab3d5d4a81a811cc54fc76d8547e2aafdb18f244d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277536864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa03102f1370fc4db4a9edd50f1c2e21cb41d85342332abb94e5dbb2a258e54a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:17:00 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:18:11 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 26 Jun 2018 23:28:18 GMT
ENV ODOO_VERSION=10.0
# Tue, 26 Jun 2018 23:28:18 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:29:20 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:29:21 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 26 Jun 2018 23:29:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 26 Jun 2018 23:29:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:29:22 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:29:22 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:29:23 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:29:23 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:29:23 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:29:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:29:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6149114f55223b02f0bca29297a6437776714a93abc96ecd0c6222fed9094b9`  
		Last Modified: Tue, 26 Jun 2018 23:43:01 GMT  
		Size: 87.1 MB (87081242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ca4dbf2ec7c25ebe972727d62de270a09a1d2cf57e8077e335564b099c4203`  
		Last Modified: Tue, 26 Jun 2018 23:45:26 GMT  
		Size: 136.2 MB (136201702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3864c85e4e9a6daf4bf3b198c8b51e0b978de3da2c5b7ebdb0bfb6e0cf67c004`  
		Last Modified: Tue, 26 Jun 2018 23:44:49 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26e03955225b35fcec9310fc8743731b7e6414833adf47419208d9b5bc87c00`  
		Last Modified: Tue, 26 Jun 2018 23:44:49 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493dd6e200fe77dc30be52de382adf7a11d1e4f1c7ddf4e2ed3756aa13227217`  
		Last Modified: Tue, 26 Jun 2018 23:44:50 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734bd56cdd53848869ab700b3264cbb7c7bbf162d5a304db88ce09549f9acc0f`  
		Last Modified: Tue, 26 Jun 2018 23:44:49 GMT  
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
$ docker pull odoo@sha256:2ee17e76efc32a0f33aa3bd813012761412802914a83264330ae4b457411505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:9b16ebd44ba60d191ca024cb21c10c06a5327b0e6bfa7f7b85ffeee0f84dcb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414578766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272897f7268b4a9ef71491a43f3fad9315a9cffa5c999d0e5ec0192b90585772`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:31:55 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:32:27 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_VERSION=11.0
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:34:08 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:34:12 GMT
RUN pip3 install num2words xlwt
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 26 Jun 2018 23:34:14 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:34:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:34:15 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:34:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:34:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:34:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b18b14678bb910b326ecb9ab8c699784b9efa3f100f2a15a26d003644186c7`  
		Last Modified: Tue, 26 Jun 2018 23:53:19 GMT  
		Size: 221.2 MB (221205311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bf4167b3b2b0107361ecdbb276e3cd4b5cc9a3f9604e7dd98fc5edc0b5f0ea`  
		Last Modified: Tue, 26 Jun 2018 23:53:25 GMT  
		Size: 147.6 MB (147587458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484f960bef2044db1237d028705b57ca417b636eef6be963d1447e4a74090cec`  
		Last Modified: Tue, 26 Jun 2018 23:52:39 GMT  
		Size: 464.9 KB (464939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590080a1f423b8a8ffec0f2f459b03e349c0a482c32332249633cf1be23ac2a0`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01629df34897720adea8ebf8918cea8a0a5f9d5f4d082f2d42bd5ad896a72847`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29981278fc0fb0422373fd67e068b2d4ab9c966bba32fdafd83f7f0c395cd466`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aea24cd61e410ad49da79026e8d18a22d8449357e23461d9fd2a662fe10957a`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:2ee17e76efc32a0f33aa3bd813012761412802914a83264330ae4b457411505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:9b16ebd44ba60d191ca024cb21c10c06a5327b0e6bfa7f7b85ffeee0f84dcb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414578766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272897f7268b4a9ef71491a43f3fad9315a9cffa5c999d0e5ec0192b90585772`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:31:55 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:32:27 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_VERSION=11.0
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:34:08 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:34:12 GMT
RUN pip3 install num2words xlwt
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 26 Jun 2018 23:34:14 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:34:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:34:15 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:34:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:34:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:34:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b18b14678bb910b326ecb9ab8c699784b9efa3f100f2a15a26d003644186c7`  
		Last Modified: Tue, 26 Jun 2018 23:53:19 GMT  
		Size: 221.2 MB (221205311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bf4167b3b2b0107361ecdbb276e3cd4b5cc9a3f9604e7dd98fc5edc0b5f0ea`  
		Last Modified: Tue, 26 Jun 2018 23:53:25 GMT  
		Size: 147.6 MB (147587458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484f960bef2044db1237d028705b57ca417b636eef6be963d1447e4a74090cec`  
		Last Modified: Tue, 26 Jun 2018 23:52:39 GMT  
		Size: 464.9 KB (464939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590080a1f423b8a8ffec0f2f459b03e349c0a482c32332249633cf1be23ac2a0`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01629df34897720adea8ebf8918cea8a0a5f9d5f4d082f2d42bd5ad896a72847`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29981278fc0fb0422373fd67e068b2d4ab9c966bba32fdafd83f7f0c395cd466`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aea24cd61e410ad49da79026e8d18a22d8449357e23461d9fd2a662fe10957a`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
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
$ docker pull odoo@sha256:2ee17e76efc32a0f33aa3bd813012761412802914a83264330ae4b457411505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:9b16ebd44ba60d191ca024cb21c10c06a5327b0e6bfa7f7b85ffeee0f84dcb96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414578766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272897f7268b4a9ef71491a43f3fad9315a9cffa5c999d0e5ec0192b90585772`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:31:55 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:32:27 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_VERSION=11.0
# Tue, 26 Jun 2018 23:32:27 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:34:08 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:34:12 GMT
RUN pip3 install num2words xlwt
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 26 Jun 2018 23:34:13 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 26 Jun 2018 23:34:14 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:34:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:34:15 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:34:15 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 26 Jun 2018 23:34:15 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:34:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:34:16 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b18b14678bb910b326ecb9ab8c699784b9efa3f100f2a15a26d003644186c7`  
		Last Modified: Tue, 26 Jun 2018 23:53:19 GMT  
		Size: 221.2 MB (221205311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bf4167b3b2b0107361ecdbb276e3cd4b5cc9a3f9604e7dd98fc5edc0b5f0ea`  
		Last Modified: Tue, 26 Jun 2018 23:53:25 GMT  
		Size: 147.6 MB (147587458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484f960bef2044db1237d028705b57ca417b636eef6be963d1447e4a74090cec`  
		Last Modified: Tue, 26 Jun 2018 23:52:39 GMT  
		Size: 464.9 KB (464939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590080a1f423b8a8ffec0f2f459b03e349c0a482c32332249633cf1be23ac2a0`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01629df34897720adea8ebf8918cea8a0a5f9d5f4d082f2d42bd5ad896a72847`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29981278fc0fb0422373fd67e068b2d4ab9c966bba32fdafd83f7f0c395cd466`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aea24cd61e410ad49da79026e8d18a22d8449357e23461d9fd2a662fe10957a`  
		Last Modified: Tue, 26 Jun 2018 23:52:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
