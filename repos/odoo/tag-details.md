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
$ docker pull odoo@sha256:90ebca7fe964c5bdfb7aa02d5b29f1f6811f31c13266c8188c73824650aa3342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

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
$ docker pull odoo@sha256:4a4b79f9850fe25f92f67f9c55d27c4c0a6344e1adfda4097221cd0d72489c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:c62e877e8a38871c554a2636cb86deffe7fd393f2f8aba4979321c6a0b0a7f20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289988984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8ff1de690e2a7f3e229f1c8d12ecd5ceeb9365578b71d615166bc1dfc1e029`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:17:00 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:18:11 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 26 Jun 2018 23:18:11 GMT
ENV ODOO_VERSION=9.0
# Tue, 26 Jun 2018 23:18:12 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:19:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:19:59 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 26 Jun 2018 23:20:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 26 Jun 2018 23:20:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 26 Jun 2018 23:20:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:20:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:20:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:20:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 26 Jun 2018 23:20:03 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:20:03 GMT
CMD ["openerp-server"]
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
	-	`sha256:aba87c0e03404f076c05c40bc76dc0269768115b14a07835b74414b203c15874`  
		Last Modified: Tue, 26 Jun 2018 23:43:25 GMT  
		Size: 148.7 MB (148653790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d70531d49727221c7e6fb37d8b32562fae2c491bc7b5b74222658c35fc51289`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01efa0478f83d9c84e9c113e8107a5a86042349761a7dc48461362cf20465865`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b8b0644747c8e2ecb0ca58ebfd660be11836975c4aad069d474afc65a9bf2`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35299e11d73a1863a131ab539b3581ad045023a50739587ea86d2d4761909174`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:4a4b79f9850fe25f92f67f9c55d27c4c0a6344e1adfda4097221cd0d72489c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:c62e877e8a38871c554a2636cb86deffe7fd393f2f8aba4979321c6a0b0a7f20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289988984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c8ff1de690e2a7f3e229f1c8d12ecd5ceeb9365578b71d615166bc1dfc1e029`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:17:00 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 26 Jun 2018 23:18:11 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 26 Jun 2018 23:18:11 GMT
ENV ODOO_VERSION=9.0
# Tue, 26 Jun 2018 23:18:12 GMT
ENV ODOO_RELEASE=20180122
# Tue, 26 Jun 2018 23:19:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 26 Jun 2018 23:19:59 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 26 Jun 2018 23:20:00 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 26 Jun 2018 23:20:01 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 26 Jun 2018 23:20:02 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 26 Jun 2018 23:20:02 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 26 Jun 2018 23:20:02 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 26 Jun 2018 23:20:02 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 26 Jun 2018 23:20:03 GMT
USER [odoo]
# Tue, 26 Jun 2018 23:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Jun 2018 23:20:03 GMT
CMD ["openerp-server"]
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
	-	`sha256:aba87c0e03404f076c05c40bc76dc0269768115b14a07835b74414b203c15874`  
		Last Modified: Tue, 26 Jun 2018 23:43:25 GMT  
		Size: 148.7 MB (148653790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d70531d49727221c7e6fb37d8b32562fae2c491bc7b5b74222658c35fc51289`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01efa0478f83d9c84e9c113e8107a5a86042349761a7dc48461362cf20465865`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837b8b0644747c8e2ecb0ca58ebfd660be11836975c4aad069d474afc65a9bf2`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
		Size: 590.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35299e11d73a1863a131ab539b3581ad045023a50739587ea86d2d4761909174`  
		Last Modified: Tue, 26 Jun 2018 23:42:39 GMT  
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
