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
$ docker pull odoo@sha256:0e7c099033f31dfe5a938148940f4ddb5f91a3e9083005bddcb033b5b281c351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:bb78715d09e643af85af113d30c64054480e73744a0a5672112c938609ca30f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280510066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11da0699636b080b6dc9224897a80e19b2bac118f69e61424cd9c7caf8436d6`
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
# Thu, 09 Aug 2018 02:22:19 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:24:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '98736953010be3c578f4b9eb1c7e2c87da93a7bd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:24:33 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 09 Aug 2018 02:24:33 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Thu, 09 Aug 2018 02:24:34 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:24:35 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:24:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:24:35 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:24:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:24:36 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:24:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:24:36 GMT
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
	-	`sha256:9125fc6bd6f6b7be90354ffcd9d62e6f84787e910ffcb08f933de2b7506c04fa`  
		Last Modified: Thu, 09 Aug 2018 02:30:21 GMT  
		Size: 139.2 MB (139222184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa8a424305840e3906cb8322274e47ab792c62f9970d2c5fab96ae2cc4d5649`  
		Last Modified: Thu, 09 Aug 2018 02:29:37 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be443ce3bd39184cc6dceec533261cc95c08ee5ff02379a0dad3ec2cc340555d`  
		Last Modified: Thu, 09 Aug 2018 02:29:33 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb8c3f3030c195db18c7c4b18ed6c98eba623d62e9fb92458d45ade7f2015c`  
		Last Modified: Thu, 09 Aug 2018 02:29:33 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5495ac60e9eddb244718a9f50d513790a2d13a57cdbe43d281093b46ba16a`  
		Last Modified: Thu, 09 Aug 2018 02:29:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:0e7c099033f31dfe5a938148940f4ddb5f91a3e9083005bddcb033b5b281c351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:bb78715d09e643af85af113d30c64054480e73744a0a5672112c938609ca30f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280510066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11da0699636b080b6dc9224897a80e19b2bac118f69e61424cd9c7caf8436d6`
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
# Thu, 09 Aug 2018 02:22:19 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:24:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '98736953010be3c578f4b9eb1c7e2c87da93a7bd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:24:33 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 09 Aug 2018 02:24:33 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Thu, 09 Aug 2018 02:24:34 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:24:35 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:24:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:24:35 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:24:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:24:36 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:24:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:24:36 GMT
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
	-	`sha256:9125fc6bd6f6b7be90354ffcd9d62e6f84787e910ffcb08f933de2b7506c04fa`  
		Last Modified: Thu, 09 Aug 2018 02:30:21 GMT  
		Size: 139.2 MB (139222184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa8a424305840e3906cb8322274e47ab792c62f9970d2c5fab96ae2cc4d5649`  
		Last Modified: Thu, 09 Aug 2018 02:29:37 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be443ce3bd39184cc6dceec533261cc95c08ee5ff02379a0dad3ec2cc340555d`  
		Last Modified: Thu, 09 Aug 2018 02:29:33 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb8c3f3030c195db18c7c4b18ed6c98eba623d62e9fb92458d45ade7f2015c`  
		Last Modified: Thu, 09 Aug 2018 02:29:33 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e5495ac60e9eddb244718a9f50d513790a2d13a57cdbe43d281093b46ba16a`  
		Last Modified: Thu, 09 Aug 2018 02:29:38 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:bf7ccc79cd8b150afd425f827169ceba16733e818f5dc5826054125270babe1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:0119d242d8be7cdda8dd81adeed6ed99b209d266cb0b886e6e26afc074a05f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.1 MB (421074365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c53378e12e8ad226763593f292270e9e0cde74f43e0db85f70b0ea94c147f38`
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
# Thu, 09 Aug 2018 02:20:07 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:21:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:21:46 GMT
RUN pip3 install num2words xlwt
# Thu, 09 Aug 2018 02:21:46 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 09 Aug 2018 02:21:46 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 09 Aug 2018 02:21:47 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:21:48 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:21:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:21:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:21:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:21:49 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:21:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:21:49 GMT
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
	-	`sha256:1c862ae12c6300e2c26d6ed4c07611684a037a1e474be5e8f7b53316d8bb0da8`  
		Last Modified: Thu, 09 Aug 2018 02:28:32 GMT  
		Size: 153.2 MB (153160711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc32597661880fe2741c6f7a0452d2f6b709437c257068db5d706196507b9ac4`  
		Last Modified: Thu, 09 Aug 2018 02:27:34 GMT  
		Size: 531.3 KB (531271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10c4c62461b1cd3a28759faf911235256856216aab3c3feb38017be8b7303d9`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89ce0efb80efec5da71559fb1d4e1eb59ce8914017b3057bc526297cb04fae0`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565b450524d60b7bb63900dae10004f6bf5415ae5a7ff9d893d42583b7627a51`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ec5c85c854eabd5ed6f2356a0d879293b108bc001b0b5bec3f0bfe6b95d28`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:bf7ccc79cd8b150afd425f827169ceba16733e818f5dc5826054125270babe1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:0119d242d8be7cdda8dd81adeed6ed99b209d266cb0b886e6e26afc074a05f05
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.1 MB (421074365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c53378e12e8ad226763593f292270e9e0cde74f43e0db85f70b0ea94c147f38`
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
# Thu, 09 Aug 2018 02:20:07 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:21:38 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:21:46 GMT
RUN pip3 install num2words xlwt
# Thu, 09 Aug 2018 02:21:46 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 09 Aug 2018 02:21:46 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 09 Aug 2018 02:21:47 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:21:48 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:21:48 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:21:48 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:21:48 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 09 Aug 2018 02:21:49 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:21:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:21:49 GMT
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
	-	`sha256:1c862ae12c6300e2c26d6ed4c07611684a037a1e474be5e8f7b53316d8bb0da8`  
		Last Modified: Thu, 09 Aug 2018 02:28:32 GMT  
		Size: 153.2 MB (153160711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc32597661880fe2741c6f7a0452d2f6b709437c257068db5d706196507b9ac4`  
		Last Modified: Thu, 09 Aug 2018 02:27:34 GMT  
		Size: 531.3 KB (531271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10c4c62461b1cd3a28759faf911235256856216aab3c3feb38017be8b7303d9`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b89ce0efb80efec5da71559fb1d4e1eb59ce8914017b3057bc526297cb04fae0`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565b450524d60b7bb63900dae10004f6bf5415ae5a7ff9d893d42583b7627a51`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24ec5c85c854eabd5ed6f2356a0d879293b108bc001b0b5bec3f0bfe6b95d28`  
		Last Modified: Thu, 09 Aug 2018 02:27:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:e335d734524e8d0ffd5d630f450c73a503a63ec96ea5467d312f4d695a4c7700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:5c747ef116662c737f147b511b5f80c46a3ba973a53ff41aa6e1c254e1522acd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291321470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0e84294f332c1f8fdf15f7fd98cb6aec25cda29db3af63cb2bbde399c847f`
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
# Thu, 09 Aug 2018 02:25:00 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:27:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '25f90d98509484bc4b54174ccb814dd96ddb797b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:27:02 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Thu, 09 Aug 2018 02:27:03 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Thu, 09 Aug 2018 02:27:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 09 Aug 2018 02:27:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:27:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:27:05 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:27:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 09 Aug 2018 02:27:05 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:27:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:27:05 GMT
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
	-	`sha256:701c63d16554c7053b8744958277947ffff0fb9025021cfafcb83f9c628a48b5`  
		Last Modified: Thu, 09 Aug 2018 02:31:58 GMT  
		Size: 150.0 MB (150033550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0763a5686ab7342cd571549680ad94e6b0fdcee497c2f6b204ea6ccfcb1586f7`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8423bbda70ade57acc8357b94b156604d1666cb27c08b1b439446ca88d9c984d`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa1f82c107df89cbb962405db23cfd974d2534c5c14f143647578afae472bc5`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f53f6158632b2e2030457a02736dc30e4c076bcd19c1daa3d72e4d18c827237`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:e335d734524e8d0ffd5d630f450c73a503a63ec96ea5467d312f4d695a4c7700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:5c747ef116662c737f147b511b5f80c46a3ba973a53ff41aa6e1c254e1522acd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291321470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e0e84294f332c1f8fdf15f7fd98cb6aec25cda29db3af63cb2bbde399c847f`
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
# Thu, 09 Aug 2018 02:25:00 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 02:27:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo '25f90d98509484bc4b54174ccb814dd96ddb797b odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 02:27:02 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Thu, 09 Aug 2018 02:27:03 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Thu, 09 Aug 2018 02:27:03 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Thu, 09 Aug 2018 02:27:04 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 02:27:04 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 02:27:05 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 02:27:05 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Thu, 09 Aug 2018 02:27:05 GMT
USER [odoo]
# Thu, 09 Aug 2018 02:27:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 02:27:05 GMT
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
	-	`sha256:701c63d16554c7053b8744958277947ffff0fb9025021cfafcb83f9c628a48b5`  
		Last Modified: Thu, 09 Aug 2018 02:31:58 GMT  
		Size: 150.0 MB (150033550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0763a5686ab7342cd571549680ad94e6b0fdcee497c2f6b204ea6ccfcb1586f7`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8423bbda70ade57acc8357b94b156604d1666cb27c08b1b439446ca88d9c984d`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa1f82c107df89cbb962405db23cfd974d2534c5c14f143647578afae472bc5`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f53f6158632b2e2030457a02736dc30e4c076bcd19c1daa3d72e4d18c827237`  
		Last Modified: Thu, 09 Aug 2018 02:31:05 GMT  
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
