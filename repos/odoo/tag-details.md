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
$ docker pull odoo@sha256:f4009c6bf4cec73c79a67d576e3ba73990873b1dbb56e6a07efbd60dced5e596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:671f46151a2381f45b689e0598388bc216632889d4bf710fc0a12690f53a85ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281137118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94ab28bd18e7f58188973ef7df0269e572d1d83f40ce10c86d4e161cf078383`
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
# Sat, 10 Nov 2018 02:46:20 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:47:37 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '8b24a5a3e36aed8986d3d6b19c8a255ee72cd658 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:47:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:47:44 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 10 Nov 2018 02:47:45 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:47:46 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:47:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:47:46 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:47:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:47:47 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:47:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:47:48 GMT
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
	-	`sha256:d23aa42d102ab0275e59a8b8610a3195b9dd392895fc774c2d73634bfe89716f`  
		Last Modified: Sat, 10 Nov 2018 02:51:56 GMT  
		Size: 139.8 MB (139848289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8a8db541d8a1b680b7dcd921dc630fc2d0732ca6d807d493c5272a6fcbd6b`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae52b56c33a4e597d0e7e6b5d106faea5b6efd2a7ec972c2b8e976a9e2119fa`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89395d7ab2cf5b637cda1b8e46df6d892ae38163bb4d708f545891890db3168`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c475237e3e695e51182057de58a3d896fee1f13dce6d56b9ddcaad82de79ac0`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:f4009c6bf4cec73c79a67d576e3ba73990873b1dbb56e6a07efbd60dced5e596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:671f46151a2381f45b689e0598388bc216632889d4bf710fc0a12690f53a85ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281137118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94ab28bd18e7f58188973ef7df0269e572d1d83f40ce10c86d4e161cf078383`
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
# Sat, 10 Nov 2018 02:46:20 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:47:37 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '8b24a5a3e36aed8986d3d6b19c8a255ee72cd658 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:47:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:47:44 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Sat, 10 Nov 2018 02:47:45 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:47:46 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:47:46 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:47:46 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:47:47 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:47:47 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:47:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:47:48 GMT
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
	-	`sha256:d23aa42d102ab0275e59a8b8610a3195b9dd392895fc774c2d73634bfe89716f`  
		Last Modified: Sat, 10 Nov 2018 02:51:56 GMT  
		Size: 139.8 MB (139848289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8a8db541d8a1b680b7dcd921dc630fc2d0732ca6d807d493c5272a6fcbd6b`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae52b56c33a4e597d0e7e6b5d106faea5b6efd2a7ec972c2b8e976a9e2119fa`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89395d7ab2cf5b637cda1b8e46df6d892ae38163bb4d708f545891890db3168`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c475237e3e695e51182057de58a3d896fee1f13dce6d56b9ddcaad82de79ac0`  
		Last Modified: Sat, 10 Nov 2018 02:51:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:6e4196993f5922191f47e9c92cf87a1a5bcc8876a64dce05a78ff46aec012b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:3ed9149e6d412c520b4b6a91779bddb72c2f913a802de31d7ada46e6ae1a3f74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.5 MB (423475851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f720522f5e86851fb34b6c04650e8b756b5b13816bee75307276626423b3df1`
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
# Sat, 10 Nov 2018 02:44:39 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:45:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:45:38 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 02:45:39 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:45:39 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 02:45:40 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:45:41 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:45:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:45:41 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:45:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:45:41 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:45:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:45:42 GMT
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
	-	`sha256:91a785449c0f115da7449741eb5095dda610b83473b32ec9d9c85c25b1663357`  
		Last Modified: Sat, 10 Nov 2018 02:50:48 GMT  
		Size: 155.4 MB (155440424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06492eb7c083f430290a35b3525919b9c458c36ba01efc280c9568487ce0a77b`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 531.3 KB (531283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b899849e7c4ce36678d50f5ea3b7a4793d04f4732ad7ebb596d5a400beda30`  
		Last Modified: Sat, 10 Nov 2018 02:50:04 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b742558cf7a2ecbff8b1083b9cd8c0628e24b816aa58931b08fc071de6270`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d25846663c3307aa91d924d67f69410bdc789bc63e5e96fdebe14f16c810cb`  
		Last Modified: Sat, 10 Nov 2018 02:50:04 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed45fc8a7e0ffb93eedd350a0af4f4f7aba28fe4f80363a8170ecb074b3aff85`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4ca14acf5e25e5ff5842043fdb0d4eef869d882688affe26dec51f8b8075341a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417115946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0907391a4e7c390ac1d7b11054abd6a412cbc06ea52afb5c56cd4e41a1ff8987`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:51:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 15:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:53:35 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 16:00:48 GMT
ENV ODOO_VERSION=11.0
# Sat, 10 Nov 2018 10:12:41 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 10:17:18 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 10:17:46 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 10:17:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 10:17:48 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 10:17:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:17:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 10:17:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 10:17:54 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 10:17:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:17:56 GMT
USER [odoo]
# Sat, 10 Nov 2018 10:17:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 10:17:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007c6fbe35d2b9f941d61d07886ff24bfce70a308c8efd672ded7da28103683`  
		Last Modified: Tue, 16 Oct 2018 16:10:56 GMT  
		Size: 219.5 MB (219499122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deb8ead9a5b7286952986273b1f237d0a1881dae8334ae019ba8e90d2425d5b`  
		Last Modified: Sat, 10 Nov 2018 10:23:38 GMT  
		Size: 154.0 MB (153960070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a8f6a8749a9b91c8e0c62cc7ef839697e3739fdb742693229500080ad91825`  
		Last Modified: Sat, 10 Nov 2018 10:22:33 GMT  
		Size: 531.3 KB (531322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9f57b87cb46b52f8625bd95b68700164e0f005738ae4523942759348990373`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1f31b9f7ce6c1ed1f49ff3327e4a4f8dd3e386e48472cd13b3914b83873542`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a271d943365b637a96689ea993ca1ad4fef923a84e6dbb9973cf72ad1bd1ef9`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdec96e0944a41410d719e68c6cd956a860749e49f4e32dd68523eefbb9348c`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:6e4196993f5922191f47e9c92cf87a1a5bcc8876a64dce05a78ff46aec012b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:3ed9149e6d412c520b4b6a91779bddb72c2f913a802de31d7ada46e6ae1a3f74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.5 MB (423475851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f720522f5e86851fb34b6c04650e8b756b5b13816bee75307276626423b3df1`
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
# Sat, 10 Nov 2018 02:44:39 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:45:33 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:45:38 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 02:45:39 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:45:39 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 02:45:40 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:45:41 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:45:41 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:45:41 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:45:41 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:45:41 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:45:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:45:42 GMT
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
	-	`sha256:91a785449c0f115da7449741eb5095dda610b83473b32ec9d9c85c25b1663357`  
		Last Modified: Sat, 10 Nov 2018 02:50:48 GMT  
		Size: 155.4 MB (155440424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06492eb7c083f430290a35b3525919b9c458c36ba01efc280c9568487ce0a77b`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 531.3 KB (531283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b899849e7c4ce36678d50f5ea3b7a4793d04f4732ad7ebb596d5a400beda30`  
		Last Modified: Sat, 10 Nov 2018 02:50:04 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b742558cf7a2ecbff8b1083b9cd8c0628e24b816aa58931b08fc071de6270`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d25846663c3307aa91d924d67f69410bdc789bc63e5e96fdebe14f16c810cb`  
		Last Modified: Sat, 10 Nov 2018 02:50:04 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed45fc8a7e0ffb93eedd350a0af4f4f7aba28fe4f80363a8170ecb074b3aff85`  
		Last Modified: Sat, 10 Nov 2018 02:50:05 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4ca14acf5e25e5ff5842043fdb0d4eef869d882688affe26dec51f8b8075341a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417115946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0907391a4e7c390ac1d7b11054abd6a412cbc06ea52afb5c56cd4e41a1ff8987`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:51:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 15:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:53:35 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 16:00:48 GMT
ENV ODOO_VERSION=11.0
# Sat, 10 Nov 2018 10:12:41 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 10:17:18 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 10:17:46 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 10:17:47 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 10:17:48 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 10:17:51 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:17:53 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 10:17:53 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 10:17:54 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 10:17:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:17:56 GMT
USER [odoo]
# Sat, 10 Nov 2018 10:17:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 10:17:58 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007c6fbe35d2b9f941d61d07886ff24bfce70a308c8efd672ded7da28103683`  
		Last Modified: Tue, 16 Oct 2018 16:10:56 GMT  
		Size: 219.5 MB (219499122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deb8ead9a5b7286952986273b1f237d0a1881dae8334ae019ba8e90d2425d5b`  
		Last Modified: Sat, 10 Nov 2018 10:23:38 GMT  
		Size: 154.0 MB (153960070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a8f6a8749a9b91c8e0c62cc7ef839697e3739fdb742693229500080ad91825`  
		Last Modified: Sat, 10 Nov 2018 10:22:33 GMT  
		Size: 531.3 KB (531322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9f57b87cb46b52f8625bd95b68700164e0f005738ae4523942759348990373`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1f31b9f7ce6c1ed1f49ff3327e4a4f8dd3e386e48472cd13b3914b83873542`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a271d943365b637a96689ea993ca1ad4fef923a84e6dbb9973cf72ad1bd1ef9`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbdec96e0944a41410d719e68c6cd956a860749e49f4e32dd68523eefbb9348c`  
		Last Modified: Sat, 10 Nov 2018 10:22:32 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12`

```console
$ docker pull odoo@sha256:86ab433316f4efae8ce339b4857d9d011d7a534c4dc63eb48a9667ab969bf22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:d4cd397502764c9b6e3cb91c1b915e7aeea5d0acd430b4165b05fe622ad42272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.6 MB (401643462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3bd6b393380fddcd9e4a91310ca1acf8086afe4f9704e372c45a0a9b035e37`
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
# Sat, 10 Nov 2018 02:42:41 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:43:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:44:07 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 02:44:09 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:44:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:44:10 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:44:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:10 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:44:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:44:11 GMT
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
	-	`sha256:b7c0c69d13823cf19a20069c3c03c17cb978b8515bd529698be8931d4648c83c`  
		Last Modified: Sat, 10 Nov 2018 02:48:53 GMT  
		Size: 133.6 MB (133608042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8eceb7b6b1961602207da573fe58ea160e2bcf98fd2b274d7ed14f3cceab21`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d652eaa286eddc9a668bc4488a28104799f8f10bb3bce7ddaebd94294a030639`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4110524cf3336aff352efee7749c2f8996cfb2501efbc7d12023ea381e945310`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24af51ad86faf56706580bb67599ce222c78c324e342a59f7b9500477c1325`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ab83917cce37a48b3afaa99339a2ef883dd2f667ac3e02a166ec1a28d19d9d`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:dc99a2e252f33353a061c99c1fe3085835bd42143e7e908114026da5ea86d27e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395253634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92a8069c1d73d8234c28be5b61b83f934d6c7efa83de2b539e86cdb54144a72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:51:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 15:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:53:35 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 15:53:36 GMT
ENV ODOO_VERSION=12.0
# Sat, 10 Nov 2018 10:07:53 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 10:11:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 10:11:33 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 10:11:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 10:11:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 10:11:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:11:59 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 10:11:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 10:12:00 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 10:12:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:12:02 GMT
USER [odoo]
# Sat, 10 Nov 2018 10:12:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 10:12:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007c6fbe35d2b9f941d61d07886ff24bfce70a308c8efd672ded7da28103683`  
		Last Modified: Tue, 16 Oct 2018 16:10:56 GMT  
		Size: 219.5 MB (219499122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa80000a9fc9c9b41177b9138e65b59570800020f5ff1f46b425c1a81ef1fa0f`  
		Last Modified: Sat, 10 Nov 2018 10:20:00 GMT  
		Size: 132.1 MB (132097772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae7acad9d2f7475aa5261daab3b82da27a63591a7a6d00c64a52281be0157bc`  
		Last Modified: Sat, 10 Nov 2018 10:18:38 GMT  
		Size: 531.3 KB (531307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2fdda6b84993e65ec599dd86c3c16dccb9e4b156cc5f19dfe0733925bd0398`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b012fa1452a2501b092332c007c984e925cc8c930ae548017bcec2586a0736c`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f953c603a43f473481c5ca0754a732b8c3eec0ea74035a67a74411d837eb7`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b850618c5694924079b62866c9d52e9183ce84267d9851a59acebec18a25747d`  
		Last Modified: Sat, 10 Nov 2018 10:18:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12.0`

```console
$ docker pull odoo@sha256:86ab433316f4efae8ce339b4857d9d011d7a534c4dc63eb48a9667ab969bf22e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:d4cd397502764c9b6e3cb91c1b915e7aeea5d0acd430b4165b05fe622ad42272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.6 MB (401643462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3bd6b393380fddcd9e4a91310ca1acf8086afe4f9704e372c45a0a9b035e37`
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
# Sat, 10 Nov 2018 02:42:41 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:43:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:44:07 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 02:44:09 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:44:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:44:10 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:44:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:10 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:44:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:44:11 GMT
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
	-	`sha256:b7c0c69d13823cf19a20069c3c03c17cb978b8515bd529698be8931d4648c83c`  
		Last Modified: Sat, 10 Nov 2018 02:48:53 GMT  
		Size: 133.6 MB (133608042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8eceb7b6b1961602207da573fe58ea160e2bcf98fd2b274d7ed14f3cceab21`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d652eaa286eddc9a668bc4488a28104799f8f10bb3bce7ddaebd94294a030639`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4110524cf3336aff352efee7749c2f8996cfb2501efbc7d12023ea381e945310`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24af51ad86faf56706580bb67599ce222c78c324e342a59f7b9500477c1325`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ab83917cce37a48b3afaa99339a2ef883dd2f667ac3e02a166ec1a28d19d9d`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:dc99a2e252f33353a061c99c1fe3085835bd42143e7e908114026da5ea86d27e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.3 MB (395253634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92a8069c1d73d8234c28be5b61b83f934d6c7efa83de2b539e86cdb54144a72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:51:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 15:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:53:35 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 15:53:36 GMT
ENV ODOO_VERSION=12.0
# Sat, 10 Nov 2018 10:07:53 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 10:11:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 10:11:33 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 10:11:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 10:11:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 10:11:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:11:59 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 10:11:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 10:12:00 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 10:12:01 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 10:12:02 GMT
USER [odoo]
# Sat, 10 Nov 2018 10:12:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 10:12:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007c6fbe35d2b9f941d61d07886ff24bfce70a308c8efd672ded7da28103683`  
		Last Modified: Tue, 16 Oct 2018 16:10:56 GMT  
		Size: 219.5 MB (219499122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa80000a9fc9c9b41177b9138e65b59570800020f5ff1f46b425c1a81ef1fa0f`  
		Last Modified: Sat, 10 Nov 2018 10:20:00 GMT  
		Size: 132.1 MB (132097772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae7acad9d2f7475aa5261daab3b82da27a63591a7a6d00c64a52281be0157bc`  
		Last Modified: Sat, 10 Nov 2018 10:18:38 GMT  
		Size: 531.3 KB (531307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b2fdda6b84993e65ec599dd86c3c16dccb9e4b156cc5f19dfe0733925bd0398`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b012fa1452a2501b092332c007c984e925cc8c930ae548017bcec2586a0736c`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f953c603a43f473481c5ca0754a732b8c3eec0ea74035a67a74411d837eb7`  
		Last Modified: Sat, 10 Nov 2018 10:18:36 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b850618c5694924079b62866c9d52e9183ce84267d9851a59acebec18a25747d`  
		Last Modified: Sat, 10 Nov 2018 10:18:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:b177aed28e1dd3342e3a307ff3a94dca74b78b161b5c633c5a666377fd7315d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:d4cd397502764c9b6e3cb91c1b915e7aeea5d0acd430b4165b05fe622ad42272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.6 MB (401643462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d3bd6b393380fddcd9e4a91310ca1acf8086afe4f9704e372c45a0a9b035e37`
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
# Sat, 10 Nov 2018 02:42:41 GMT
ENV ODOO_RELEASE=20181109
# Sat, 10 Nov 2018 02:43:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 10 Nov 2018 02:44:07 GMT
RUN pip3 install num2words xlwt
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 10 Nov 2018 02:44:08 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 10 Nov 2018 02:44:09 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:09 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 10 Nov 2018 02:44:10 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 10 Nov 2018 02:44:10 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 10 Nov 2018 02:44:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 10 Nov 2018 02:44:10 GMT
USER [odoo]
# Sat, 10 Nov 2018 02:44:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 10 Nov 2018 02:44:11 GMT
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
	-	`sha256:b7c0c69d13823cf19a20069c3c03c17cb978b8515bd529698be8931d4648c83c`  
		Last Modified: Sat, 10 Nov 2018 02:48:53 GMT  
		Size: 133.6 MB (133608042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8eceb7b6b1961602207da573fe58ea160e2bcf98fd2b274d7ed14f3cceab21`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d652eaa286eddc9a668bc4488a28104799f8f10bb3bce7ddaebd94294a030639`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4110524cf3336aff352efee7749c2f8996cfb2501efbc7d12023ea381e945310`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f24af51ad86faf56706580bb67599ce222c78c324e342a59f7b9500477c1325`  
		Last Modified: Sat, 10 Nov 2018 02:48:13 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ab83917cce37a48b3afaa99339a2ef883dd2f667ac3e02a166ec1a28d19d9d`  
		Last Modified: Sat, 10 Nov 2018 02:48:12 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:4d30a9f632a5de67fbb06070e415cb0459dcf208bb8aef8f59eab5e6f4127e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.1 MB (394067077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb2b50d59e95cfa24c2c3f0228f386cb05918826b64a7560935fa87eacf80180`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:51:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 16 Oct 2018 15:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 15:53:35 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Tue, 16 Oct 2018 15:53:36 GMT
ENV ODOO_VERSION=12.0
# Tue, 16 Oct 2018 15:53:36 GMT
ENV ODOO_RELEASE=20181008
# Tue, 16 Oct 2018 15:59:58 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 16 Oct 2018 16:00:11 GMT
RUN pip3 install num2words xlwt
# Tue, 16 Oct 2018 16:00:14 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 16 Oct 2018 16:00:18 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 16 Oct 2018 16:00:27 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 16 Oct 2018 16:00:31 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 16 Oct 2018 16:00:33 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 16 Oct 2018 16:00:34 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 16 Oct 2018 16:00:35 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 16 Oct 2018 16:00:36 GMT
USER [odoo]
# Tue, 16 Oct 2018 16:00:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 16:00:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007c6fbe35d2b9f941d61d07886ff24bfce70a308c8efd672ded7da28103683`  
		Last Modified: Tue, 16 Oct 2018 16:10:56 GMT  
		Size: 219.5 MB (219499122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45213afe6b813df96cb1777e6ea67823ea93c4e11973d743beeded21384e3738`  
		Last Modified: Tue, 16 Oct 2018 16:10:40 GMT  
		Size: 130.9 MB (130911232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42855506e80e32deb5e5f6bdd9c20efdd26eaaf63dadd7c6e7d74751c6a52d12`  
		Last Modified: Tue, 16 Oct 2018 16:09:38 GMT  
		Size: 531.3 KB (531292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edc433d7ed8c23cc57b1fa3a1e6b2223af5a027a1375805cc3adb5a381dfe06`  
		Last Modified: Tue, 16 Oct 2018 16:09:38 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7727a119a7a2eb6e3077c3305a3c22bd04909416f586585df26646c1977ce221`  
		Last Modified: Tue, 16 Oct 2018 16:09:37 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3d4e258a81095cbd8d225115fdaaff76dc3f6a8b4e949661309860c925b671`  
		Last Modified: Tue, 16 Oct 2018 16:09:39 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b01a4c3e4d646193682ac1f1f41ec019fee839c95b8bf5c605e17b2cf80e6b8`  
		Last Modified: Tue, 16 Oct 2018 16:09:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
