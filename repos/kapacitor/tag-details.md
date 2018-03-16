<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.3`](#kapacitor133)
-	[`kapacitor:1.3.3-alpine`](#kapacitor133-alpine)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:85dcea14b07b0bf9d6071d2a28dfa6d9352aede06f6b010bfc51cae750df6949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:812ba1300fbd07d0505e0a4de0ff4f70d40ed35ae12f08591a6d00d438f47f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a1849f1565ef7ba5c61b025ff5c89fcd17793a128a2577f87af9bfd34ffc44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:32:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 07:32:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 07:32:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 07:32:31 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 07:32:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 07:32:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 07:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:32:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f2907488895c87cdd9145924f6d3af72e3f34a01566ecb44b48fae48ab22d`  
		Last Modified: Thu, 15 Mar 2018 07:33:33 GMT  
		Size: 20.7 MB (20732439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e9d8a835b9067067f22d1cc53ac1d588c3e5b92371f9507959ca37b583e0e`  
		Last Modified: Thu, 15 Mar 2018 07:33:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb4fca3859da0436d54ab3bb46cea27a654a9050455e1b98a9ed7bb89416cc`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:fa678efe018ac6f9c40481090ebdc5fcd520d078906e15ef7d3586850b996c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87638654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bb790807ad59c53b1f8666337384f802dca6c0ef546261b02e2b2d1773a6ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:13:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 14 Mar 2018 16:13:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:13:47 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Mar 2018 16:13:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:13:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Mar 2018 16:13:53 GMT
EXPOSE 9092/tcp
# Wed, 14 Mar 2018 16:13:54 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Mar 2018 16:13:54 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Mar 2018 16:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:13:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4b0169e5020c8bb416b38fcc5919968e82905df89b8eaf0f47a1737948f55e`  
		Last Modified: Wed, 14 Mar 2018 16:14:36 GMT  
		Size: 13.0 MB (13032997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca374b7d8e1c8c3f00186afc3bf0aeeeaab77c8d8d5c65cea51d5d40a58e9cf`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb52568602c3bebeb75fea12309ca95b949aa3a58fc9308a96f5da89f0017d4`  
		Last Modified: Wed, 14 Mar 2018 16:14:42 GMT  
		Size: 19.0 MB (19007415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0eaea5cffec653ccce011d2f9b3116c5dd7768341fe6a4dde81d81a2d95d863`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0fed956d140a60511ab8c380f0451216f2e2e845a04e812ce04dce815e207b`  
		Last Modified: Wed, 14 Mar 2018 16:14:33 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2f7396731c9b557582a2e7885f273ed2009dac14d90f09b92699a5f24ddd226a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88643305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dee6681e464fc81de863a05059c444651ac9a54787d00a463ff952b41591a60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:27:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 05:27:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:27:06 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 05:27:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:27:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 05:27:23 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 05:27:24 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 05:27:26 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 05:27:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:27:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be2ada16cdb580c03d15be8f97329df8ecb5a1035f1d56277554f010375b16f`  
		Last Modified: Thu, 15 Mar 2018 05:29:06 GMT  
		Size: 12.6 MB (12570362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b67efd95fc40f3eb9ff91e2b461e429a240749b4f61edaf146d5cb4ff0bfd`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da263aa2f4b4fb513665383bc3ff5fb0962505060217bd0e76230a13eaf15a12`  
		Last Modified: Thu, 15 Mar 2018 05:29:13 GMT  
		Size: 19.0 MB (19007329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795cf7f88a1a0b0ef77ea1b4192aaf30c3414b5f8d8a4408c215cbf3e26f8467`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c007d8ddc06d7a37a854e4c1cad2c920c09dc544caa0ca12039ed212ffac28ea`  
		Last Modified: Thu, 15 Mar 2018 05:29:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:85dcea14b07b0bf9d6071d2a28dfa6d9352aede06f6b010bfc51cae750df6949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:812ba1300fbd07d0505e0a4de0ff4f70d40ed35ae12f08591a6d00d438f47f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94173603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25a1849f1565ef7ba5c61b025ff5c89fcd17793a128a2577f87af9bfd34ffc44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 07:32:28 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 07:32:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 07:32:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 07:32:31 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 07:32:32 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 07:32:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 07:32:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 07:32:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f2907488895c87cdd9145924f6d3af72e3f34a01566ecb44b48fae48ab22d`  
		Last Modified: Thu, 15 Mar 2018 07:33:33 GMT  
		Size: 20.7 MB (20732439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e9d8a835b9067067f22d1cc53ac1d588c3e5b92371f9507959ca37b583e0e`  
		Last Modified: Thu, 15 Mar 2018 07:33:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39eb4fca3859da0436d54ab3bb46cea27a654a9050455e1b98a9ed7bb89416cc`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:fa678efe018ac6f9c40481090ebdc5fcd520d078906e15ef7d3586850b996c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.6 MB (87638654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bb790807ad59c53b1f8666337384f802dca6c0ef546261b02e2b2d1773a6ac`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:13:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 14 Mar 2018 16:13:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 14 Mar 2018 16:13:47 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Mar 2018 16:13:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 14 Mar 2018 16:13:53 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Mar 2018 16:13:53 GMT
EXPOSE 9092/tcp
# Wed, 14 Mar 2018 16:13:54 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Mar 2018 16:13:54 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 14 Mar 2018 16:13:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Mar 2018 16:13:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4b0169e5020c8bb416b38fcc5919968e82905df89b8eaf0f47a1737948f55e`  
		Last Modified: Wed, 14 Mar 2018 16:14:36 GMT  
		Size: 13.0 MB (13032997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca374b7d8e1c8c3f00186afc3bf0aeeeaab77c8d8d5c65cea51d5d40a58e9cf`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb52568602c3bebeb75fea12309ca95b949aa3a58fc9308a96f5da89f0017d4`  
		Last Modified: Wed, 14 Mar 2018 16:14:42 GMT  
		Size: 19.0 MB (19007415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0eaea5cffec653ccce011d2f9b3116c5dd7768341fe6a4dde81d81a2d95d863`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0fed956d140a60511ab8c380f0451216f2e2e845a04e812ce04dce815e207b`  
		Last Modified: Wed, 14 Mar 2018 16:14:33 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:2f7396731c9b557582a2e7885f273ed2009dac14d90f09b92699a5f24ddd226a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88643305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dee6681e464fc81de863a05059c444651ac9a54787d00a463ff952b41591a60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:27:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 05:27:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 05:27:06 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Mar 2018 05:27:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 05:27:22 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Mar 2018 05:27:23 GMT
EXPOSE 9092/tcp
# Thu, 15 Mar 2018 05:27:24 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Mar 2018 05:27:26 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Mar 2018 05:27:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 05:27:28 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be2ada16cdb580c03d15be8f97329df8ecb5a1035f1d56277554f010375b16f`  
		Last Modified: Thu, 15 Mar 2018 05:29:06 GMT  
		Size: 12.6 MB (12570362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b67efd95fc40f3eb9ff91e2b461e429a240749b4f61edaf146d5cb4ff0bfd`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da263aa2f4b4fb513665383bc3ff5fb0962505060217bd0e76230a13eaf15a12`  
		Last Modified: Thu, 15 Mar 2018 05:29:13 GMT  
		Size: 19.0 MB (19007329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795cf7f88a1a0b0ef77ea1b4192aaf30c3414b5f8d8a4408c215cbf3e26f8467`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c007d8ddc06d7a37a854e4c1cad2c920c09dc544caa0ca12039ed212ffac28ea`  
		Last Modified: Thu, 15 Mar 2018 05:29:02 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:435b16390bf9bbb3e9ec2d9f73ccce1415f96d3d02d4fcf56ea736627c402104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:4da84132ade1c7d7438a7c835c029d109461b706e26fc1abb19624365de02aa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89938656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc17af5865781d0d0471ea1694c216f8cce89acb95bb58b93e0293d874c35d1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:13:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 14 Mar 2018 16:13:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 02:35:57 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 02:36:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 02:36:04 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 02:36:04 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 02:36:04 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 02:36:05 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 02:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 02:36:06 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4b0169e5020c8bb416b38fcc5919968e82905df89b8eaf0f47a1737948f55e`  
		Last Modified: Wed, 14 Mar 2018 16:14:36 GMT  
		Size: 13.0 MB (13032997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca374b7d8e1c8c3f00186afc3bf0aeeeaab77c8d8d5c65cea51d5d40a58e9cf`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0105f68fe0621e0ffd02cb8e1381a7a6cbfab904faa78f8528699dccb97770df`  
		Last Modified: Fri, 16 Mar 2018 02:36:30 GMT  
		Size: 21.3 MB (21307419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d254282125a2214125fbc9ef9ec054717298c4ebcc003588f9694086641ea1`  
		Last Modified: Fri, 16 Mar 2018 02:36:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c3d3c813a1f5a916cc7255b07f72b620eba22a9291f8a02a9b6f3cb6ba0ed`  
		Last Modified: Fri, 16 Mar 2018 02:36:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:1a4b4e80cb31ae1a662afe15a6a63c6a49ec883a2188847c4689a4c2da1ba4a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90943149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8afc30139bd916f22a5f7899c09aa749af8c5b5a30105c5d23e4586294ac6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:27:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 05:27:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 00:39:40 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 00:39:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 00:39:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 00:39:51 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 00:39:51 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 00:39:52 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 00:39:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 00:39:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be2ada16cdb580c03d15be8f97329df8ecb5a1035f1d56277554f010375b16f`  
		Last Modified: Thu, 15 Mar 2018 05:29:06 GMT  
		Size: 12.6 MB (12570362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b67efd95fc40f3eb9ff91e2b461e429a240749b4f61edaf146d5cb4ff0bfd`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0abe6d20d86faa1ece67ba4531c23e08871625003849cfc8ba32824862331`  
		Last Modified: Fri, 16 Mar 2018 00:40:36 GMT  
		Size: 21.3 MB (21307172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3e2d516cd6854c47549a28626e7552064561dac93a86d13a1b1e1611a25226`  
		Last Modified: Fri, 16 Mar 2018 00:40:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ca466394ae0af204097db2d02e4e3f1638669cb5ed7e0b10df7b73190c8e72`  
		Last Modified: Fri, 16 Mar 2018 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:435b16390bf9bbb3e9ec2d9f73ccce1415f96d3d02d4fcf56ea736627c402104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:4da84132ade1c7d7438a7c835c029d109461b706e26fc1abb19624365de02aa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89938656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc17af5865781d0d0471ea1694c216f8cce89acb95bb58b93e0293d874c35d1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:13:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 14 Mar 2018 16:13:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 02:35:57 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 02:36:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 02:36:04 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 02:36:04 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 02:36:04 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 02:36:05 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 02:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 02:36:06 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4b0169e5020c8bb416b38fcc5919968e82905df89b8eaf0f47a1737948f55e`  
		Last Modified: Wed, 14 Mar 2018 16:14:36 GMT  
		Size: 13.0 MB (13032997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca374b7d8e1c8c3f00186afc3bf0aeeeaab77c8d8d5c65cea51d5d40a58e9cf`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0105f68fe0621e0ffd02cb8e1381a7a6cbfab904faa78f8528699dccb97770df`  
		Last Modified: Fri, 16 Mar 2018 02:36:30 GMT  
		Size: 21.3 MB (21307419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d254282125a2214125fbc9ef9ec054717298c4ebcc003588f9694086641ea1`  
		Last Modified: Fri, 16 Mar 2018 02:36:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c3d3c813a1f5a916cc7255b07f72b620eba22a9291f8a02a9b6f3cb6ba0ed`  
		Last Modified: Fri, 16 Mar 2018 02:36:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:1a4b4e80cb31ae1a662afe15a6a63c6a49ec883a2188847c4689a4c2da1ba4a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90943149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8afc30139bd916f22a5f7899c09aa749af8c5b5a30105c5d23e4586294ac6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:27:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 05:27:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 00:39:40 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 00:39:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 00:39:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 00:39:51 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 00:39:51 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 00:39:52 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 00:39:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 00:39:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be2ada16cdb580c03d15be8f97329df8ecb5a1035f1d56277554f010375b16f`  
		Last Modified: Thu, 15 Mar 2018 05:29:06 GMT  
		Size: 12.6 MB (12570362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b67efd95fc40f3eb9ff91e2b461e429a240749b4f61edaf146d5cb4ff0bfd`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0abe6d20d86faa1ece67ba4531c23e08871625003849cfc8ba32824862331`  
		Last Modified: Fri, 16 Mar 2018 00:40:36 GMT  
		Size: 21.3 MB (21307172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3e2d516cd6854c47549a28626e7552064561dac93a86d13a1b1e1611a25226`  
		Last Modified: Fri, 16 Mar 2018 00:40:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ca466394ae0af204097db2d02e4e3f1638669cb5ed7e0b10df7b73190c8e72`  
		Last Modified: Fri, 16 Mar 2018 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:fa615f6b92d157161a23ae1d5a88b5ca86c8d708ed5925d038beb958a807d020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:a8a6503a19deac5ed3c22b2715003a4829cf771f4a5de3f1a29e45ca988b23e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18941951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26167a06d5ed574d3663cd089631c796877f09c7908852692eb1e6638bd2120`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 16 Mar 2018 13:11:50 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:12:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:12:05 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:12:06 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:12:06 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:12:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 16 Mar 2018 13:12:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:12:07 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca4e09496fcab24abcddfbe44138349abb5d3a9b7d2289b5eccf2fc45fc8441`  
		Last Modified: Fri, 16 Mar 2018 13:13:40 GMT  
		Size: 16.6 MB (16598584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12140d198c7874ca5b87c82abf79d008e2c8acbf8abc75674a57d38b5303819b`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ab023bb9f0dcdd360549c8bcba1afc3c9971fd45b3442d96135611c1e62c48`  
		Last Modified: Fri, 16 Mar 2018 13:13:36 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:435b16390bf9bbb3e9ec2d9f73ccce1415f96d3d02d4fcf56ea736627c402104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:5c05d794363fa812eced096ffcd5ee99f8282cef0ff19318c76eedee3273f0c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96134860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bac632628aae5f0f8d10468a67cee8d3d556638e076bb6fe32d7d258aa4c357d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 07:32:13 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 07:32:28 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 13:11:28 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 13:11:31 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 13:11:31 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 13:11:32 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 13:11:32 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 13:11:32 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:11:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:11:33 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa8426f53a9cf218d01774a92e8d99d959686da6520383fc51a4a68a094935`  
		Last Modified: Thu, 15 Mar 2018 07:33:30 GMT  
		Size: 12.9 MB (12859240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397b1907a69a7a646027a483bc1e26b8c13a2f2a39368c423867c4cd9b64c40d`  
		Last Modified: Thu, 15 Mar 2018 07:33:28 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd2901b79f149c750ad526041e73ba164ae07d9d3235853fc8ad344bcd602c0d`  
		Last Modified: Fri, 16 Mar 2018 13:12:37 GMT  
		Size: 22.7 MB (22693694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43353ed755daec37c3719ab86a37f75077ed34c37954b234ff3f119ed75291`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fccc281c0e4321ec4885577e3786dee1600ce277166267c07cfa28ecaf665473`  
		Last Modified: Fri, 16 Mar 2018 13:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:4da84132ade1c7d7438a7c835c029d109461b706e26fc1abb19624365de02aa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89938656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc17af5865781d0d0471ea1694c216f8cce89acb95bb58b93e0293d874c35d1c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 12:32:32 GMT
ADD file:a48681cb8186079633f55084b5ecf518e0c50f24cfb6eb56bd42bca88f26e28d in / 
# Wed, 14 Mar 2018 12:32:33 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:19:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:19:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 16:13:43 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 14 Mar 2018 16:13:47 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 02:35:57 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 02:36:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 02:36:04 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 02:36:04 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 02:36:04 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 02:36:05 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 02:36:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 02:36:06 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:1296b637c2f207ccc536f8e55bad6857ee417d3b5ea4c82a92a8e8621a970f50`  
		Last Modified: Wed, 14 Mar 2018 12:44:05 GMT  
		Size: 41.9 MB (41857435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2ab5e048ba56edebae7aceececc82f4b33c46e008d392e5fd1d5ad0da0959c`  
		Last Modified: Wed, 14 Mar 2018 13:30:15 GMT  
		Size: 9.8 MB (9824907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a6513627dbe58bc1e5151968379017a6d2b320b2ec9b35f6fd1235aeeadb3c`  
		Last Modified: Wed, 14 Mar 2018 13:30:13 GMT  
		Size: 3.9 MB (3912522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4b0169e5020c8bb416b38fcc5919968e82905df89b8eaf0f47a1737948f55e`  
		Last Modified: Wed, 14 Mar 2018 16:14:36 GMT  
		Size: 13.0 MB (13032997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca374b7d8e1c8c3f00186afc3bf0aeeeaab77c8d8d5c65cea51d5d40a58e9cf`  
		Last Modified: Wed, 14 Mar 2018 16:14:34 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0105f68fe0621e0ffd02cb8e1381a7a6cbfab904faa78f8528699dccb97770df`  
		Last Modified: Fri, 16 Mar 2018 02:36:30 GMT  
		Size: 21.3 MB (21307419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d254282125a2214125fbc9ef9ec054717298c4ebcc003588f9694086641ea1`  
		Last Modified: Fri, 16 Mar 2018 02:36:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14c3d3c813a1f5a916cc7255b07f72b620eba22a9291f8a02a9b6f3cb6ba0ed`  
		Last Modified: Fri, 16 Mar 2018 02:36:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:1a4b4e80cb31ae1a662afe15a6a63c6a49ec883a2188847c4689a4c2da1ba4a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.9 MB (90943149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde8afc30139bd916f22a5f7899c09aa749af8c5b5a30105c5d23e4586294ac6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 05:27:00 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Mar 2018 05:27:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Mar 2018 00:39:40 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 16 Mar 2018 00:39:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Fri, 16 Mar 2018 00:39:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 16 Mar 2018 00:39:51 GMT
EXPOSE 9092/tcp
# Fri, 16 Mar 2018 00:39:51 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 16 Mar 2018 00:39:52 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Fri, 16 Mar 2018 00:39:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 00:39:56 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7be2ada16cdb580c03d15be8f97329df8ecb5a1035f1d56277554f010375b16f`  
		Last Modified: Thu, 15 Mar 2018 05:29:06 GMT  
		Size: 12.6 MB (12570362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b67efd95fc40f3eb9ff91e2b461e429a240749b4f61edaf146d5cb4ff0bfd`  
		Last Modified: Thu, 15 Mar 2018 05:29:01 GMT  
		Size: 2.9 KB (2889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0c0abe6d20d86faa1ece67ba4531c23e08871625003849cfc8ba32824862331`  
		Last Modified: Fri, 16 Mar 2018 00:40:36 GMT  
		Size: 21.3 MB (21307172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3e2d516cd6854c47549a28626e7552064561dac93a86d13a1b1e1611a25226`  
		Last Modified: Fri, 16 Mar 2018 00:40:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ca466394ae0af204097db2d02e4e3f1638669cb5ed7e0b10df7b73190c8e72`  
		Last Modified: Fri, 16 Mar 2018 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
