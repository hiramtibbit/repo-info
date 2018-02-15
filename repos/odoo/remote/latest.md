## `odoo:latest`

```console
$ docker pull odoo@sha256:88b85c3a92d3bb4d54caa72cc54a7f0ed4aa73c04331956f2900b3a558ac2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:62f03800a3ee442247d72c01c1ed44ab0db5fd29191a09e807ba5b41e0572d66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414650620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0918ac36491878b38149028a8e4d3b831a883b3c25aeeccb9c6c0799813214c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 05:31:09 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Thu, 15 Feb 2018 05:31:10 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 05:31:43 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_VERSION=11.0
# Thu, 15 Feb 2018 05:31:44 GMT
ENV ODOO_RELEASE=20180122
# Thu, 15 Feb 2018 05:33:30 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo '56f61789bc655aaa2c014a3c5f63d80805408359 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 15 Feb 2018 05:47:32 GMT
RUN pip3 install num2words xlwt
# Thu, 15 Feb 2018 05:48:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 15 Feb 2018 05:48:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 15 Feb 2018 05:48:17 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 15 Feb 2018 05:48:29 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 15 Feb 2018 05:48:29 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 15 Feb 2018 05:48:30 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 15 Feb 2018 05:48:30 GMT
USER [odoo]
# Thu, 15 Feb 2018 05:48:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 05:48:30 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f57eb3a9087678ab5b41ece88387e4118ba54c59796465906304c3d344cc4e`  
		Last Modified: Thu, 15 Feb 2018 05:49:42 GMT  
		Size: 221.5 MB (221475348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c115b53817cfd6011d46adb10f14ae133ba0e0b51dcb15ad0465dc33cf593f7b`  
		Last Modified: Thu, 15 Feb 2018 05:49:59 GMT  
		Size: 147.6 MB (147578536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e826e57202c31d7d72b78a8cd7e87f10b9d1a63604e97f1908401715cd7be312`  
		Last Modified: Thu, 15 Feb 2018 05:49:01 GMT  
		Size: 462.3 KB (462280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4846483e36e960b6075ebfc6024c11665df526df88029375e576263c570f67e`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723867db3cc467a1154d45f1bfd064b62a4f9398e45c49d4be70d5be65169eb0`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ec2dc01a740ba6eca3e60eba27dac2a87ccf3997186ae9cfa05cc665d097bb8`  
		Last Modified: Thu, 15 Feb 2018 05:48:59 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfe8299d5501d9fd3417af60fb9a496e1ee3f10d09100a70e7172c77b80872d`  
		Last Modified: Thu, 15 Feb 2018 05:48:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
