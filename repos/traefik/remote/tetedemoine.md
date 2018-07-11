## `traefik:tetedemoine`

```console
$ docker pull traefik@sha256:1db43c3197df599092a56b8462ebdd1ccf6b7286a3159312f198bd409312f74e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `traefik:tetedemoine` - linux; amd64

```console
$ docker pull traefik@sha256:e65103d16ded975f0193c2357ccf1de13ebb5946894d91cf1c76ea23033d0476
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14888824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11569c00178041f0502a3251a2d33196c9a153c564814bc9f712c704a85200c2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Sat, 16 Jun 2018 06:01:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Tue, 10 Jul 2018 21:39:44 GMT
COPY file:ba6114281de19b8e363e82ed5b30471e264464b79049c538a86b7eae309ab46e in / 
# Tue, 10 Jul 2018 21:39:44 GMT
EXPOSE 80/tcp
# Tue, 10 Jul 2018 21:39:44 GMT
ENTRYPOINT ["/traefik"]
# Tue, 10 Jul 2018 21:39:44 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:03732cc4924a93fcbcbed879c4c63aad534a63a64e9919eceddf48d7602407b5`  
		Last Modified: Sat, 16 Jun 2018 06:03:25 GMT  
		Size: 155.2 KB (155150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6023e30b264079307436d6b5d179f0626dde61945e201ef70ab81993d5e7ee15`  
		Last Modified: Tue, 10 Jul 2018 21:40:34 GMT  
		Size: 14.7 MB (14733674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `traefik:tetedemoine` - linux; arm variant v6

```console
$ docker pull traefik@sha256:6cb42aa3a9df510b013db2cfc667f100fa54e728c3f78205f7d9f2b1030e30b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14269549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94276d023e180d5ce7d2f6ea7fedde4408b5fb1d091caa651dd3580338c40018`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 24 Oct 2017 23:48:27 GMT
COPY file:d8282341d1fb7d2cc3d5d3523d0d4126066cc1ba8abe3f0047a459b3a63a5653 in /etc/ssl/certs/ 
# Wed, 11 Jul 2018 08:14:05 GMT
COPY file:0f002d1dc12160ff0052e3979265fc542a8a7f6cafcc4d87880ca1762a2b96b0 in / 
# Wed, 11 Jul 2018 08:14:05 GMT
EXPOSE 80/tcp
# Wed, 11 Jul 2018 08:14:05 GMT
ENTRYPOINT ["/traefik"]
# Wed, 11 Jul 2018 08:14:05 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.6.5 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:8996ab8c9ae2c6afe7d318a3784c7ba1b1b72d4ae14cf515d4c1490aae91cab0`  
		Last Modified: Tue, 24 Oct 2017 23:48:35 GMT  
		Size: 155.2 KB (155184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee51eed0bc1f59a26e1d8065820c03f9d7b3239520690b71fea260dfd841fba1`  
		Last Modified: Wed, 11 Jul 2018 08:14:29 GMT  
		Size: 14.1 MB (14114365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
