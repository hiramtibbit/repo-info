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
$ docker pull odoo@sha256:b053a658f05b8c5b87dac4fd30360d6ec7a4dd90e45166da23c429d83588a5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10` - linux; amd64

```console
$ docker pull odoo@sha256:6fb88f9cda120c1002b95a34aef9e1e0d5b74084f0839d768841cd8069c1af92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277479810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cdf09f068cb04ace9743bc7ab41b5186605929064c8977effb6cb5c4715b47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:25:25 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:26:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Mar 2018 08:44:03 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Mar 2018 08:44:04 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:45:22 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:45:23 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Mar 2018 08:45:23 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 14 Mar 2018 08:45:24 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:45:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:45:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:45:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:45:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:45:25 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:45:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:45:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eefe7ebabd8c7de11b3f8421d819b543d01eb14bb1d979e0a649091df5dbf4`  
		Last Modified: Wed, 14 Mar 2018 09:05:26 GMT  
		Size: 88.7 MB (88739349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d391925685f06c48416be1dcdcef068f5165bb6e523a32855f363e1dbe11f2`  
		Last Modified: Wed, 14 Mar 2018 09:13:18 GMT  
		Size: 136.1 MB (136130060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5153654eb6e847208d5321e1b8877ce2f5e7f238c15386f568ee8c2ea1e49e0a`  
		Last Modified: Wed, 14 Mar 2018 09:12:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeecc7e649f5e235a48f1a656c3db723d068d3d36c84c91d59db61651414d36`  
		Last Modified: Wed, 14 Mar 2018 09:12:30 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f249f9d1bef31d6c4c31c9e81acb53923ae1c146a5b8d355333834002e87046`  
		Last Modified: Wed, 14 Mar 2018 09:12:30 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418be8dbfb2ff2564dbc8229c904035d99c45965a5be2258a6377a5e4b185ff5`  
		Last Modified: Wed, 14 Mar 2018 09:12:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:10.0`

```console
$ docker pull odoo@sha256:b053a658f05b8c5b87dac4fd30360d6ec7a4dd90e45166da23c429d83588a5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:10.0` - linux; amd64

```console
$ docker pull odoo@sha256:6fb88f9cda120c1002b95a34aef9e1e0d5b74084f0839d768841cd8069c1af92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.5 MB (277479810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cdf09f068cb04ace9743bc7ab41b5186605929064c8977effb6cb5c4715b47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:25:25 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:26:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Mar 2018 08:44:03 GMT
ENV ODOO_VERSION=10.0
# Wed, 14 Mar 2018 08:44:04 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:45:22 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '836f0fb94aee0d3771cf2188309f6079ee35f83e odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:45:23 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Mar 2018 08:45:23 GMT
COPY file:18e3dbead2bc096fe44ef1cfaa2a6e8dc1b27daeeb1d281cfdd552b805f2e767 in /etc/odoo/ 
# Wed, 14 Mar 2018 08:45:24 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:45:24 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:45:25 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:45:25 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:45:25 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:45:25 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:45:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:45:26 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eefe7ebabd8c7de11b3f8421d819b543d01eb14bb1d979e0a649091df5dbf4`  
		Last Modified: Wed, 14 Mar 2018 09:05:26 GMT  
		Size: 88.7 MB (88739349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d391925685f06c48416be1dcdcef068f5165bb6e523a32855f363e1dbe11f2`  
		Last Modified: Wed, 14 Mar 2018 09:13:18 GMT  
		Size: 136.1 MB (136130060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5153654eb6e847208d5321e1b8877ce2f5e7f238c15386f568ee8c2ea1e49e0a`  
		Last Modified: Wed, 14 Mar 2018 09:12:29 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeecc7e649f5e235a48f1a656c3db723d068d3d36c84c91d59db61651414d36`  
		Last Modified: Wed, 14 Mar 2018 09:12:30 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f249f9d1bef31d6c4c31c9e81acb53923ae1c146a5b8d355333834002e87046`  
		Last Modified: Wed, 14 Mar 2018 09:12:30 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418be8dbfb2ff2564dbc8229c904035d99c45965a5be2258a6377a5e4b185ff5`  
		Last Modified: Wed, 14 Mar 2018 09:12:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11`

```console
$ docker pull odoo@sha256:ac26773a69ed97cea0d48ac407567f6ea920fae5315296ea92518642e11facf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11` - linux; amd64

```console
$ docker pull odoo@sha256:d998d02981ccc55282b12a6804b99fbb0d1ef12014211981652195b637058ecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414715049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5619fb027cfd867da0e90f87c1e9f5658e0ae8fd50abcba2a26b345a6bfb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:46:03 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:46:03 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 08:46:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 14 Mar 2018 08:46:34 GMT
ENV ODOO_VERSION=11.0
# Wed, 14 Mar 2018 08:46:35 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:48:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:48:05 GMT
RUN pip3 install num2words xlwt
# Wed, 14 Mar 2018 08:48:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Mar 2018 08:48:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 14 Mar 2018 08:48:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:48:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:48:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:48:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:08 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:48:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6f980695bb9dfa1de664d408e3dfdcd300c3086ae8cd20b25c34fe02e8f8c4`  
		Last Modified: Wed, 14 Mar 2018 09:14:34 GMT  
		Size: 221.5 MB (221537124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73e0e7a3b918689a658437330ac41a78078778c90d09ce357a246ad28f6e438`  
		Last Modified: Wed, 14 Mar 2018 09:14:53 GMT  
		Size: 147.6 MB (147578733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5afc2f80aad92600eda26c8ed1b2f013900ee475ed1c5fc12b4348e1dc08e75`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 462.3 KB (462278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bd5f10d197bfee5ffd9465e26e1d5b24fc3b80fcdfa44bc31329b61ba1a85b`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b1fcea1db450544201546d0a36026e25be2d8c3a4f26d99b1dcf0a23f4cdd`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9bd876a976dd0ef5c00c43ea24d8c9b22719b7d0fdb289b4cba6bcb5b2419`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db29c30f1033b502f0b58534f3a35f9ecdfed9bf192d8df3c1f1955dc85dd812`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:11.0`

```console
$ docker pull odoo@sha256:ac26773a69ed97cea0d48ac407567f6ea920fae5315296ea92518642e11facf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:11.0` - linux; amd64

```console
$ docker pull odoo@sha256:d998d02981ccc55282b12a6804b99fbb0d1ef12014211981652195b637058ecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414715049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5619fb027cfd867da0e90f87c1e9f5658e0ae8fd50abcba2a26b345a6bfb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:46:03 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:46:03 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 08:46:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 14 Mar 2018 08:46:34 GMT
ENV ODOO_VERSION=11.0
# Wed, 14 Mar 2018 08:46:35 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:48:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:48:05 GMT
RUN pip3 install num2words xlwt
# Wed, 14 Mar 2018 08:48:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Mar 2018 08:48:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 14 Mar 2018 08:48:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:48:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:48:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:48:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:08 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:48:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6f980695bb9dfa1de664d408e3dfdcd300c3086ae8cd20b25c34fe02e8f8c4`  
		Last Modified: Wed, 14 Mar 2018 09:14:34 GMT  
		Size: 221.5 MB (221537124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73e0e7a3b918689a658437330ac41a78078778c90d09ce357a246ad28f6e438`  
		Last Modified: Wed, 14 Mar 2018 09:14:53 GMT  
		Size: 147.6 MB (147578733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5afc2f80aad92600eda26c8ed1b2f013900ee475ed1c5fc12b4348e1dc08e75`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 462.3 KB (462278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bd5f10d197bfee5ffd9465e26e1d5b24fc3b80fcdfa44bc31329b61ba1a85b`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b1fcea1db450544201546d0a36026e25be2d8c3a4f26d99b1dcf0a23f4cdd`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9bd876a976dd0ef5c00c43ea24d8c9b22719b7d0fdb289b4cba6bcb5b2419`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db29c30f1033b502f0b58534f3a35f9ecdfed9bf192d8df3c1f1955dc85dd812`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9`

```console
$ docker pull odoo@sha256:42be2e1b475df89b567ae17aa69e7127cc381e6eb0ded18e73294eab2a898478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9` - linux; amd64

```console
$ docker pull odoo@sha256:b0bd98b2e7063e3288558c47514a28db986c8fc026802d9c5d29ae7540c4575c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289918208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8307ad1bb5941d9e1dff9ec74492c6d0de1ad44b354d60c79b65c08252ef441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:25:25 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:26:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Mar 2018 08:26:34 GMT
ENV ODOO_VERSION=9.0
# Wed, 14 Mar 2018 08:26:34 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:27:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:27:57 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Mar 2018 08:27:57 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 14 Mar 2018 08:27:58 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Mar 2018 08:27:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:27:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:27:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:27:59 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Mar 2018 08:27:59 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:28:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:28:00 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eefe7ebabd8c7de11b3f8421d819b543d01eb14bb1d979e0a649091df5dbf4`  
		Last Modified: Wed, 14 Mar 2018 09:05:26 GMT  
		Size: 88.7 MB (88739349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cbca015a209f2695ea47611f1b3e35ad226f709c6fc3e861cf08f7627863d3`  
		Last Modified: Wed, 14 Mar 2018 09:06:05 GMT  
		Size: 148.6 MB (148568427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88779b0d228461d0d75a2e2d28df7b381e69a0f4e8a3ea3019048f65eb765c44`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a727bb1dc539ea515ba9646824d62065342fd2edecdf1e0312c17e8b8f1623`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e9d967c72149b891d8947b7b568fc8304275a1ccf46a3560f3ee51079691f1`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b1d30f25a10558a2606e691a1b9ba8102d9ff2398e8816237dd2ff99618164`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:9.0`

```console
$ docker pull odoo@sha256:42be2e1b475df89b567ae17aa69e7127cc381e6eb0ded18e73294eab2a898478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:9.0` - linux; amd64

```console
$ docker pull odoo@sha256:b0bd98b2e7063e3288558c47514a28db986c8fc026802d9c5d29ae7540c4575c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.9 MB (289918208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8307ad1bb5941d9e1dff9ec74492c6d0de1ad44b354d60c79b65c08252ef441`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["openerp-server"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:25:25 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:26:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python-gevent             python-pip             python-renderpm             python-support             python-watchdog         && curl -o wkhtmltox.deb -SL http://nightly.odoo.com/extra/wkhtmltox-0.12.1.2_linux-jessie-amd64.deb         && echo '40e8b906de658a2221b15e4e8cd82565a47d7ee8 wkhtmltox.deb' | sha1sum -c -         && dpkg --force-depends -i wkhtmltox.deb         && apt-get -y install -f --no-install-recommends         && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false npm         && rm -rf /var/lib/apt/lists/* wkhtmltox.deb         && pip install psycogreen==1.0
# Wed, 14 Mar 2018 08:26:34 GMT
ENV ODOO_VERSION=9.0
# Wed, 14 Mar 2018 08:26:34 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:27:56 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}c.${ODOO_RELEASE}_all.deb         && echo 'a623d188d48f08ce8bb8898355eccc5e5e7e5b04 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:27:57 GMT
COPY file:b514c2e8f66799bc707e194d35e0ef442ee72b46668e42cdfee105b6445d7eb0 in / 
# Wed, 14 Mar 2018 08:27:57 GMT
COPY file:5bf1f863cb98f8aeeac8f1a8430f1af56358cee4a6e5ade3b2c00fb3fc8d4162 in /etc/odoo/ 
# Wed, 14 Mar 2018 08:27:58 GMT
RUN chown odoo /etc/odoo/openerp-server.conf
# Wed, 14 Mar 2018 08:27:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:27:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:27:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:27:59 GMT
ENV OPENERP_SERVER=/etc/odoo/openerp-server.conf
# Wed, 14 Mar 2018 08:27:59 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:28:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:28:00 GMT
CMD ["openerp-server"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eefe7ebabd8c7de11b3f8421d819b543d01eb14bb1d979e0a649091df5dbf4`  
		Last Modified: Wed, 14 Mar 2018 09:05:26 GMT  
		Size: 88.7 MB (88739349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cbca015a209f2695ea47611f1b3e35ad226f709c6fc3e861cf08f7627863d3`  
		Last Modified: Wed, 14 Mar 2018 09:06:05 GMT  
		Size: 148.6 MB (148568427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88779b0d228461d0d75a2e2d28df7b381e69a0f4e8a3ea3019048f65eb765c44`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a727bb1dc539ea515ba9646824d62065342fd2edecdf1e0312c17e8b8f1623`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 585.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00e9d967c72149b891d8947b7b568fc8304275a1ccf46a3560f3ee51079691f1`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 589.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b1d30f25a10558a2606e691a1b9ba8102d9ff2398e8816237dd2ff99618164`  
		Last Modified: Wed, 14 Mar 2018 09:05:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `odoo:latest`

```console
$ docker pull odoo@sha256:ac26773a69ed97cea0d48ac407567f6ea920fae5315296ea92518642e11facf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:d998d02981ccc55282b12a6804b99fbb0d1ef12014211981652195b637058ecd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414715049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb5619fb027cfd867da0e90f87c1e9f5658e0ae8fd50abcba2a26b345a6bfb04`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 08:46:03 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 14 Mar 2018 08:46:03 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 08:46:34 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Wed, 14 Mar 2018 08:46:34 GMT
ENV ODOO_VERSION=11.0
# Wed, 14 Mar 2018 08:46:35 GMT
ENV ODOO_RELEASE=20180122
# Wed, 14 Mar 2018 08:48:01 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 14 Mar 2018 08:48:05 GMT
RUN pip3 install num2words xlwt
# Wed, 14 Mar 2018 08:48:05 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 14 Mar 2018 08:48:06 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 14 Mar 2018 08:48:06 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:07 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 14 Mar 2018 08:48:07 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 14 Mar 2018 08:48:08 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 14 Mar 2018 08:48:08 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 14 Mar 2018 08:48:08 GMT
USER [odoo]
# Wed, 14 Mar 2018 08:48:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 08:48:09 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a6f980695bb9dfa1de664d408e3dfdcd300c3086ae8cd20b25c34fe02e8f8c4`  
		Last Modified: Wed, 14 Mar 2018 09:14:34 GMT  
		Size: 221.5 MB (221537124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b73e0e7a3b918689a658437330ac41a78078778c90d09ce357a246ad28f6e438`  
		Last Modified: Wed, 14 Mar 2018 09:14:53 GMT  
		Size: 147.6 MB (147578733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5afc2f80aad92600eda26c8ed1b2f013900ee475ed1c5fc12b4348e1dc08e75`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 462.3 KB (462278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8bd5f10d197bfee5ffd9465e26e1d5b24fc3b80fcdfa44bc31329b61ba1a85b`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b1fcea1db450544201546d0a36026e25be2d8c3a4f26d99b1dcf0a23f4cdd`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed9bd876a976dd0ef5c00c43ea24d8c9b22719b7d0fdb289b4cba6bcb5b2419`  
		Last Modified: Wed, 14 Mar 2018 09:13:57 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db29c30f1033b502f0b58534f3a35f9ecdfed9bf192d8df3c1f1955dc85dd812`  
		Last Modified: Wed, 14 Mar 2018 09:13:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
