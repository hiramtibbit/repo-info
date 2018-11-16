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
$ docker pull odoo@sha256:2b18399ac2079d4f59eefbc31e08208a6a046abb3762f839cdd23332f2e956a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:0387cef0180a0ebaa4a717187cc3d9c7a908709fe4f6b0c09b6fea57ee42bb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281245286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb57c9e13397d71f7f27fb8fe262f2e93c5aae0f06419d6465e6bd96516c109`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:49:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 16 Nov 2018 13:51:41 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 16 Nov 2018 13:51:42 GMT
ENV ODOO_VERSION=10.0
# Fri, 16 Nov 2018 13:51:42 GMT
ENV ODOO_RELEASE=20181109
# Fri, 16 Nov 2018 13:54:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '8b24a5a3e36aed8986d3d6b19c8a255ee72cd658 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 16 Nov 2018 13:54:02 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 16 Nov 2018 13:54:02 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 16 Nov 2018 13:54:04 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:54:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 16 Nov 2018 13:54:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 16 Nov 2018 13:54:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 16 Nov 2018 13:54:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:54:07 GMT
USER [odoo]
# Fri, 16 Nov 2018 13:54:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 13:54:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92097cafc66b9184abe24107e20425d75a1ba40b0782e77e18a0527bd8230a01`  
		Last Modified: Fri, 16 Nov 2018 13:57:36 GMT  
		Size: 87.0 MB (87035834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728d8d2577200f7f56ae86d61a734b02d8248a3095dd45750c671aeb371755aa`  
		Last Modified: Fri, 16 Nov 2018 13:57:57 GMT  
		Size: 139.8 MB (139849730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e913d95e6b1ad57b1f3afb1003f177b3bb239aa341c198d9d96912c2096c8117`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e65c1f2e702629f41673b4c937320f622311aa5c4e8eda19ed93c5f0dac7c7b`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af713b540b2ecd40c3b41a282d11d8579c99b890ab86b791dffddb67ef226aa`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5e43ab8930536f67e26c410f16c045c84e622465a1b30fd848752d275e6048`  
		Last Modified: Fri, 16 Nov 2018 13:57:09 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:2b18399ac2079d4f59eefbc31e08208a6a046abb3762f839cdd23332f2e956a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:0387cef0180a0ebaa4a717187cc3d9c7a908709fe4f6b0c09b6fea57ee42bb52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.2 MB (281245286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fb57c9e13397d71f7f27fb8fe262f2e93c5aae0f06419d6465e6bd96516c109`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:49:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 16 Nov 2018 13:51:41 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Fri, 16 Nov 2018 13:51:42 GMT
ENV ODOO_VERSION=10.0
# Fri, 16 Nov 2018 13:51:42 GMT
ENV ODOO_RELEASE=20181109
# Fri, 16 Nov 2018 13:54:00 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '8b24a5a3e36aed8986d3d6b19c8a255ee72cd658 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 16 Nov 2018 13:54:02 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 16 Nov 2018 13:54:02 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Fri, 16 Nov 2018 13:54:04 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:54:05 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 16 Nov 2018 13:54:06 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 16 Nov 2018 13:54:06 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 16 Nov 2018 13:54:07 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:54:07 GMT
USER [odoo]
# Fri, 16 Nov 2018 13:54:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 13:54:08 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92097cafc66b9184abe24107e20425d75a1ba40b0782e77e18a0527bd8230a01`  
		Last Modified: Fri, 16 Nov 2018 13:57:36 GMT  
		Size: 87.0 MB (87035834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728d8d2577200f7f56ae86d61a734b02d8248a3095dd45750c671aeb371755aa`  
		Last Modified: Fri, 16 Nov 2018 13:57:57 GMT  
		Size: 139.8 MB (139849730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e913d95e6b1ad57b1f3afb1003f177b3bb239aa341c198d9d96912c2096c8117`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e65c1f2e702629f41673b4c937320f622311aa5c4e8eda19ed93c5f0dac7c7b`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af713b540b2ecd40c3b41a282d11d8579c99b890ab86b791dffddb67ef226aa`  
		Last Modified: Fri, 16 Nov 2018 13:57:08 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5e43ab8930536f67e26c410f16c045c84e622465a1b30fd848752d275e6048`  
		Last Modified: Fri, 16 Nov 2018 13:57:09 GMT  
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
$ docker pull odoo@sha256:e941d1d34b2462af56508250d89bfaff13c9ea828fe1f5914706a80b806f9dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:4a18d044bf1f59976dc5229f54c4968649716f6478fe48215a498f41b1be3f8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401654031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffde1a323cc9923581cd7f466941356291f9711007a9d4d7e4666f5e1a2265e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:44:01 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 16 Nov 2018 13:44:01 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 13:45:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 16 Nov 2018 13:45:08 GMT
ENV ODOO_VERSION=12.0
# Fri, 16 Nov 2018 13:45:11 GMT
ENV ODOO_RELEASE=20181109
# Fri, 16 Nov 2018 13:46:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 16 Nov 2018 13:46:50 GMT
RUN pip3 install num2words xlwt
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 16 Nov 2018 13:46:52 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 16 Nov 2018 13:46:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 16 Nov 2018 13:46:54 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 16 Nov 2018 13:46:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:55 GMT
USER [odoo]
# Fri, 16 Nov 2018 13:46:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 13:46:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84352b994eba10a52fde0381972476066a46261c0f5fb1d427ae4a8a2b66b46b`  
		Last Modified: Fri, 16 Nov 2018 13:55:56 GMT  
		Size: 222.2 MB (222192638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda5487dd3caafe767fc99d9acc25e8ae7a25c72bdb8915d235f1172567e3be6`  
		Last Modified: Fri, 16 Nov 2018 13:55:41 GMT  
		Size: 133.6 MB (133608031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2c822e0d3874d4a304440b0dac45b2e63b38e53c4a31b3718cecb26722703d`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7aaed065b2ca35dd2ba1fae12085f97ee89c60988add3f9651d6508b97fdf`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c28c26dcf00d7dc4b1acccb54d6cf99810ab3394aa54cafc6174ac4f28d0c`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c2bb92d5a3a945987bc6528f7fc691d513975d0dfee98523b5a7a553ce7c86`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd16b2d51165b5802e19ab2afd47ee98e6b4cf8f56225876b818d43d880bbe45`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 127.0 B  
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
$ docker pull odoo@sha256:e941d1d34b2462af56508250d89bfaff13c9ea828fe1f5914706a80b806f9dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:4a18d044bf1f59976dc5229f54c4968649716f6478fe48215a498f41b1be3f8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401654031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffde1a323cc9923581cd7f466941356291f9711007a9d4d7e4666f5e1a2265e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:44:01 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 16 Nov 2018 13:44:01 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 13:45:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 16 Nov 2018 13:45:08 GMT
ENV ODOO_VERSION=12.0
# Fri, 16 Nov 2018 13:45:11 GMT
ENV ODOO_RELEASE=20181109
# Fri, 16 Nov 2018 13:46:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 16 Nov 2018 13:46:50 GMT
RUN pip3 install num2words xlwt
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 16 Nov 2018 13:46:52 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 16 Nov 2018 13:46:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 16 Nov 2018 13:46:54 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 16 Nov 2018 13:46:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:55 GMT
USER [odoo]
# Fri, 16 Nov 2018 13:46:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 13:46:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84352b994eba10a52fde0381972476066a46261c0f5fb1d427ae4a8a2b66b46b`  
		Last Modified: Fri, 16 Nov 2018 13:55:56 GMT  
		Size: 222.2 MB (222192638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda5487dd3caafe767fc99d9acc25e8ae7a25c72bdb8915d235f1172567e3be6`  
		Last Modified: Fri, 16 Nov 2018 13:55:41 GMT  
		Size: 133.6 MB (133608031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2c822e0d3874d4a304440b0dac45b2e63b38e53c4a31b3718cecb26722703d`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7aaed065b2ca35dd2ba1fae12085f97ee89c60988add3f9651d6508b97fdf`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c28c26dcf00d7dc4b1acccb54d6cf99810ab3394aa54cafc6174ac4f28d0c`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c2bb92d5a3a945987bc6528f7fc691d513975d0dfee98523b5a7a553ce7c86`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd16b2d51165b5802e19ab2afd47ee98e6b4cf8f56225876b818d43d880bbe45`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 127.0 B  
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
$ docker pull odoo@sha256:e941d1d34b2462af56508250d89bfaff13c9ea828fe1f5914706a80b806f9dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:4a18d044bf1f59976dc5229f54c4968649716f6478fe48215a498f41b1be3f8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401654031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dffde1a323cc9923581cd7f466941356291f9711007a9d4d7e4666f5e1a2265e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:44:01 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Fri, 16 Nov 2018 13:44:01 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 13:45:05 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 16 Nov 2018 13:45:08 GMT
ENV ODOO_VERSION=12.0
# Fri, 16 Nov 2018 13:45:11 GMT
ENV ODOO_RELEASE=20181109
# Fri, 16 Nov 2018 13:46:43 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Fri, 16 Nov 2018 13:46:50 GMT
RUN pip3 install num2words xlwt
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Fri, 16 Nov 2018 13:46:51 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Fri, 16 Nov 2018 13:46:52 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:54 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Fri, 16 Nov 2018 13:46:54 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Fri, 16 Nov 2018 13:46:54 GMT
EXPOSE 8069/tcp 8071/tcp
# Fri, 16 Nov 2018 13:46:55 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Fri, 16 Nov 2018 13:46:55 GMT
USER [odoo]
# Fri, 16 Nov 2018 13:46:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 13:46:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84352b994eba10a52fde0381972476066a46261c0f5fb1d427ae4a8a2b66b46b`  
		Last Modified: Fri, 16 Nov 2018 13:55:56 GMT  
		Size: 222.2 MB (222192638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda5487dd3caafe767fc99d9acc25e8ae7a25c72bdb8915d235f1172567e3be6`  
		Last Modified: Fri, 16 Nov 2018 13:55:41 GMT  
		Size: 133.6 MB (133608031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2c822e0d3874d4a304440b0dac45b2e63b38e53c4a31b3718cecb26722703d`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 531.3 KB (531272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e7aaed065b2ca35dd2ba1fae12085f97ee89c60988add3f9651d6508b97fdf`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35c28c26dcf00d7dc4b1acccb54d6cf99810ab3394aa54cafc6174ac4f28d0c`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c2bb92d5a3a945987bc6528f7fc691d513975d0dfee98523b5a7a553ce7c86`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd16b2d51165b5802e19ab2afd47ee98e6b4cf8f56225876b818d43d880bbe45`  
		Last Modified: Fri, 16 Nov 2018 13:54:44 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

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
