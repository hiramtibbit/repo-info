## `gazebo:gzserver9-stretch`

```console
$ docker pull gazebo@sha256:782cbbf4573a814068f5f99eb4b0f646f163d6a3d74c50056d72033f72418c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `gazebo:gzserver9-stretch` - linux; amd64

```console
$ docker pull gazebo@sha256:3de3ff59f5eb864ebb585fa49a92fccc638c46884150190569853ff5f7dedd21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.4 MB (345440516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf91342d6ed6ed6c0bd825375322fd17687ec2c249d5c338d258cd244285685f`
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
# Tue, 27 Nov 2018 00:48:44 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 00:48:45 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 00:48:46 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 00:48:46 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 00:48:46 GMT
CMD ["gzserver"]
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
	-	`sha256:f7bcc211765a65adb73e66a825e9a50c70f36a43cff7475bc398277826c8eea7`  
		Last Modified: Tue, 27 Nov 2018 01:01:11 GMT  
		Size: 279.0 MB (279040295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d1abe4aabb53e530dd2f0dba25cdb7c0afa42b114fb0342b1ac0c74904a2f4`  
		Last Modified: Tue, 27 Nov 2018 01:00:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gazebo:gzserver9-stretch` - linux; arm64 variant v8

```console
$ docker pull gazebo@sha256:e1141a72c88a373cc5612b9fb938b9ab2d3c74562159f8254fec436d07a78b64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (328023659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad404c8a8e456fcfa47212e712b9d5e8d123b3ae46050c129fc18aa24b9c35e`
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
# Tue, 27 Nov 2018 10:12:11 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.5.0-1*     && rm -rf /var/lib/apt/lists/*
# Tue, 27 Nov 2018 10:12:13 GMT
EXPOSE 11345/tcp
# Tue, 27 Nov 2018 10:12:14 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Tue, 27 Nov 2018 10:12:15 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Tue, 27 Nov 2018 10:12:16 GMT
CMD ["gzserver"]
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
	-	`sha256:f1483983f083295c6536dae0c4be99b9c35e1ff04ed82e2236611b4187cd0cd1`  
		Last Modified: Tue, 27 Nov 2018 10:27:18 GMT  
		Size: 265.2 MB (265166050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5594425e594971162f423946e972b707c8f46f08bb13da35c31d24b89d986a`  
		Last Modified: Tue, 27 Nov 2018 10:25:59 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
