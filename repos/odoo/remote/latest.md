## `odoo:latest`

```console
$ docker pull odoo@sha256:0e050fde9ca8b8ba5d92e7382d350e82faad8d8a554e8a1fd8f7ee0796e465d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:3023176442254d1dade6bcfa3ec802978c842dc96eea0cadacbd1ee82cab1dfb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.4 MB (400359628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fa47cf206bc2ff7c9a08e87ecc37b1e0e26923ead3e48f48dcca87aa7e6ed98`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:05:47 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 01:05:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:06:12 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 04 Oct 2018 18:19:48 GMT
ENV ODOO_VERSION=12.0
# Mon, 08 Oct 2018 23:29:16 GMT
ENV ODOO_RELEASE=20181008
# Mon, 08 Oct 2018 23:30:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Mon, 08 Oct 2018 23:30:23 GMT
RUN pip3 install num2words xlwt
# Mon, 08 Oct 2018 23:30:27 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Mon, 08 Oct 2018 23:30:28 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Mon, 08 Oct 2018 23:30:28 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:29 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Mon, 08 Oct 2018 23:30:36 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Mon, 08 Oct 2018 23:30:36 GMT
EXPOSE 8069/tcp 8071/tcp
# Mon, 08 Oct 2018 23:30:36 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Mon, 08 Oct 2018 23:30:36 GMT
USER [odoo]
# Mon, 08 Oct 2018 23:30:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:30:37 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a3e5f892cbad84db406968c3b58a734cbd83ddb774811d7dcd889a46c71dfe`  
		Last Modified: Wed, 05 Sep 2018 01:12:30 GMT  
		Size: 222.1 MB (222089324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3ba02f584a801389f8772c46676cbb8db7cf0b96c347b151b8ac72ef85bc41`  
		Last Modified: Mon, 08 Oct 2018 23:34:10 GMT  
		Size: 132.4 MB (132427139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405853b67e93ab86487a7045504c8c3e0757cff3c24e4fd95342e78673f31d23`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 531.3 KB (531269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501dd141170c71191272954db3235b1de8e45fc4ede9041a173d5c54c5b418fa`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e1aeec802cd31b29532492a3e5ab24125010a6ab1affa06bae574eb7a7c2d28`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1346d0907e53228e9565ae53fa7180ad59fcde5716f822c8a31ad7132e724598`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb0375692f06a474365f742af6852098c227d55ddab45a073225fc4ca6e05b`  
		Last Modified: Mon, 08 Oct 2018 23:33:45 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:72952c7adb5bce9c3979b1faf36f3b8185b130b2b56e9099edbeef39eb472e35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (393987066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87de0a2769dd52d629d6a56e44b7e082c40907c5240b5859d6ba8308a7aaaf25`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:16:07 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Wed, 05 Sep 2018 12:16:08 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:17:45 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Fri, 05 Oct 2018 09:09:01 GMT
ENV ODOO_VERSION=12.0
# Tue, 09 Oct 2018 08:51:31 GMT
ENV ODOO_RELEASE=20181008
# Tue, 09 Oct 2018 08:55:15 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'caedca66b655268f2f0fb8d2661593dabbf46b88 odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Tue, 09 Oct 2018 08:55:37 GMT
RUN pip3 install num2words xlwt
# Tue, 09 Oct 2018 08:55:44 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Tue, 09 Oct 2018 08:55:45 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Tue, 09 Oct 2018 08:55:46 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:55:58 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Tue, 09 Oct 2018 08:55:59 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Tue, 09 Oct 2018 08:55:59 GMT
EXPOSE 8069/tcp 8071/tcp
# Tue, 09 Oct 2018 08:56:00 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Tue, 09 Oct 2018 08:56:01 GMT
USER [odoo]
# Tue, 09 Oct 2018 08:56:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 09 Oct 2018 08:56:03 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e8a4d458843da11ee1eb25ae26afa96663eb7a58bc53811c085e47c2c40dea`  
		Last Modified: Wed, 05 Sep 2018 12:23:42 GMT  
		Size: 219.4 MB (219417745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ecb491b6e36740db12f6aed000c39a2d40b511e19fc0878c221913ca0a5725`  
		Last Modified: Tue, 09 Oct 2018 09:01:40 GMT  
		Size: 130.9 MB (130912568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c7badae181688c4e03eb20434dce5e12fbe6367d0cff4bf0f84871ef9ff102`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 531.3 KB (531300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6584b2e951d677b589c124ada8bfaafd293b8d4e7f287735473e869993c03a7`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 599.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38563e78d6d5c50b787011ee029e6342191a6989779af847aee141f09bf3ccbd`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac2bfc83771c31f3aaaf86622503b9d8005e1ae95c66429ab69790a54fe5a15`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3526def363b8ede320d8a01566b589ef4504269625f74c19a3de18f817fedb76`  
		Last Modified: Tue, 09 Oct 2018 09:00:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
