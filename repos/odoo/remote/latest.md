## `odoo:latest`

```console
$ docker pull odoo@sha256:0925ee08632bdbbfd70a3014d9c31ccd16f54027d26a87b1009da8947da9ce0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `odoo:latest` - linux; amd64

```console
$ docker pull odoo@sha256:f99fcab1dfb31bb247c6942fbeeb05468638369b9ebecbb126a9595fe5cddca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.2 MB (421223194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f4eed3dd7d1c05112527c52b44bac0894d380352e52ae68d2e2ab981a2b423`
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
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_VERSION=11.0
# Wed, 05 Sep 2018 01:06:12 GMT
ENV ODOO_RELEASE=20180808
# Wed, 05 Sep 2018 01:07:11 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Wed, 05 Sep 2018 01:07:15 GMT
RUN pip3 install num2words xlwt
# Wed, 05 Sep 2018 01:07:15 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Wed, 05 Sep 2018 01:07:16 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Wed, 05 Sep 2018 01:07:16 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Wed, 05 Sep 2018 01:07:17 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Wed, 05 Sep 2018 01:07:17 GMT
EXPOSE 8069/tcp 8071/tcp
# Wed, 05 Sep 2018 01:07:17 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Wed, 05 Sep 2018 01:07:17 GMT
USER [odoo]
# Wed, 05 Sep 2018 01:07:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 01:07:18 GMT
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
	-	`sha256:a2bfb5d8724d597c83f2ec417ccddf0595d8301160620d62f7cfeeb48211af71`  
		Last Modified: Wed, 05 Sep 2018 01:12:26 GMT  
		Size: 153.3 MB (153290676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eb141c83ff10ca6bcad03d8fb56b60592f91dbbdffbe22fc9367f6794a417`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 531.3 KB (531296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b4bb035ddd9fd788fb666dc1483de414cc9933bbb2800f1a46072635e24c11`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf59212822d1c984fb2aee4a33e5cc427be71c740edfafa8b0044b33056a95b`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e5d84f03153a89c287d029e565eb0e05dab276a802ab1619366a64ce608135`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019089ad41c29037db55d6039ace7c2d94b9a8480bf41ac439def4c67064998d`  
		Last Modified: Wed, 05 Sep 2018 01:11:53 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `odoo:latest` - linux; arm64 variant v8

```console
$ docker pull odoo@sha256:f034bd3d2677aaf740791675406d8ee50a8a3389b8198c810f659f930a7c2849
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.7 MB (414743679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3975efd4b9b76f0e397c7ff0aa8836f0064259aac8c3401063a0f0b62da51542`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["odoo"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Thu, 09 Aug 2018 08:59:36 GMT
MAINTAINER Odoo S.A. <info@odoo.com>
# Thu, 09 Aug 2018 08:59:37 GMT
ENV LANG=C.UTF-8
# Thu, 09 Aug 2018 09:01:24 GMT
RUN set -x;         apt-get update         && apt-get install -y --no-install-recommends             ca-certificates             curl             node-less             python3-pip             python3-setuptools             python3-renderpm             libssl1.0-dev             xz-utils             python3-watchdog         && curl -o wkhtmltox.tar.xz -SL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz         && echo '3f923f425d345940089e44c1466f6408b9619562 wkhtmltox.tar.xz' | sha1sum -c -         && tar xvf wkhtmltox.tar.xz         && cp wkhtmltox/lib/* /usr/local/lib/         && cp wkhtmltox/bin/* /usr/local/bin/         && cp -r wkhtmltox/share/man/man1 /usr/local/share/man/
# Thu, 09 Aug 2018 09:01:26 GMT
ENV ODOO_VERSION=11.0
# Thu, 09 Aug 2018 09:01:26 GMT
ENV ODOO_RELEASE=20180808
# Thu, 09 Aug 2018 09:06:22 GMT
RUN set -x;         curl -o odoo.deb -SL http://nightly.odoo.com/${ODOO_VERSION}/nightly/deb/odoo_${ODOO_VERSION}.${ODOO_RELEASE}_all.deb         && echo 'a48d588b76fd642ac9e1af63a38e4d87ee20531a odoo.deb' | sha1sum -c -         && dpkg --force-depends -i odoo.deb         && apt-get update         && apt-get -y install -f --no-install-recommends         && rm -rf /var/lib/apt/lists/* odoo.deb
# Thu, 09 Aug 2018 09:06:44 GMT
RUN pip3 install num2words xlwt
# Thu, 09 Aug 2018 09:06:45 GMT
COPY file:33fddeba88e5214ff2c7cd05a02348dc417a5de70b767d6ff559e871ee6d046a in / 
# Thu, 09 Aug 2018 09:06:46 GMT
COPY file:db43c8e34bfc1a07c1c22547437af17629fbadb6633084c02cbfc0bb6069c9fd in /etc/odoo/ 
# Thu, 09 Aug 2018 09:06:48 GMT
RUN chown odoo /etc/odoo/odoo.conf
# Thu, 09 Aug 2018 09:06:50 GMT
RUN mkdir -p /mnt/extra-addons         && chown -R odoo /mnt/extra-addons
# Thu, 09 Aug 2018 09:06:51 GMT
VOLUME [/var/lib/odoo /mnt/extra-addons]
# Thu, 09 Aug 2018 09:06:52 GMT
EXPOSE 8069/tcp 8071/tcp
# Thu, 09 Aug 2018 09:06:53 GMT
ENV ODOO_RC=/etc/odoo/odoo.conf
# Thu, 09 Aug 2018 09:06:54 GMT
USER [odoo]
# Thu, 09 Aug 2018 09:06:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 09 Aug 2018 09:06:56 GMT
CMD ["odoo"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e0da06c19bf33dcbacf21bf8aa84c60f3181cf473a8d62c2ca25369fa478c0`  
		Last Modified: Thu, 09 Aug 2018 09:08:45 GMT  
		Size: 219.4 MB (219402237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f481b63528d3be86e44e895894b5fc369a640b588a8540c18d90d0a93e1152`  
		Last Modified: Thu, 09 Aug 2018 09:08:47 GMT  
		Size: 151.7 MB (151684762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f25bf7da5961f606439b412a9c7de3549d20c48c1a694013121eec325e6be866`  
		Last Modified: Thu, 09 Aug 2018 09:07:29 GMT  
		Size: 531.3 KB (531279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8aea92fe18232caaef5bb7e260e640ff1e8d5215351492bd88c197ce53ab296`  
		Last Modified: Thu, 09 Aug 2018 09:07:29 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125cf499fef1ba829691c55f3f3963518f07dd52c04b85bcf7a5e5e9f2f5ac78`  
		Last Modified: Thu, 09 Aug 2018 09:07:30 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15124307621081e63430f5e0651f17c137e7c41de421179306466a77997fdc4`  
		Last Modified: Thu, 09 Aug 2018 09:07:29 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9974c21d6c36270cdbd1b2c6da90804c87371904a412c67b35c375edd538ce8`  
		Last Modified: Thu, 09 Aug 2018 09:07:29 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
