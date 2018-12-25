## `gazebo:libgazebo9-stretch`

```console
$ docker pull gazebo@sha256:dc6eb01848bb28586f7b6aa9d114198ab36d1179444cfd0432eb4b3e688e7ba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `gazebo:libgazebo9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:de8789acd683a7ec1d17f9cfde76e2ac97b839d9d3984127434cfd5042ebd8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.0 MB (652014246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcacc306db9d3def91abf81d7f5045b028ba5cd69bc2ea675c97ad14a79c74b`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:46:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 00:46:40 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Mon, 24 Dec 2018 23:34:23 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Mon, 24 Dec 2018 23:34:23 GMT
EXPOSE 11345
# Mon, 24 Dec 2018 23:34:23 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Mon, 24 Dec 2018 23:34:24 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Mon, 24 Dec 2018 23:34:24 GMT
CMD ["gzserver"]
# Mon, 24 Dec 2018 23:36:08 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb77a096619ec9ca6d1222a5193efb98c37cef1f2b395993c22e1058e0d2cbff`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc66ec6426953182799856e18109e4e3fb651b63323a0bd2b7853af751c40bbe`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 5.0 KB (4987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6da5b5ca9b7f124d4df869623e96837e7784e64b6922bfde7d532294d0f010c0`  
		Last Modified: Mon, 24 Dec 2018 23:40:09 GMT  
		Size: 279.1 MB (279087047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c3adc8898b8e074efd7d4041422e7eb8209ec8077fb7dc790db59270151d4`  
		Last Modified: Mon, 24 Dec 2018 23:39:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8107f2f9412af9fee4d805a8c341c5c8869885adc4b7b68c5be461355935e4`  
		Last Modified: Mon, 24 Dec 2018 23:41:02 GMT  
		Size: 306.5 MB (306526976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm variant v7

```console
$ docker pull gazebo@sha256:97733ab02da3dbde2546480bfa763f4d67baa6c7c4808fe39c1cc2f80aaa7a66
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.6 MB (598601128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a8184ce7a30a8aa9d10d70b8ec8654bd1cb6ff18415b7ca26eaf984ffd164c`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Tue, 27 Nov 2018 12:59:08 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 12:59:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 12:59:15 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 13:06:47 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 13:06:49 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 13:06:50 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 13:06:50 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 13:06:51 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 13:09:46 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f91b3513e76659f7e80c78fcddf249633ef3705c81279a88bb3c67399b3decd`  
		Last Modified: Tue, 27 Nov 2018 13:14:33 GMT  
		Size: 19.5 MB (19543722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3284a500de9bcfef46a9273eaef8907952f0f9786bb9bf08bb2dd56fced2539b`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 1.4 KB (1420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba32d797633f081791f6a037965ca4dda268644751d75483a624fa2dd33ae34`  
		Last Modified: Tue, 27 Nov 2018 13:14:25 GMT  
		Size: 5.0 KB (5012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9a812e142a376a084e27e7933f3adfac467a1941c3ce7e82cfb11d3cc828db`  
		Last Modified: Tue, 25 Dec 2018 13:13:48 GMT  
		Size: 257.7 MB (257746256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccff19ea6823296d8bda184959de94cd039b1a8536dd4ae185d3fc2cb4cc357e`  
		Last Modified: Tue, 25 Dec 2018 13:12:41 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9065b1b120b40f27c10d489b9e4098de6a221b520cf7a3d770597f5a24c367d`  
		Last Modified: Tue, 25 Dec 2018 13:15:17 GMT  
		Size: 279.2 MB (279228391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:libgazebo9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:b5c5dfc821d2de8124c4b21cff3ca799b6df83bebbccb1bed8cb4133b6d4c2a2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.9 MB (585860846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9641a00643c44af0df1b0ea1d739de45d71040cd5976a2b748bf82694bcc5ab7`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 10:02:51 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 27 Nov 2018 10:02:57 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Tue, 25 Dec 2018 10:20:19 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 25 Dec 2018 10:20:26 GMT
EXPOSE 11345
# Tue, 25 Dec 2018 10:20:26 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Tue, 25 Dec 2018 10:20:27 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 25 Dec 2018 10:20:29 GMT
CMD ["gzserver"]
# Tue, 25 Dec 2018 10:33:37 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.6.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37552d18cd6e07626d82fe5fbd08a3c6d18471cde429a6897e0ae52150a1ef6`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 1.4 KB (1422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b54dbe83debf769be094a9d476cc7dc58b3d1e109d020ed2233ac876efaaf1`  
		Last Modified: Tue, 27 Nov 2018 10:25:58 GMT  
		Size: 5.0 KB (4989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47978ab10077d02db49db4b178e05a9d36cc7f936b80a15077a5b6114c742f39`  
		Last Modified: Tue, 25 Dec 2018 10:38:34 GMT  
		Size: 265.2 MB (265187722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3714e88379ff88e8bf239256c19a8b0625a7c394262ee387192c6861612000`  
		Last Modified: Tue, 25 Dec 2018 10:37:14 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92861c7a2ac5fb0c46c4dee378b36a8c638620b61e7cb7a1fa1b177bcd3e7441`  
		Last Modified: Tue, 25 Dec 2018 10:40:22 GMT  
		Size: 257.8 MB (257815514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
