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
$ docker pull odoo@sha256:ab6a0f568303440b4f17b0d0481bdafda534e87feeba7e886af7cb54936390db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:ef313fecac9c14840ad0028033525b7d589940d744f2790f9ca767c4eb1b571a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280888565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ff342c0c44886fac0eb7f02c3fcf0ba29e68e2c11d08a1466c0375183882aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:49:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 27 Nov 2018 01:10:47 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-ldap             python-pip             python-qrcode             python-renderpm             python-support             python-vobject             python-watchdog         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.jessie_amd64.deb         && echo '4d104ff338dc2d2083457b3b1e9baab8ddf14202 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 27 Nov 2018 01:10:48 GMT
ENV ODOO_VERSION=10.0
# Tue, 27 Nov 2018 01:10:48 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:12:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a68f31336b103c9cc334d8eb2f88bd5e754b5d74 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:12:20 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:12:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 27 Nov 2018 01:12:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:12:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:12:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:12:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:12:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:12:25 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:12:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5882b4a2de578d0c8d6815d0f9e9342da2dedbf6bd929011be364d09309454e`  
		Last Modified: Tue, 27 Nov 2018 01:16:53 GMT  
		Size: 88.5 MB (88464515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32458b989b31d8b571630176b7219f187c2c913d37ac5e96ba9e3e7e060c91b3`  
		Last Modified: Tue, 27 Nov 2018 01:17:17 GMT  
		Size: 138.1 MB (138064317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3510ec069bb7db7cfc132f3da80bacaf8be5726204e0a092510668acbae2f23`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf12fa7de9207307ac0d8c9b50671c0d1fb2e9b0adff4d81f40dd5cddad51c90`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bf324fdcb88a3562b7f4964dceb448c0b315f9e44661b3521755708fabfad5`  
		Last Modified: Tue, 27 Nov 2018 01:16:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade186535146b623b486487d4b909baaf34755d73d6bfdd2d04fd0c357efe468`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:ab6a0f568303440b4f17b0d0481bdafda534e87feeba7e886af7cb54936390db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:ef313fecac9c14840ad0028033525b7d589940d744f2790f9ca767c4eb1b571a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280888565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ff342c0c44886fac0eb7f02c3fcf0ba29e68e2c11d08a1466c0375183882aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 13:49:46 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Tue, 27 Nov 2018 01:10:47 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-ldap             python-pip             python-qrcode             python-renderpm             python-support             python-vobject             python-watchdog         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.jessie_amd64.deb         && echo '4d104ff338dc2d2083457b3b1e9baab8ddf14202 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 27 Nov 2018 01:10:48 GMT
ENV ODOO_VERSION=10.0
# Tue, 27 Nov 2018 01:10:48 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:12:19 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a68f31336b103c9cc334d8eb2f88bd5e754b5d74 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:12:20 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:12:21 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Tue, 27 Nov 2018 01:12:22 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:12:23 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:12:24 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:12:24 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:12:24 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:12:25 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:12:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:12:25 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5882b4a2de578d0c8d6815d0f9e9342da2dedbf6bd929011be364d09309454e`  
		Last Modified: Tue, 27 Nov 2018 01:16:53 GMT  
		Size: 88.5 MB (88464515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32458b989b31d8b571630176b7219f187c2c913d37ac5e96ba9e3e7e060c91b3`  
		Last Modified: Tue, 27 Nov 2018 01:17:17 GMT  
		Size: 138.1 MB (138064317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3510ec069bb7db7cfc132f3da80bacaf8be5726204e0a092510668acbae2f23`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf12fa7de9207307ac0d8c9b50671c0d1fb2e9b0adff4d81f40dd5cddad51c90`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2bf324fdcb88a3562b7f4964dceb448c0b315f9e44661b3521755708fabfad5`  
		Last Modified: Tue, 27 Nov 2018 01:16:35 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ade186535146b623b486487d4b909baaf34755d73d6bfdd2d04fd0c357efe468`  
		Last Modified: Tue, 27 Nov 2018 01:16:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:65ea525e069a66ed787aadd9ace120f960502a79acd9293438b9636e4ef05246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:22404f794c5610624b2c7e89687daf464e696011d389eed2e502cc00c9edcda7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309896177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986c88d1a28b11d7c7af53a80bfe1817908a3a59a8b187d3a7401583bc566562`
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
# Tue, 27 Nov 2018 01:05:53 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 27 Nov 2018 01:07:27 GMT
ENV ODOO_VERSION=11.0
# Tue, 27 Nov 2018 01:07:28 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:08:12 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '57e270cd958ca97b3920d7187c8967e1458d975c odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:08:17 GMT
RUN pip3 install num2words xlwt
# Tue, 27 Nov 2018 01:08:18 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:08:18 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 27 Nov 2018 01:08:19 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:08:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:08:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:08:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:08:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:08:21 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:08:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:08:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f6a48ed51317cd48501fd238bf250a12e4ba19cdbfd183355f68dc2a70d77a`  
		Last Modified: Tue, 27 Nov 2018 01:13:44 GMT  
		Size: 115.2 MB (115197686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be8ec43a1d90a5ecbc83d7d2fe471b0e3896e0bc652cc8ba1188a48cfc25c60`  
		Last Modified: Tue, 27 Nov 2018 01:15:58 GMT  
		Size: 148.8 MB (148777961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e710a9deaff7b97a4fad676521c9691c1cdd69fd57a79dcfdd5028e06106a0b`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 598.4 KB (598441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a7c5b719128e7ff74485ddfed3cfd608c6b15443906b50d54e9cf4401f24da`  
		Last Modified: Tue, 27 Nov 2018 01:15:16 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dbc57f4756468e098e7898781b9e0bd57423bca4d8d968a6e43bde4ca5bd55`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6755a024a68b0b756db88fd7239a735b7447b0b4774b0f35dafb216a1a629d`  
		Last Modified: Tue, 27 Nov 2018 01:15:16 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aaf12b90fba6163933a2f3d319dfab49bef6df3aaf3c09dc671efb0bdd847d`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7e8500dd6f8ce0bae41c9d2b8cfcc95b1dfde386531eb0c0ce964c9121df13c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417100850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bab1048a09fc0da81264ca7ec4942b2f7d8697b302a348911ccd171f8a2cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:45:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Nov 2018 01:45:42 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:47:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 17 Nov 2018 01:52:35 GMT
ENV ODOO_VERSION=11.0
# Sat, 17 Nov 2018 01:52:35 GMT
ENV ODOO_RELEASE=20181109
# Sat, 17 Nov 2018 01:55:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Nov 2018 01:55:44 GMT
RUN pip3 install num2words xlwt
# Sat, 17 Nov 2018 01:55:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Nov 2018 01:55:50 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 17 Nov 2018 01:55:53 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:56:03 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Nov 2018 01:56:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Nov 2018 01:56:07 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Nov 2018 01:56:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:56:15 GMT
USER [odoo]
# Sat, 17 Nov 2018 01:56:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 01:56:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16341ce73ba0828f03b17f598905150415f6d452008d0734df6f30b9af30a22`  
		Last Modified: Sat, 17 Nov 2018 01:58:13 GMT  
		Size: 219.5 MB (219496227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08944283353eb8f04776f3ca567de52f32b4b0c26985f048c5bef7ed84bfad47`  
		Last Modified: Sat, 17 Nov 2018 02:00:14 GMT  
		Size: 154.0 MB (153954796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e04e2ed66581ebcbe9747a3b405f8deb6fca8747de3dfc141021564222ce052`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 531.3 KB (531291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba139fe004639353b8283aa52caf9ac53d8dc7ff8019e4c3f9771e71353b06a`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adc4bcf49b1be26bf8914833b65f57ce151e9eae40709dd21bd3d561b28197`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b51e926102325f122ee3636aa9803cd09aa7873056964ecd134f10c3334d19e`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d122ed1988a257c57e4cb47cf8825f756ff5253b4ebb2ed9c6c5e05e872672`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:65ea525e069a66ed787aadd9ace120f960502a79acd9293438b9636e4ef05246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:22404f794c5610624b2c7e89687daf464e696011d389eed2e502cc00c9edcda7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309896177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986c88d1a28b11d7c7af53a80bfe1817908a3a59a8b187d3a7401583bc566562`
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
# Tue, 27 Nov 2018 01:05:53 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 27 Nov 2018 01:07:27 GMT
ENV ODOO_VERSION=11.0
# Tue, 27 Nov 2018 01:07:28 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:08:12 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '57e270cd958ca97b3920d7187c8967e1458d975c odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:08:17 GMT
RUN pip3 install num2words xlwt
# Tue, 27 Nov 2018 01:08:18 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:08:18 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 27 Nov 2018 01:08:19 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:08:20 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:08:20 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:08:20 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:08:21 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:08:21 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:08:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:08:21 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f6a48ed51317cd48501fd238bf250a12e4ba19cdbfd183355f68dc2a70d77a`  
		Last Modified: Tue, 27 Nov 2018 01:13:44 GMT  
		Size: 115.2 MB (115197686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be8ec43a1d90a5ecbc83d7d2fe471b0e3896e0bc652cc8ba1188a48cfc25c60`  
		Last Modified: Tue, 27 Nov 2018 01:15:58 GMT  
		Size: 148.8 MB (148777961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e710a9deaff7b97a4fad676521c9691c1cdd69fd57a79dcfdd5028e06106a0b`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 598.4 KB (598441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a7c5b719128e7ff74485ddfed3cfd608c6b15443906b50d54e9cf4401f24da`  
		Last Modified: Tue, 27 Nov 2018 01:15:16 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52dbc57f4756468e098e7898781b9e0bd57423bca4d8d968a6e43bde4ca5bd55`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6755a024a68b0b756db88fd7239a735b7447b0b4774b0f35dafb216a1a629d`  
		Last Modified: Tue, 27 Nov 2018 01:15:16 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43aaf12b90fba6163933a2f3d319dfab49bef6df3aaf3c09dc671efb0bdd847d`  
		Last Modified: Tue, 27 Nov 2018 01:15:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:11.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:7e8500dd6f8ce0bae41c9d2b8cfcc95b1dfde386531eb0c0ce964c9121df13c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417100850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03bab1048a09fc0da81264ca7ec4942b2f7d8697b302a348911ccd171f8a2cc2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:45:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Nov 2018 01:45:42 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:47:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 17 Nov 2018 01:52:35 GMT
ENV ODOO_VERSION=11.0
# Sat, 17 Nov 2018 01:52:35 GMT
ENV ODOO_RELEASE=20181109
# Sat, 17 Nov 2018 01:55:26 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '04823230d99d16dbaf157c55cfad632db4559060 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Nov 2018 01:55:44 GMT
RUN pip3 install num2words xlwt
# Sat, 17 Nov 2018 01:55:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Nov 2018 01:55:50 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 17 Nov 2018 01:55:53 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:56:03 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Nov 2018 01:56:05 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Nov 2018 01:56:07 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Nov 2018 01:56:10 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:56:15 GMT
USER [odoo]
# Sat, 17 Nov 2018 01:56:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 01:56:24 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16341ce73ba0828f03b17f598905150415f6d452008d0734df6f30b9af30a22`  
		Last Modified: Sat, 17 Nov 2018 01:58:13 GMT  
		Size: 219.5 MB (219496227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08944283353eb8f04776f3ca567de52f32b4b0c26985f048c5bef7ed84bfad47`  
		Last Modified: Sat, 17 Nov 2018 02:00:14 GMT  
		Size: 154.0 MB (153954796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e04e2ed66581ebcbe9747a3b405f8deb6fca8747de3dfc141021564222ce052`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 531.3 KB (531291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba139fe004639353b8283aa52caf9ac53d8dc7ff8019e4c3f9771e71353b06a`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30adc4bcf49b1be26bf8914833b65f57ce151e9eae40709dd21bd3d561b28197`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b51e926102325f122ee3636aa9803cd09aa7873056964ecd134f10c3334d19e`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3d122ed1988a257c57e4cb47cf8825f756ff5253b4ebb2ed9c6c5e05e872672`  
		Last Modified: Sat, 17 Nov 2018 01:59:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12`

```console
$ docker pull odoo@sha256:4ed82b431772584c3df396a0ea4e78d22b5d1042139673fbe2ec9292301be93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:277ef8890b20a7eb745c975134e7d5fa1905a53ac4ec0d7398bfc0b126c7ae83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289096320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc0f46febcf67783cbb8395f67ba89ff68b0b255f98e1d28952d1f75706f30`
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
# Tue, 27 Nov 2018 01:05:53 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_VERSION=12.0
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:06:49 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '30fb8530c596d5606b079c45f1be15f423431fdd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:06:54 GMT
RUN pip3 install num2words xlwt
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 27 Nov 2018 01:06:56 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:57 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:06:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:06:57 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:06:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:58 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:06:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:06:59 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f6a48ed51317cd48501fd238bf250a12e4ba19cdbfd183355f68dc2a70d77a`  
		Last Modified: Tue, 27 Nov 2018 01:13:44 GMT  
		Size: 115.2 MB (115197686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57cf9e7c122789dbf3864cf6e014117cecc95c3bad2c631b55b6e169465284`  
		Last Modified: Tue, 27 Nov 2018 01:14:06 GMT  
		Size: 128.0 MB (127978124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b5985889da6a337a921956df04f72a6aa485d6f236b327b8289f820326de9`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 598.4 KB (598422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e259dc791d7c3fecc323b9ce89e917b711d24ada8a48b4a821be24f5bd676`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de21b3dc9a83f435ca4802810931900205105826de805f327cfedfe7ed43ba`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f6b683dc8865e3a8a2c4d0f00fc93c5c1ea47f7e8caadbf1cf5875bdb873b`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f8db4e4c9de4fe3fbcd79ab489517ffa605009165083e78553c916821981fe`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cd2c5c7ed6b18dc6655fd2dfe6ef4fd67464545ba0b3ed3084ec51e8ab07a262
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395243954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d9f6f53df090ee22a019fe8320f1d79392f396975d8a55f8c5edafd05038eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:45:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Nov 2018 01:45:42 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:47:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_VERSION=12.0
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_RELEASE=20181109
# Sat, 17 Nov 2018 01:50:18 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Nov 2018 01:50:32 GMT
RUN pip3 install num2words xlwt
# Sat, 17 Nov 2018 01:50:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Nov 2018 01:50:56 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 17 Nov 2018 01:50:59 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Nov 2018 01:51:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Nov 2018 01:51:31 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Nov 2018 01:51:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:32 GMT
USER [odoo]
# Sat, 17 Nov 2018 01:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 01:51:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16341ce73ba0828f03b17f598905150415f6d452008d0734df6f30b9af30a22`  
		Last Modified: Sat, 17 Nov 2018 01:58:13 GMT  
		Size: 219.5 MB (219496227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5599f68125e868ccd59d754f70d28ac60ce82ca10258d09ad49e1263ed3a3`  
		Last Modified: Sat, 17 Nov 2018 01:58:02 GMT  
		Size: 132.1 MB (132097911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0ef8aafd26f37d8410df5623a7414f7f2fa67cab4fad1bba6fa13170e0c281`  
		Last Modified: Sat, 17 Nov 2018 01:56:59 GMT  
		Size: 531.3 KB (531281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae45f5af295353adf3a1d09086241567b8dcf0cc5aa18390c8d9a147218dfcf`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd85351fb5743f6548b07f48cbea46c9175e250217bbd391322a8e826fae4f0`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85a1be1783615f0f3c85583f136159d9b77474ab9cf4b205ede64304003576`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36446f06b0f6f4e3e8cb691b80df2687143f529284cc9d089c60b022081dbb63`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:12.0`

```console
$ docker pull odoo@sha256:4ed82b431772584c3df396a0ea4e78d22b5d1042139673fbe2ec9292301be93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:277ef8890b20a7eb745c975134e7d5fa1905a53ac4ec0d7398bfc0b126c7ae83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289096320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc0f46febcf67783cbb8395f67ba89ff68b0b255f98e1d28952d1f75706f30`
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
# Tue, 27 Nov 2018 01:05:53 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_VERSION=12.0
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:06:49 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '30fb8530c596d5606b079c45f1be15f423431fdd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:06:54 GMT
RUN pip3 install num2words xlwt
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 27 Nov 2018 01:06:56 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:57 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:06:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:06:57 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:06:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:58 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:06:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:06:59 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f6a48ed51317cd48501fd238bf250a12e4ba19cdbfd183355f68dc2a70d77a`  
		Last Modified: Tue, 27 Nov 2018 01:13:44 GMT  
		Size: 115.2 MB (115197686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57cf9e7c122789dbf3864cf6e014117cecc95c3bad2c631b55b6e169465284`  
		Last Modified: Tue, 27 Nov 2018 01:14:06 GMT  
		Size: 128.0 MB (127978124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b5985889da6a337a921956df04f72a6aa485d6f236b327b8289f820326de9`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 598.4 KB (598422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e259dc791d7c3fecc323b9ce89e917b711d24ada8a48b4a821be24f5bd676`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de21b3dc9a83f435ca4802810931900205105826de805f327cfedfe7ed43ba`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f6b683dc8865e3a8a2c4d0f00fc93c5c1ea47f7e8caadbf1cf5875bdb873b`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f8db4e4c9de4fe3fbcd79ab489517ffa605009165083e78553c916821981fe`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:12.0` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cd2c5c7ed6b18dc6655fd2dfe6ef4fd67464545ba0b3ed3084ec51e8ab07a262
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395243954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d9f6f53df090ee22a019fe8320f1d79392f396975d8a55f8c5edafd05038eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:45:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Nov 2018 01:45:42 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:47:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_VERSION=12.0
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_RELEASE=20181109
# Sat, 17 Nov 2018 01:50:18 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Nov 2018 01:50:32 GMT
RUN pip3 install num2words xlwt
# Sat, 17 Nov 2018 01:50:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Nov 2018 01:50:56 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 17 Nov 2018 01:50:59 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Nov 2018 01:51:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Nov 2018 01:51:31 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Nov 2018 01:51:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:32 GMT
USER [odoo]
# Sat, 17 Nov 2018 01:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 01:51:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16341ce73ba0828f03b17f598905150415f6d452008d0734df6f30b9af30a22`  
		Last Modified: Sat, 17 Nov 2018 01:58:13 GMT  
		Size: 219.5 MB (219496227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5599f68125e868ccd59d754f70d28ac60ce82ca10258d09ad49e1263ed3a3`  
		Last Modified: Sat, 17 Nov 2018 01:58:02 GMT  
		Size: 132.1 MB (132097911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0ef8aafd26f37d8410df5623a7414f7f2fa67cab4fad1bba6fa13170e0c281`  
		Last Modified: Sat, 17 Nov 2018 01:56:59 GMT  
		Size: 531.3 KB (531281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae45f5af295353adf3a1d09086241567b8dcf0cc5aa18390c8d9a147218dfcf`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd85351fb5743f6548b07f48cbea46c9175e250217bbd391322a8e826fae4f0`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85a1be1783615f0f3c85583f136159d9b77474ab9cf4b205ede64304003576`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36446f06b0f6f4e3e8cb691b80df2687143f529284cc9d089c60b022081dbb63`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:4ed82b431772584c3df396a0ea4e78d22b5d1042139673fbe2ec9292301be93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:277ef8890b20a7eb745c975134e7d5fa1905a53ac4ec0d7398bfc0b126c7ae83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289096320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cc0f46febcf67783cbb8395f67ba89ff68b0b255f98e1d28952d1f75706f30`
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
# Tue, 27 Nov 2018 01:05:53 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_VERSION=12.0
# Tue, 27 Nov 2018 01:05:54 GMT
ENV ODOO_RELEASE=20181126
# Tue, 27 Nov 2018 01:06:49 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '30fb8530c596d5606b079c45f1be15f423431fdd odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 27 Nov 2018 01:06:54 GMT
RUN pip3 install num2words xlwt
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 27 Nov 2018 01:06:55 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 27 Nov 2018 01:06:56 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:57 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 27 Nov 2018 01:06:57 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 27 Nov 2018 01:06:57 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 27 Nov 2018 01:06:58 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 27 Nov 2018 01:06:58 GMT
USER [odoo]
# Tue, 27 Nov 2018 01:06:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Nov 2018 01:06:59 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f6a48ed51317cd48501fd238bf250a12e4ba19cdbfd183355f68dc2a70d77a`  
		Last Modified: Tue, 27 Nov 2018 01:13:44 GMT  
		Size: 115.2 MB (115197686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57cf9e7c122789dbf3864cf6e014117cecc95c3bad2c631b55b6e169465284`  
		Last Modified: Tue, 27 Nov 2018 01:14:06 GMT  
		Size: 128.0 MB (127978124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8b5985889da6a337a921956df04f72a6aa485d6f236b327b8289f820326de9`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 598.4 KB (598422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0e259dc791d7c3fecc323b9ce89e917b711d24ada8a48b4a821be24f5bd676`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de21b3dc9a83f435ca4802810931900205105826de805f327cfedfe7ed43ba`  
		Last Modified: Tue, 27 Nov 2018 01:13:14 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4f6b683dc8865e3a8a2c4d0f00fc93c5c1ea47f7e8caadbf1cf5875bdb873b`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f8db4e4c9de4fe3fbcd79ab489517ffa605009165083e78553c916821981fe`  
		Last Modified: Tue, 27 Nov 2018 01:13:15 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:cd2c5c7ed6b18dc6655fd2dfe6ef4fd67464545ba0b3ed3084ec51e8ab07a262
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.2 MB (395243954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95d9f6f53df090ee22a019fe8320f1d79392f396975d8a55f8c5edafd05038eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 01:45:41 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Sat, 17 Nov 2018 01:45:42 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 01:47:20 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_VERSION=12.0
# Sat, 17 Nov 2018 01:47:22 GMT
ENV ODOO_RELEASE=20181109
# Sat, 17 Nov 2018 01:50:18 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'fcaa0f72ecc8a4fa5636948a8966f7584eab1fac odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Sat, 17 Nov 2018 01:50:32 GMT
RUN pip3 install num2words xlwt
# Sat, 17 Nov 2018 01:50:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Sat, 17 Nov 2018 01:50:56 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Sat, 17 Nov 2018 01:50:59 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:15 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Sat, 17 Nov 2018 01:51:15 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Sat, 17 Nov 2018 01:51:31 GMT
EXPOSE 8069/tcp 8071/tcp
# Sat, 17 Nov 2018 01:51:31 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Sat, 17 Nov 2018 01:51:32 GMT
USER [odoo]
# Sat, 17 Nov 2018 01:51:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 01:51:48 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e16341ce73ba0828f03b17f598905150415f6d452008d0734df6f30b9af30a22`  
		Last Modified: Sat, 17 Nov 2018 01:58:13 GMT  
		Size: 219.5 MB (219496227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b5599f68125e868ccd59d754f70d28ac60ce82ca10258d09ad49e1263ed3a3`  
		Last Modified: Sat, 17 Nov 2018 01:58:02 GMT  
		Size: 132.1 MB (132097911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0ef8aafd26f37d8410df5623a7414f7f2fa67cab4fad1bba6fa13170e0c281`  
		Last Modified: Sat, 17 Nov 2018 01:56:59 GMT  
		Size: 531.3 KB (531281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae45f5af295353adf3a1d09086241567b8dcf0cc5aa18390c8d9a147218dfcf`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbd85351fb5743f6548b07f48cbea46c9175e250217bbd391322a8e826fae4f0`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f85a1be1783615f0f3c85583f136159d9b77474ab9cf4b205ede64304003576`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36446f06b0f6f4e3e8cb691b80df2687143f529284cc9d089c60b022081dbb63`  
		Last Modified: Sat, 17 Nov 2018 01:56:58 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
