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
