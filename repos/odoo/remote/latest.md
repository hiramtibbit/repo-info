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
