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
$ docker pull odoo@sha256:a3dadeb8e1bb1feac233ecefaeb42942030d26116b4d793bea4a48780073658f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:9f835ff2994ffa19def5a188cec0b80876d15d60f7c83f17ec9888597a245d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284305434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2fe8a15af41fb5e3316183e3bdb9348e3d4f7a6a4e43ce6bd94b6a763be38f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:38:07 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:41:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             node-less             python-gevent             python-ldap             python-pip             python-qrcode             python-renderpm             python-support             python-vobject             python-watchdog         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.jessie_amd64.deb         && echo '4d104ff338dc2d2083457b3b1e9baab8ddf14202 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 26 Mar 2019 23:44:54 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:44:54 GMT
ENV ODOO_VERSION=10.0
# Wed, 24 Apr 2019 21:25:54 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:25:54 GMT
ARG ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
# Wed, 24 Apr 2019 21:29:22 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:29:24 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:29:24 GMT
COPY file:cebd452fc0fa563b14ae533cd7f1e7ac30be22df2fe36f3535b708d58bd3601d in /etc/odoo/ 
# Wed, 24 Apr 2019 21:29:25 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:29:26 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:29:26 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:29:27 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:29:27 GMT
USER odoo
# Wed, 24 Apr 2019 21:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:29:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3695db4fff3f5199cfff613376d1572fb39834325cc54282b0cd3761007d9529`  
		Last Modified: Tue, 26 Mar 2019 23:50:15 GMT  
		Size: 89.0 MB (88969092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ae73de8360cb186b369532fb3d1b06436df5285647d9355ab3b8adf8aab5a8`  
		Last Modified: Tue, 26 Mar 2019 23:49:55 GMT  
		Size: 4.9 MB (4877113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbb450afc150e42c020ba46d287767a25d1eb24b3181530eb478f29f9e3a0ca`  
		Last Modified: Wed, 24 Apr 2019 21:32:41 GMT  
		Size: 136.1 MB (136074429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891a2311c45764208ebb3e6bce2471a074e55c1a8d5ce74ae7a79b79bd73b0c`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f41c2c50fb600b3f850d385d5175452d15b2e7ce77d6700be5b0a3e78e684c`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f3a1e8a527848fc60a935022e348f6ba0b891d8b55dbd05269475cd4bf2e5`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fbe42da44aa530100728471a3a14cda6c8954376077cbb1ecf5b3b26e67dd6`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:a3dadeb8e1bb1feac233ecefaeb42942030d26116b4d793bea4a48780073658f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:9f835ff2994ffa19def5a188cec0b80876d15d60f7c83f17ec9888597a245d8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284305434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2fe8a15af41fb5e3316183e3bdb9348e3d4f7a6a4e43ce6bd94b6a763be38f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:38:07 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:41:52 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             node-less             python-gevent             python-ldap             python-pip             python-qrcode             python-renderpm             python-support             python-vobject             python-watchdog         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.jessie_amd64.deb         && echo '4d104ff338dc2d2083457b3b1e9baab8ddf14202 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Tue, 26 Mar 2019 23:44:54 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:44:54 GMT
ENV ODOO_VERSION=10.0
# Wed, 24 Apr 2019 21:25:54 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:25:54 GMT
ARG ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
# Wed, 24 Apr 2019 21:29:22 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:29:24 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:29:24 GMT
COPY file:cebd452fc0fa563b14ae533cd7f1e7ac30be22df2fe36f3535b708d58bd3601d in /etc/odoo/ 
# Wed, 24 Apr 2019 21:29:25 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:29:26 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=1f4668c0e3b1597ffa931994952cf6fce87df37e
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:29:26 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:29:26 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:29:27 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:29:27 GMT
USER odoo
# Wed, 24 Apr 2019 21:29:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:29:27 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3695db4fff3f5199cfff613376d1572fb39834325cc54282b0cd3761007d9529`  
		Last Modified: Tue, 26 Mar 2019 23:50:15 GMT  
		Size: 89.0 MB (88969092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34ae73de8360cb186b369532fb3d1b06436df5285647d9355ab3b8adf8aab5a8`  
		Last Modified: Tue, 26 Mar 2019 23:49:55 GMT  
		Size: 4.9 MB (4877113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbb450afc150e42c020ba46d287767a25d1eb24b3181530eb478f29f9e3a0ca`  
		Last Modified: Wed, 24 Apr 2019 21:32:41 GMT  
		Size: 136.1 MB (136074429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9891a2311c45764208ebb3e6bce2471a074e55c1a8d5ce74ae7a79b79bd73b0c`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f41c2c50fb600b3f850d385d5175452d15b2e7ce77d6700be5b0a3e78e684c`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 582.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2f3a1e8a527848fc60a935022e348f6ba0b891d8b55dbd05269475cd4bf2e5`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fbe42da44aa530100728471a3a14cda6c8954376077cbb1ecf5b3b26e67dd6`  
		Last Modified: Wed, 24 Apr 2019 21:31:52 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:76585bace4e8618e107690c04033983edd252afa8287c54db69d1802722813ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:ea1ded49cd9251179ff0a021529338dcd72fb6c89c5fd823672c2eab174c786b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417077855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a363435249d6362c7f3f1981d1ca18dd37229d1c185f6554ba70c9ad12bbda97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:33:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:33:35 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:35:23 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             fonts-noto-cjk             gnupg             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 26 Mar 2019 23:35:34 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && gpgconf --kill all         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:37:05 GMT
ENV ODOO_VERSION=11.0
# Wed, 24 Apr 2019 21:24:10 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:24:10 GMT
ARG ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
# Wed, 24 Apr 2019 21:25:25 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:25:34 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN pip3 install num2words xlwt
# Wed, 24 Apr 2019 21:25:34 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:25:34 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 24 Apr 2019 21:25:35 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:25:36 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:25:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:25:37 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:25:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:25:37 GMT
USER odoo
# Wed, 24 Apr 2019 21:25:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:25:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73826273d86b2ca9073a85255be710a24e489af4af097ac775a40bbd0203392`  
		Last Modified: Tue, 26 Mar 2019 23:48:38 GMT  
		Size: 221.4 MB (221359510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd49758efab0611984024160b8173ceb72c9e6009d0ebd5206d721a35cb34997`  
		Last Modified: Tue, 26 Mar 2019 23:48:04 GMT  
		Size: 3.5 MB (3540945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c7938a1d485d885c04400615e6bf4fa7f90ad314044035ac145491a948ae35`  
		Last Modified: Wed, 24 Apr 2019 21:31:42 GMT  
		Size: 146.2 MB (146215417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a886c3ba5e9934df9763936f0ac465840cdaa077b61b264f9b5e257dd99d2d`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 617.5 KB (617547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d84bd7cab8d0e4fefc2d8168736c17f756e88a79da52c5683e6eadc9cd63c1`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067f12a4d2c8ba9da5273b04867a41baaffbd01f4a8a3447b8333ae542ef65ce`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cdf39695ebceaada8533f8c698feb0878c768674aad91df08bc153c05514eb`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f3284ea3faec7cf6d4118da79f93c70b2edca91b931749ed70b1411f3081b`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 126.0 B  
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
$ docker pull odoo@sha256:76585bace4e8618e107690c04033983edd252afa8287c54db69d1802722813ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:ea1ded49cd9251179ff0a021529338dcd72fb6c89c5fd823672c2eab174c786b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.1 MB (417077855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a363435249d6362c7f3f1981d1ca18dd37229d1c185f6554ba70c9ad12bbda97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:33:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:33:35 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:35:23 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             fonts-noto-cjk             gnupg             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 26 Mar 2019 23:35:34 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && gpgconf --kill all         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:37:05 GMT
ENV ODOO_VERSION=11.0
# Wed, 24 Apr 2019 21:24:10 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:24:10 GMT
ARG ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
# Wed, 24 Apr 2019 21:25:25 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:25:34 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN pip3 install num2words xlwt
# Wed, 24 Apr 2019 21:25:34 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:25:34 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 24 Apr 2019 21:25:35 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:25:36 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=374ccf1d4cde0e73d79f970ef75188c78ee0e222
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:25:37 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:25:37 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:25:37 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:25:37 GMT
USER odoo
# Wed, 24 Apr 2019 21:25:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:25:38 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73826273d86b2ca9073a85255be710a24e489af4af097ac775a40bbd0203392`  
		Last Modified: Tue, 26 Mar 2019 23:48:38 GMT  
		Size: 221.4 MB (221359510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd49758efab0611984024160b8173ceb72c9e6009d0ebd5206d721a35cb34997`  
		Last Modified: Tue, 26 Mar 2019 23:48:04 GMT  
		Size: 3.5 MB (3540945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c7938a1d485d885c04400615e6bf4fa7f90ad314044035ac145491a948ae35`  
		Last Modified: Wed, 24 Apr 2019 21:31:42 GMT  
		Size: 146.2 MB (146215417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a886c3ba5e9934df9763936f0ac465840cdaa077b61b264f9b5e257dd99d2d`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 617.5 KB (617547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d84bd7cab8d0e4fefc2d8168736c17f756e88a79da52c5683e6eadc9cd63c1`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067f12a4d2c8ba9da5273b04867a41baaffbd01f4a8a3447b8333ae542ef65ce`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cdf39695ebceaada8533f8c698feb0878c768674aad91df08bc153c05514eb`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f3284ea3faec7cf6d4118da79f93c70b2edca91b931749ed70b1411f3081b`  
		Last Modified: Wed, 24 Apr 2019 21:30:47 GMT  
		Size: 126.0 B  
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
$ docker pull odoo@sha256:e64d3f489b46edba389701525d13c9cb5b717d45ed313d1b365524f2c42a5163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12` - linux; amd64

```console
$ docker pull odoo@sha256:c1684495dfc3d53b6fff3b89274d1660b9038655a77203cf5d89a4717c2970bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.8 MB (430845546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7416c35bb68cbe79eb49c8e70b559d0daa9d2d88109ad93d0038e74091f63e48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:33:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:33:35 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:35:23 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             fonts-noto-cjk             gnupg             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 26 Mar 2019 23:35:34 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && gpgconf --kill all         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
RUN set -x;    echo "deb http://deb.nodesource.com/node_8.x stretch main" > /etc/apt/sources.list.d/nodesource.list     && export GNUPGHOME="$(mktemp -d)"     && repokey='9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --armor --export "${repokey}" | apt-key add -     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update     && apt-get install -y nodejs     && npm install -g rtlcss     && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
ENV ODOO_VERSION=12.0
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
# Wed, 24 Apr 2019 21:23:39 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:23:48 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN pip3 install num2words xlwt
# Wed, 24 Apr 2019 21:23:48 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:23:49 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 24 Apr 2019 21:23:50 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:51 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:23:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:23:52 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:23:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:53 GMT
USER odoo
# Wed, 24 Apr 2019 21:23:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:23:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73826273d86b2ca9073a85255be710a24e489af4af097ac775a40bbd0203392`  
		Last Modified: Tue, 26 Mar 2019 23:48:38 GMT  
		Size: 221.4 MB (221359510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd49758efab0611984024160b8173ceb72c9e6009d0ebd5206d721a35cb34997`  
		Last Modified: Tue, 26 Mar 2019 23:48:04 GMT  
		Size: 3.5 MB (3540945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e878e792865409633be78941dd48a8969c2e2e0d35f77fd787e93947056d329e`  
		Last Modified: Tue, 26 Mar 2019 23:48:16 GMT  
		Size: 29.2 MB (29172574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b9afd94f1136fa733ba743dc45cfa5e67b50bc8595bcc2163568cc9240e9e`  
		Last Modified: Wed, 24 Apr 2019 21:30:40 GMT  
		Size: 130.8 MB (130810562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a6213db5edfc053552192bf9cc513a91a3ded3dc5dae96262e5185f7283c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 617.5 KB (617519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91dd6e77d89c6d062541a35355559e05be897dab9002c215dc26a9fbf3c44c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e4ae84a583ab15746af108d0e13618d1c3f59881b64449003b47a9d467e3c5`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326116ca4a7f60cf45d8a55c4c1e5d51938a573c49352017c5f421f362b56ea`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5e043657e2abd6308d6ac8a0c3fd4e74009db0a68c32a1f4ac6cfda6801ef1`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 128.0 B  
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
$ docker pull odoo@sha256:e64d3f489b46edba389701525d13c9cb5b717d45ed313d1b365524f2c42a5163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:12.0` - linux; amd64

```console
$ docker pull odoo@sha256:c1684495dfc3d53b6fff3b89274d1660b9038655a77203cf5d89a4717c2970bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.8 MB (430845546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7416c35bb68cbe79eb49c8e70b559d0daa9d2d88109ad93d0038e74091f63e48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:33:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:33:35 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:35:23 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             fonts-noto-cjk             gnupg             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 26 Mar 2019 23:35:34 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && gpgconf --kill all         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
RUN set -x;    echo "deb http://deb.nodesource.com/node_8.x stretch main" > /etc/apt/sources.list.d/nodesource.list     && export GNUPGHOME="$(mktemp -d)"     && repokey='9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --armor --export "${repokey}" | apt-key add -     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update     && apt-get install -y nodejs     && npm install -g rtlcss     && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
ENV ODOO_VERSION=12.0
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
# Wed, 24 Apr 2019 21:23:39 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:23:48 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN pip3 install num2words xlwt
# Wed, 24 Apr 2019 21:23:48 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:23:49 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 24 Apr 2019 21:23:50 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:51 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:23:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:23:52 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:23:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:53 GMT
USER odoo
# Wed, 24 Apr 2019 21:23:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:23:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73826273d86b2ca9073a85255be710a24e489af4af097ac775a40bbd0203392`  
		Last Modified: Tue, 26 Mar 2019 23:48:38 GMT  
		Size: 221.4 MB (221359510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd49758efab0611984024160b8173ceb72c9e6009d0ebd5206d721a35cb34997`  
		Last Modified: Tue, 26 Mar 2019 23:48:04 GMT  
		Size: 3.5 MB (3540945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e878e792865409633be78941dd48a8969c2e2e0d35f77fd787e93947056d329e`  
		Last Modified: Tue, 26 Mar 2019 23:48:16 GMT  
		Size: 29.2 MB (29172574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b9afd94f1136fa733ba743dc45cfa5e67b50bc8595bcc2163568cc9240e9e`  
		Last Modified: Wed, 24 Apr 2019 21:30:40 GMT  
		Size: 130.8 MB (130810562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a6213db5edfc053552192bf9cc513a91a3ded3dc5dae96262e5185f7283c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 617.5 KB (617519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91dd6e77d89c6d062541a35355559e05be897dab9002c215dc26a9fbf3c44c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e4ae84a583ab15746af108d0e13618d1c3f59881b64449003b47a9d467e3c5`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326116ca4a7f60cf45d8a55c4c1e5d51938a573c49352017c5f421f362b56ea`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5e043657e2abd6308d6ac8a0c3fd4e74009db0a68c32a1f4ac6cfda6801ef1`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 128.0 B  
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
$ docker pull odoo@sha256:e64d3f489b46edba389701525d13c9cb5b717d45ed313d1b365524f2c42a5163
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:c1684495dfc3d53b6fff3b89274d1660b9038655a77203cf5d89a4717c2970bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.8 MB (430845546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7416c35bb68cbe79eb49c8e70b559d0daa9d2d88109ad93d0038e74091f63e48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:33:35 GMT
LABEL maintainer=Odoo S.A. <info@odoo.com>
# Tue, 26 Mar 2019 23:33:35 GMT
ENV LANG=C.UTF-8
# Tue, 26 Mar 2019 23:35:23 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             dirmngr             fonts-noto-cjk             gnupg             libssl1.0-dev             node-less             python3-pip             python3-pyldap             python3-qrcode             python3-renderpm             python3-setuptools             python3-vobject             python3-watchdog             xz-utils         && curl -o wkhtmltox.deb -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.stretch_amd64.deb         && echo '7e35a63f9db14f93ec7feeb0fce76b30c08f2057 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb        && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb
# Tue, 26 Mar 2019 23:35:34 GMT
RUN set -x;         echo 'deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main' > etc/apt/sources.list.d/pgdg.list         && export GNUPGHOME="$(mktemp -d)"         && repokey='B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8'         && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"         && gpg --armor --export "${repokey}" | apt-key add -         && gpgconf --kill all         && rm -rf "$GNUPGHOME"         && apt-get update          && apt-get install -y postgresql-client         && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
RUN set -x;    echo "deb http://deb.nodesource.com/node_8.x stretch main" > /etc/apt/sources.list.d/nodesource.list     && export GNUPGHOME="$(mktemp -d)"     && repokey='9FD3B784BC1C6FC31A8A0A1C1655A0AB68576280'     && gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "${repokey}"     && gpg --armor --export "${repokey}" | apt-key add -     && gpgconf --kill all     && rm -rf "$GNUPGHOME"     && apt-get update     && apt-get install -y nodejs     && npm install -g rtlcss     && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:35:50 GMT
ENV ODOO_VERSION=12.0
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_RELEASE=20190424
# Wed, 24 Apr 2019 21:22:26 GMT
ARG ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
# Wed, 24 Apr 2019 21:23:39 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN set -x;         curl -o odoo.deb -sSL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo "${ODOO_SHA} odoo.deb" | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 24 Apr 2019 21:23:48 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN pip3 install num2words xlwt
# Wed, 24 Apr 2019 21:23:48 GMT
COPY file:4176eb0ea8f4dc2006706c8beb089877469b2c51fd91c795a2c6b91c1587dff1 in / 
# Wed, 24 Apr 2019 21:23:49 GMT
COPY file:1e7209cce5525d270c422815db614f496d4d0da4820de1ab0000e9e592223235 in /etc/odoo/ 
# Wed, 24 Apr 2019 21:23:50 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:51 GMT
# ARGS: ODOO_RELEASE=20190424 ODOO_SHA=3885be6791b9b8c2a74115299e57213c71db4363
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 24 Apr 2019 21:23:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 24 Apr 2019 21:23:52 GMT
EXPOSE 8069 8071
# Wed, 24 Apr 2019 21:23:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 24 Apr 2019 21:23:53 GMT
USER odoo
# Wed, 24 Apr 2019 21:23:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Apr 2019 21:23:54 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73826273d86b2ca9073a85255be710a24e489af4af097ac775a40bbd0203392`  
		Last Modified: Tue, 26 Mar 2019 23:48:38 GMT  
		Size: 221.4 MB (221359510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd49758efab0611984024160b8173ceb72c9e6009d0ebd5206d721a35cb34997`  
		Last Modified: Tue, 26 Mar 2019 23:48:04 GMT  
		Size: 3.5 MB (3540945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e878e792865409633be78941dd48a8969c2e2e0d35f77fd787e93947056d329e`  
		Last Modified: Tue, 26 Mar 2019 23:48:16 GMT  
		Size: 29.2 MB (29172574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3b9afd94f1136fa733ba743dc45cfa5e67b50bc8595bcc2163568cc9240e9e`  
		Last Modified: Wed, 24 Apr 2019 21:30:40 GMT  
		Size: 130.8 MB (130810562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e7a6213db5edfc053552192bf9cc513a91a3ded3dc5dae96262e5185f7283c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 617.5 KB (617519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd91dd6e77d89c6d062541a35355559e05be897dab9002c215dc26a9fbf3c44c`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e4ae84a583ab15746af108d0e13618d1c3f59881b64449003b47a9d467e3c5`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326116ca4a7f60cf45d8a55c4c1e5d51938a573c49352017c5f421f362b56ea`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5e043657e2abd6308d6ac8a0c3fd4e74009db0a68c32a1f4ac6cfda6801ef1`  
		Last Modified: Wed, 24 Apr 2019 21:29:47 GMT  
		Size: 128.0 B  
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
