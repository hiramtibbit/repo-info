## `buildpack-deps:wheezy-curl`

```console
$ docker pull buildpack-deps@sha256:e894f872834d3b79feb106dd107a7f270664bb299b3d0773d5c86bdba4fe86db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a977b38a877d7fe0b27ec1f34a48679b072a6eb5724f14bcd53e66ff38be536e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44971000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16fead871fa0b13c2c1257a2e059b437609fa0e457ca84c11803dca361a76a91`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:07:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855e7e887fc3936c53aeab7a5265498c92d2cb496a1bac70dab7a4e7e4912bf`  
		Last Modified: Tue, 22 Jan 2019 20:14:21 GMT  
		Size: 5.6 MB (5631099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:70371c816057bd7445360b6befcbb61edfe3d2e742986701c998a9519d05b2e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43467192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5dd5fede8b8e18c1609a730ab53ca8e98901e3bcc50d57dd4b4ee4dbcbe73d6`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:36:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:36:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1dfee93bb9c051c7f471b5ca0ecb702dae9db3b59df8960dca6109967e6f19`  
		Last Modified: Sat, 29 Dec 2018 10:45:33 GMT  
		Size: 5.5 MB (5474987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:cc28d11fd2c9025d067f19e0893d25e20dbe4234e7cc6ab644c5981435bf7f41
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.9 MB (41942057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a42c9f19a9d4dafe564a2b325c720b3bae55063765838bee65ee1a445ac751`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:50:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:50:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859b3768bee8e8f8e079527825ec2cbf646027c204e6c71f75d5e1817b7f23a5`  
		Last Modified: Sat, 29 Dec 2018 14:06:59 GMT  
		Size: 5.3 MB (5322076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:2d9900e06fa20062107039b90fe9521fc2ea09e100fa14da8e285300aadf4912
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46150064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a46fd5abb3afc7e7e9daa04a26f509c9f8402d3e6f2836f4aed6924395e10e`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:08:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d5eaf1ffaee1d8bf605f28faf5cb35f054e078e245bc8e15e4bbeb929c9e14`  
		Last Modified: Sat, 29 Dec 2018 13:32:09 GMT  
		Size: 5.6 MB (5617223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
