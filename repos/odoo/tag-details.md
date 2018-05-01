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
$ docker pull odoo@sha256:0d681773e03a42d001392621a99efed254f3a22d3a140258be91959cb4a6efc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:5b56ce0100527dae4b10fe5d0c2eca51b22c29ac8fe9e4918ad9f3630bdecdac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277521021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5418461a1dd5c31bfce11f8e359b1108842400341088be50d7f5e92957d004ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:48:54 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 03:50:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 01 May 2018 04:13:31 GMT
ENV ODOO_VERSION=10.0
# Tue, 01 May 2018 04:13:31 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 04:14:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 04:14:35 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 01 May 2018 04:14:35 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 01 May 2018 04:14:36 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 01 May 2018 04:14:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 04:14:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 04:14:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 04:14:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 01 May 2018 04:14:38 GMT
USER [odoo]
# Tue, 01 May 2018 04:14:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 04:14:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1badd0759f4d787dbeaa414573c56491eb7c3d1a584279d858ba73463119c`  
		Last Modified: Tue, 01 May 2018 04:40:04 GMT  
		Size: 87.1 MB (87080992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d9913b94a435d8915636b3e4ad6d630f995bc7f48dc99b4a2136a71be1b771`  
		Last Modified: Tue, 01 May 2018 04:59:48 GMT  
		Size: 136.2 MB (136175579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e772400918998a9c8bc689bd8f4e55adb6b5fa3e913ecb75b38684a9ad7271`  
		Last Modified: Tue, 01 May 2018 04:59:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526f20486849c1fe11a10588606f54aae16118fa1ab8e2860d836a96a3e13694`  
		Last Modified: Tue, 01 May 2018 04:59:09 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a62cf9902f8fad83990cbae5734b5ee7df0edcd42bc6203f4e73d5c58d13380`  
		Last Modified: Tue, 01 May 2018 04:59:07 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a07215876dbbe0b135e5b428445f56f79b8769685761116b18f4a992eac68`  
		Last Modified: Tue, 01 May 2018 04:59:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:0d681773e03a42d001392621a99efed254f3a22d3a140258be91959cb4a6efc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:5b56ce0100527dae4b10fe5d0c2eca51b22c29ac8fe9e4918ad9f3630bdecdac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277521021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5418461a1dd5c31bfce11f8e359b1108842400341088be50d7f5e92957d004ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:48:54 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 03:50:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 01 May 2018 04:13:31 GMT
ENV ODOO_VERSION=10.0
# Tue, 01 May 2018 04:13:31 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 04:14:34 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 04:14:35 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 01 May 2018 04:14:35 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 01 May 2018 04:14:36 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 01 May 2018 04:14:37 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 04:14:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 04:14:37 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 04:14:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 01 May 2018 04:14:38 GMT
USER [odoo]
# Tue, 01 May 2018 04:14:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 04:14:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1badd0759f4d787dbeaa414573c56491eb7c3d1a584279d858ba73463119c`  
		Last Modified: Tue, 01 May 2018 04:40:04 GMT  
		Size: 87.1 MB (87080992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d9913b94a435d8915636b3e4ad6d630f995bc7f48dc99b4a2136a71be1b771`  
		Last Modified: Tue, 01 May 2018 04:59:48 GMT  
		Size: 136.2 MB (136175579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e772400918998a9c8bc689bd8f4e55adb6b5fa3e913ecb75b38684a9ad7271`  
		Last Modified: Tue, 01 May 2018 04:59:09 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526f20486849c1fe11a10588606f54aae16118fa1ab8e2860d836a96a3e13694`  
		Last Modified: Tue, 01 May 2018 04:59:09 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a62cf9902f8fad83990cbae5734b5ee7df0edcd42bc6203f4e73d5c58d13380`  
		Last Modified: Tue, 01 May 2018 04:59:07 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030a07215876dbbe0b135e5b428445f56f79b8769685761116b18f4a992eac68`  
		Last Modified: Tue, 01 May 2018 04:59:07 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:96d776a3d7ba4b9e00bc5098cad4361b031063bf9981745a1188dd6a97de3024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:904b4d5d9a74fd1d5f21304dae02fe8e54dae5497a7bb0659dafb7ebcb490ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414600724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fba980e260b22529cd3cc80b07334901f74a53ead582ded4d1846c703c66e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 04:15:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 04:15:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 04:16:22 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_VERSION=11.0
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 04:17:48 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 04:17:52 GMT
RUN pip3 install num2words xlwt
# Tue, 01 May 2018 04:17:52 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 01 May 2018 04:17:53 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 01 May 2018 04:17:53 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 04:17:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 04:17:55 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 04:17:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:55 GMT
USER [odoo]
# Tue, 01 May 2018 04:17:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 04:17:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5ba81cfbfabea55b63262f957d6e94abeb2008661ad6c512ebcdd356acd1bf`  
		Last Modified: Tue, 01 May 2018 05:11:07 GMT  
		Size: 221.2 MB (221233190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e3a1ac638b25971bde93f37d9d51e62c7a678475d5b45775e532b6b09ac7ce`  
		Last Modified: Tue, 01 May 2018 05:11:19 GMT  
		Size: 147.6 MB (147582115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a5207e44011c4d4cb49bba18533186d6e49a352c9b8ac0060d024c7265646`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 465.4 KB (465427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99e8119b1ec516a264eb2f140902b18f18567b502cdd1b20a51579c5d674a72`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f567bff33c62688d56ee8871dc4f05b103475fa4bfbeb9dda223c7cfb64b3`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1987043a67c179812db094b4eb48e9bc5e0a3fc952d14b078854ed8c1359b4`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19084de98415fcd8cbf045828140b3d9ea8dfaaec181afba1681c1df63671973`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:96d776a3d7ba4b9e00bc5098cad4361b031063bf9981745a1188dd6a97de3024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:904b4d5d9a74fd1d5f21304dae02fe8e54dae5497a7bb0659dafb7ebcb490ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414600724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fba980e260b22529cd3cc80b07334901f74a53ead582ded4d1846c703c66e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 04:15:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 04:15:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 04:16:22 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_VERSION=11.0
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 04:17:48 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 04:17:52 GMT
RUN pip3 install num2words xlwt
# Tue, 01 May 2018 04:17:52 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 01 May 2018 04:17:53 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 01 May 2018 04:17:53 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 04:17:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 04:17:55 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 04:17:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:55 GMT
USER [odoo]
# Tue, 01 May 2018 04:17:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 04:17:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5ba81cfbfabea55b63262f957d6e94abeb2008661ad6c512ebcdd356acd1bf`  
		Last Modified: Tue, 01 May 2018 05:11:07 GMT  
		Size: 221.2 MB (221233190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e3a1ac638b25971bde93f37d9d51e62c7a678475d5b45775e532b6b09ac7ce`  
		Last Modified: Tue, 01 May 2018 05:11:19 GMT  
		Size: 147.6 MB (147582115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a5207e44011c4d4cb49bba18533186d6e49a352c9b8ac0060d024c7265646`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 465.4 KB (465427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99e8119b1ec516a264eb2f140902b18f18567b502cdd1b20a51579c5d674a72`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f567bff33c62688d56ee8871dc4f05b103475fa4bfbeb9dda223c7cfb64b3`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1987043a67c179812db094b4eb48e9bc5e0a3fc952d14b078854ed8c1359b4`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19084de98415fcd8cbf045828140b3d9ea8dfaaec181afba1681c1df63671973`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:3d42584843579b37f291e062c7659d8a5331471d0cbf2040a706dbe24aa483c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:fd6d8cc2f9b82c6315672e19e37baea35d9c7cef0b3ec8f53cbf656749bb33b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289924931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea33fdf5e695647d82e69d6dcea4efc2bfb8d134f8bac1f2c266f08f19767ec3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:48:54 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 03:50:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 01 May 2018 03:50:05 GMT
ENV ODOO_VERSION=9.0
# Tue, 01 May 2018 03:50:06 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 03:51:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 03:51:33 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 01 May 2018 03:51:33 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 01 May 2018 03:51:34 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 01 May 2018 03:51:35 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 03:51:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 03:51:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 03:51:36 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 01 May 2018 03:51:36 GMT
USER [odoo]
# Tue, 01 May 2018 03:51:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 03:51:37 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1badd0759f4d787dbeaa414573c56491eb7c3d1a584279d858ba73463119c`  
		Last Modified: Tue, 01 May 2018 04:40:04 GMT  
		Size: 87.1 MB (87080992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6c26d55fe2110cb2cde45376b9c7363b7d0c49b643075f5ed71475a02a0d60`  
		Last Modified: Tue, 01 May 2018 04:40:29 GMT  
		Size: 148.6 MB (148579457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61c2ac1df734bd1e64e0fe203dc576c5fdaebc069844a2f0f5eca9540c9cb3`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f053a20c52deaffa289a34e0c0616f2fc447e997499882225a11e4ee293478a3`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f579706f0300b4ed8d86e7a24abf1ce76608f6c94c4ddb5d0946c9f627013`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90da716f294d4d96379c780bbf0a0874001170bfd7d61ca587c91f52a46792`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:3d42584843579b37f291e062c7659d8a5331471d0cbf2040a706dbe24aa483c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:fd6d8cc2f9b82c6315672e19e37baea35d9c7cef0b3ec8f53cbf656749bb33b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289924931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea33fdf5e695647d82e69d6dcea4efc2bfb8d134f8bac1f2c266f08f19767ec3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:48:54 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 03:50:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 01 May 2018 03:50:05 GMT
ENV ODOO_VERSION=9.0
# Tue, 01 May 2018 03:50:06 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 03:51:32 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 03:51:33 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Tue, 01 May 2018 03:51:33 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Tue, 01 May 2018 03:51:34 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Tue, 01 May 2018 03:51:35 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 03:51:35 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 03:51:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 03:51:36 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Tue, 01 May 2018 03:51:36 GMT
USER [odoo]
# Tue, 01 May 2018 03:51:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 03:51:37 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2b1badd0759f4d787dbeaa414573c56491eb7c3d1a584279d858ba73463119c`  
		Last Modified: Tue, 01 May 2018 04:40:04 GMT  
		Size: 87.1 MB (87080992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6c26d55fe2110cb2cde45376b9c7363b7d0c49b643075f5ed71475a02a0d60`  
		Last Modified: Tue, 01 May 2018 04:40:29 GMT  
		Size: 148.6 MB (148579457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be61c2ac1df734bd1e64e0fe203dc576c5fdaebc069844a2f0f5eca9540c9cb3`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f053a20c52deaffa289a34e0c0616f2fc447e997499882225a11e4ee293478a3`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 586.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1f579706f0300b4ed8d86e7a24abf1ce76608f6c94c4ddb5d0946c9f627013`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e90da716f294d4d96379c780bbf0a0874001170bfd7d61ca587c91f52a46792`  
		Last Modified: Tue, 01 May 2018 04:39:40 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:96d776a3d7ba4b9e00bc5098cad4361b031063bf9981745a1188dd6a97de3024
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:904b4d5d9a74fd1d5f21304dae02fe8e54dae5497a7bb0659dafb7ebcb490ded
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.6 MB (414600724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fba980e260b22529cd3cc80b07334901f74a53ead582ded4d1846c703c66e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 01 May 2018 04:15:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 01 May 2018 04:15:42 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 04:16:22 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_VERSION=11.0
# Tue, 01 May 2018 04:16:23 GMT
ENV ODOO_RELEASE=20180122
# Tue, 01 May 2018 04:17:48 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 01 May 2018 04:17:52 GMT
RUN pip3 install num2words xlwt
# Tue, 01 May 2018 04:17:52 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 01 May 2018 04:17:53 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 01 May 2018 04:17:53 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 01 May 2018 04:17:55 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 01 May 2018 04:17:55 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 01 May 2018 04:17:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 01 May 2018 04:17:55 GMT
USER [odoo]
# Tue, 01 May 2018 04:17:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 04:17:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5ba81cfbfabea55b63262f957d6e94abeb2008661ad6c512ebcdd356acd1bf`  
		Last Modified: Tue, 01 May 2018 05:11:07 GMT  
		Size: 221.2 MB (221233190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e3a1ac638b25971bde93f37d9d51e62c7a678475d5b45775e532b6b09ac7ce`  
		Last Modified: Tue, 01 May 2018 05:11:19 GMT  
		Size: 147.6 MB (147582115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61a5207e44011c4d4cb49bba18533186d6e49a352c9b8ac0060d024c7265646`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 465.4 KB (465427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99e8119b1ec516a264eb2f140902b18f18567b502cdd1b20a51579c5d674a72`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945f567bff33c62688d56ee8871dc4f05b103475fa4bfbeb9dda223c7cfb64b3`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1987043a67c179812db094b4eb48e9bc5e0a3fc952d14b078854ed8c1359b4`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19084de98415fcd8cbf045828140b3d9ea8dfaaec181afba1681c1df63671973`  
		Last Modified: Tue, 01 May 2018 05:10:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
