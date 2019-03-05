## `buildpack-deps:oldstable-scm`

```console
$ docker pull buildpack-deps@sha256:1e146fa1acc540550f3abcf71c45cdb71d74d7e32f7b93ba3375898be4643636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldstable-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e44e1b248a6459be4e73655c9bed1b4547349769def6223238ce8857a0191169
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115230314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f2e3eba662e3720398f88ab5d6ec7b90ee7699cc63a84a421c19ec0a3a5060`
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
# Tue, 05 Mar 2019 02:28:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5b0b82b0156327d5318df3a19b56d0dbeb835ac75acb437341c939038d14fef0`  
		Last Modified: Tue, 05 Mar 2019 02:42:07 GMT  
		Size: 43.3 MB (43308912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:c7cafa48e6467bee4e0af868d3e2b1f6ccbbb5487bac9201be8a042485144eec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110746981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114da0f978ecbafe3495da3a80df7f8759b616c28b59d63e7bbadeb906d9ec13`
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
# Tue, 05 Mar 2019 10:26:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c33492dd1bc96627981766a377034926a2e5b7c333ab2a7091ff44a1eb8f7700`  
		Last Modified: Tue, 05 Mar 2019 10:41:01 GMT  
		Size: 41.1 MB (41147734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d9a597372850eb3f3ec464a6626a13ca3a1d9e0c6a4d46f7e94f95a087dff280
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.8 MB (106770878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9cd304d48e427910f934ccb3f916cc9f0a6fde0695e1f723c64519ab54e36e8`
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
# Tue, 05 Mar 2019 13:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c29c6cc6f67119a0ab0bdbfad640aefd9792667b37f35b4af8c8a02a589ea4af`  
		Last Modified: Tue, 05 Mar 2019 14:00:46 GMT  
		Size: 39.8 MB (39761422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldstable-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:cab823187d5c55ba0c713cc25fc675ed7ac4afd40ebda2284cad1be8c64c8020
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118398447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696be6ca501482ee177f9edd43b9fc8bb433ce4479ed4ae752852b1deb2afc36`
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
# Thu, 07 Feb 2019 01:41:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
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
	-	`sha256:5080d1b2ea8bf5eca40266f2495503d0e2f3c12389fed01088be0cef360df689`  
		Last Modified: Thu, 07 Feb 2019 02:01:08 GMT  
		Size: 44.0 MB (43951959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
