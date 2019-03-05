## `buildpack-deps:oldstable-curl`

```console
$ docker pull buildpack-deps@sha256:832e07f822573b150730d62c5aac4c7b8985e86d54715975a48e9fd38ac0be82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldstable-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:ee27f1fd4acc5e6dfe10bc5fbbf29a39f9f10ea740d1a42f8d5a8cf8a0afc392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71921402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b06323aef892dbf375e086fe9de3f5a31373150e8086a02d079217c5d3d1740`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:26:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:26:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aca5925aec20fece01837f6f93c55c62c38dfba443d19404e7be3a37f3bdf85`  
		Last Modified: Tue, 05 Mar 2019 02:41:52 GMT  
		Size: 17.5 MB (17539744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c2d4980276a409e9eefb1a2ed4f0708a017c7c3dc3c4c976e349d748865534f0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.6 MB (69599247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb2e4a679901a30ee297fe532de2b88334cd77642950e5de62f7e2fac8b0f0f`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:50:03 GMT
ADD file:66cba1ce0f57ac1885e087b1deba2b541e37c4eaf6eacf3f6677cb41af388c87 in / 
# Tue, 05 Mar 2019 09:50:05 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:b7c40827a2a74bdfea27defa43e5568bacb59e6f9773735453da8b888b31d953`  
		Last Modified: Tue, 05 Mar 2019 09:59:19 GMT  
		Size: 52.6 MB (52568284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf75e00cc6a814dff9dda90a02a717aaff0d1ff8982516e907a703574296a1e`  
		Last Modified: Tue, 05 Mar 2019 10:40:38 GMT  
		Size: 17.0 MB (17030963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d40058b4dccce23efee0be4bc680ad97b55c84ade951495d1e7852ce3ab4739c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67009456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e41d37a28e8e87440bf62526f396bcc1c033a883b73e596e6e58246f2a1dbc23`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:05:29 GMT
ADD file:57888dd979a80adc65c1fdc390ca77df7dbb7549c7ce655276ef11f54284319a in / 
# Tue, 05 Mar 2019 13:05:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:40:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:27fb1932f7b947e1aae56957f613528117f9be31e33b703972bcca01326c7045`  
		Last Modified: Tue, 05 Mar 2019 13:15:24 GMT  
		Size: 50.3 MB (50293558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6fb81616fd7699aa8083e0f181a045340e3b72ce596c8e46aafee6cc994cc6`  
		Last Modified: Tue, 05 Mar 2019 14:00:26 GMT  
		Size: 16.7 MB (16715898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d99fa08c7a9a739360a38091cf5cab72feb36f78fd3b0737ee8223cda3edb875
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74446488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f62aa25f97b80a810c2c55ad1fddbdf3b429586feaf4457e5aa51815aecd304`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:37:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f8a1642cca50fb512e186f15c61d2abd8bcf91ea3f8de5b6f58faa9de847ac`  
		Last Modified: Thu, 07 Feb 2019 02:00:51 GMT  
		Size: 19.8 MB (19846893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
