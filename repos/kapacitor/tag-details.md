<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:1.5`](#kapacitor15)
-	[`kapacitor:1.5.2`](#kapacitor152)
-	[`kapacitor:1.5.2-alpine`](#kapacitor152-alpine)
-	[`kapacitor:1.5-alpine`](#kapacitor15-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:56edcb5d1141e026ced8fa9c5105e458a9715eb1bf4bc9de8131d919f6dc56db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:76f937c3d56d3e468859df3671fbcc6b4fcf292e3e338c3fb949a63b3442d08f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96176841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308ffcb1482c73af0a4502956fa36629a9b14721c69a0d8cae1aea831f793c29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 05:06:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Mar 2019 05:06:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 05:06:53 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 27 Mar 2019 05:06:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 05:06:58 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Mar 2019 05:06:58 GMT
EXPOSE 9092
# Wed, 27 Mar 2019 05:06:58 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Mar 2019 05:06:58 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 27 Mar 2019 05:06:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 05:06:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db31a319a722ff235e271597f78c22b6dc51185fd28dd2035336bfd7eb7181bf`  
		Last Modified: Wed, 27 Mar 2019 05:07:26 GMT  
		Size: 13.0 MB (13014776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babfa8e1ad47045d9aa6fd298a1b3b3a31a1a55b3cd450dcadb35f5f40157b9f`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 2.8 KB (2777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b118c895f711765481f294318f406ba0238c648c16b291a88b61183162fc87e8`  
		Last Modified: Wed, 27 Mar 2019 05:07:31 GMT  
		Size: 22.7 MB (22694176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90ae2f7516d41cb446a424904304f04f3c89ba5454e7f91f47d127257b9dc36`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b9f03c88755852402e93b99c274b51a6d8b70b559626ca3ae8dacb2a308c4e`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:8b9f8edd33b1051aa5f15204806779a614e0859a3211201e275db559a3126e1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89973061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505b0b349719233d8535c758d4b86ad1d7b3c5caffd7f7e8d921b4b6795a32e3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:09:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:09:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:09:41 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 17:09:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:09:49 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:09:49 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:09:50 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:09:51 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:09:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:09:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfed3d94bbef52d00aede24cd77d9ed9dd62a7d58e24ed7ea02df66e0d85cbc`  
		Last Modified: Tue, 05 Mar 2019 17:10:18 GMT  
		Size: 13.2 MB (13184514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244abed59bcac69bd62fc50bf156d7c1b6a02c6c4886c78c3ebe2792fbe058f7`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1f10af46489ac521943c4c380f85044ffea0c9bccf396c292d3ba370b8801d`  
		Last Modified: Tue, 05 Mar 2019 17:10:25 GMT  
		Size: 21.3 MB (21307960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b084790e222614056dc350ad2933d25aa705286ad121bde8de8bebcdb1e27f`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe82298573dc98a5d0210aad0e8e9ac0c1a4ffb2ecf5ba031a3d012c45e581c`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c3ae89dc4dabd1388ee73d8e2e0502d718091afa90695c8a8357f07486a1cfd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90979291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bca28d44a32408d6bb9469ff1ccee70c34a7459f618d7d67eabff15b95b8ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:12:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:12:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:12:27 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 17:12:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:12:37 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:12:38 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:12:39 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:12:39 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:12:41 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba92bf5724a47ac6004566cd3a26cfb872931480732b82700a68fecacbdaa6a7`  
		Last Modified: Tue, 05 Mar 2019 17:13:20 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81b71e89150dc41a0fc9598f444366a02ef9c7bc82aaf5ea7d4fcd3768c007`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac8c5e14075354ef2352d33590fad10ee31cf9beace39239248f8adac96ece5`  
		Last Modified: Tue, 05 Mar 2019 17:13:28 GMT  
		Size: 21.3 MB (21307770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cda665b0276fbf0ce36d87b51ec7ee31f7c1b29f3493acee004aa62f55fa026`  
		Last Modified: Tue, 05 Mar 2019 17:13:17 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a066abcadf9e676b4912fdc66a9466fba657f78ed14c498e83f3c2f449124f8`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:56edcb5d1141e026ced8fa9c5105e458a9715eb1bf4bc9de8131d919f6dc56db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:76f937c3d56d3e468859df3671fbcc6b4fcf292e3e338c3fb949a63b3442d08f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.2 MB (96176841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:308ffcb1482c73af0a4502956fa36629a9b14721c69a0d8cae1aea831f793c29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 05:06:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Mar 2019 05:06:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 05:06:53 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 27 Mar 2019 05:06:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 05:06:58 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Mar 2019 05:06:58 GMT
EXPOSE 9092
# Wed, 27 Mar 2019 05:06:58 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Mar 2019 05:06:58 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 27 Mar 2019 05:06:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 05:06:59 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db31a319a722ff235e271597f78c22b6dc51185fd28dd2035336bfd7eb7181bf`  
		Last Modified: Wed, 27 Mar 2019 05:07:26 GMT  
		Size: 13.0 MB (13014776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babfa8e1ad47045d9aa6fd298a1b3b3a31a1a55b3cd450dcadb35f5f40157b9f`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 2.8 KB (2777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b118c895f711765481f294318f406ba0238c648c16b291a88b61183162fc87e8`  
		Last Modified: Wed, 27 Mar 2019 05:07:31 GMT  
		Size: 22.7 MB (22694176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b90ae2f7516d41cb446a424904304f04f3c89ba5454e7f91f47d127257b9dc36`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b9f03c88755852402e93b99c274b51a6d8b70b559626ca3ae8dacb2a308c4e`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:8b9f8edd33b1051aa5f15204806779a614e0859a3211201e275db559a3126e1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.0 MB (89973061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505b0b349719233d8535c758d4b86ad1d7b3c5caffd7f7e8d921b4b6795a32e3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:09:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:09:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:09:41 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 17:09:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:09:49 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:09:49 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:09:50 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:09:51 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:09:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:09:51 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfed3d94bbef52d00aede24cd77d9ed9dd62a7d58e24ed7ea02df66e0d85cbc`  
		Last Modified: Tue, 05 Mar 2019 17:10:18 GMT  
		Size: 13.2 MB (13184514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244abed59bcac69bd62fc50bf156d7c1b6a02c6c4886c78c3ebe2792fbe058f7`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b1f10af46489ac521943c4c380f85044ffea0c9bccf396c292d3ba370b8801d`  
		Last Modified: Tue, 05 Mar 2019 17:10:25 GMT  
		Size: 21.3 MB (21307960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b084790e222614056dc350ad2933d25aa705286ad121bde8de8bebcdb1e27f`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe82298573dc98a5d0210aad0e8e9ac0c1a4ffb2ecf5ba031a3d012c45e581c`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:c3ae89dc4dabd1388ee73d8e2e0502d718091afa90695c8a8357f07486a1cfd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.0 MB (90979291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bca28d44a32408d6bb9469ff1ccee70c34a7459f618d7d67eabff15b95b8ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:12:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:12:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:12:27 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 05 Mar 2019 17:12:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:12:37 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:12:38 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:12:39 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:12:39 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:12:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:12:41 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba92bf5724a47ac6004566cd3a26cfb872931480732b82700a68fecacbdaa6a7`  
		Last Modified: Tue, 05 Mar 2019 17:13:20 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81b71e89150dc41a0fc9598f444366a02ef9c7bc82aaf5ea7d4fcd3768c007`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac8c5e14075354ef2352d33590fad10ee31cf9beace39239248f8adac96ece5`  
		Last Modified: Tue, 05 Mar 2019 17:13:28 GMT  
		Size: 21.3 MB (21307770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cda665b0276fbf0ce36d87b51ec7ee31f7c1b29f3493acee004aa62f55fa026`  
		Last Modified: Tue, 05 Mar 2019 17:13:17 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a066abcadf9e676b4912fdc66a9466fba657f78ed14c498e83f3c2f449124f8`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:62b936f1aa16a793907deca3b3cad0fe3d11bda5803b40372a186ce7774abab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:8d76b4c2ff71a7aeab99c216e34fc4f7d89e839cd0c321fa19533adda7027c91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19115462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294bd55887b1598104e37050a6c3ab4ace1fb682d87b2aff70cd3b45f2630743`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:46:57 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 08 Mar 2019 00:47:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:03 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:03 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:03 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:03 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c186d63e2795651620997dfb94f801fc570905e25c405517e715c567d123b2b2`  
		Last Modified: Fri, 08 Mar 2019 00:47:28 GMT  
		Size: 16.6 MB (16598555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8c2e2de968e042d6de76294151814f27e7954381c967b7785d69678beaf73b`  
		Last Modified: Fri, 08 Mar 2019 00:47:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebd837149ff216dbcdd1c224f2638d6f74fb49bcde5f234272204a5d7445420`  
		Last Modified: Fri, 08 Mar 2019 00:47:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:62b936f1aa16a793907deca3b3cad0fe3d11bda5803b40372a186ce7774abab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:8d76b4c2ff71a7aeab99c216e34fc4f7d89e839cd0c321fa19533adda7027c91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.1 MB (19115462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294bd55887b1598104e37050a6c3ab4ace1fb682d87b2aff70cd3b45f2630743`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:46:57 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 08 Mar 2019 00:47:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:03 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:03 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:03 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:03 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:04 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c186d63e2795651620997dfb94f801fc570905e25c405517e715c567d123b2b2`  
		Last Modified: Fri, 08 Mar 2019 00:47:28 GMT  
		Size: 16.6 MB (16598555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8c2e2de968e042d6de76294151814f27e7954381c967b7785d69678beaf73b`  
		Last Modified: Fri, 08 Mar 2019 00:47:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebd837149ff216dbcdd1c224f2638d6f74fb49bcde5f234272204a5d7445420`  
		Last Modified: Fri, 08 Mar 2019 00:47:24 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5`

```console
$ docker pull kapacitor@sha256:fe4787fa58705d834c41fdd31de055d4ca347d66d97163a5a981b9540e592705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:e2326f2c6f0e3fd281801567b7e1d4e07c2d4a010264e1d3da7d149b0f8f5c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106400883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975a301c20305384300a5aa03ef4912b1f5ebec50c24fc01744793cb4a1a581c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 05:06:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Mar 2019 05:06:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 05:07:06 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 27 Mar 2019 05:07:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Mar 2019 05:07:10 GMT
EXPOSE 9092
# Wed, 27 Mar 2019 05:07:10 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 27 Mar 2019 05:07:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 05:07:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db31a319a722ff235e271597f78c22b6dc51185fd28dd2035336bfd7eb7181bf`  
		Last Modified: Wed, 27 Mar 2019 05:07:26 GMT  
		Size: 13.0 MB (13014776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babfa8e1ad47045d9aa6fd298a1b3b3a31a1a55b3cd450dcadb35f5f40157b9f`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 2.8 KB (2777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f34d3100295ecedb391c36207cd00fa69d8a716c7e593df4adbb77236cdba70`  
		Last Modified: Wed, 27 Mar 2019 05:07:42 GMT  
		Size: 32.9 MB (32918218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd896469b2180901c0729792e63ceafac41593da2bb5789574d2cae5fc97301`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76168b2cab0173148d5164d64bb8edccbd3e2b95392fdff872c0808ece9ed61`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:d7d1c8d56955cd31bfc8bd6e2ce4b1657d92386e6f186841f08e7289dd385bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99564827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d271aee8f58af1baf03d7a0dc97827bc1a09f8966bb8453cb3f7c336922ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:09:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:09:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:09:55 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:10:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:10:02 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:10:03 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:10:03 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:10:04 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:10:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:10:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfed3d94bbef52d00aede24cd77d9ed9dd62a7d58e24ed7ea02df66e0d85cbc`  
		Last Modified: Tue, 05 Mar 2019 17:10:18 GMT  
		Size: 13.2 MB (13184514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244abed59bcac69bd62fc50bf156d7c1b6a02c6c4886c78c3ebe2792fbe058f7`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a31b21bb7d295acddea287cc6e8d1e229132d3e4e401e21db72f204979f90`  
		Last Modified: Tue, 05 Mar 2019 17:10:41 GMT  
		Size: 30.9 MB (30899726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ec290e4b28c4057f65d2535c1da335b9cd8ca638d7ea1c976f0060d4029c61`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179e763923d83888cc5c1ab2ecf35791d71e754a950fc7f16877c15ec4cb0fa6`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:e017f762b3812bfb66e1f1ab6be5747bcc290c5f0d23c07e418767d0a0f16dee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a80236be2b361e3dca1156e71af07674fa70c91df4e92a7c691cc6f86faab46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:12:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:12:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:12:47 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:12:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:12:59 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:13:00 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:13:01 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:13:01 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:13:03 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba92bf5724a47ac6004566cd3a26cfb872931480732b82700a68fecacbdaa6a7`  
		Last Modified: Tue, 05 Mar 2019 17:13:20 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81b71e89150dc41a0fc9598f444366a02ef9c7bc82aaf5ea7d4fcd3768c007`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89c993d5ba963d190fba0e16ae534260b4ee32bc79b0e6f9c2b65e02d3a6c`  
		Last Modified: Tue, 05 Mar 2019 17:13:48 GMT  
		Size: 30.9 MB (30899541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6233109f36a656f8104fe5ed46822bd3cd38db9e805b042b1eb4363e62c967d`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6845deeeba40066c91de822c1a33c112477a05e83be02e18a7a8c085238514`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.2`

```console
$ docker pull kapacitor@sha256:fe4787fa58705d834c41fdd31de055d4ca347d66d97163a5a981b9540e592705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5.2` - linux; amd64

```console
$ docker pull kapacitor@sha256:e2326f2c6f0e3fd281801567b7e1d4e07c2d4a010264e1d3da7d149b0f8f5c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106400883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975a301c20305384300a5aa03ef4912b1f5ebec50c24fc01744793cb4a1a581c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 05:06:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Mar 2019 05:06:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 05:07:06 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 27 Mar 2019 05:07:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Mar 2019 05:07:10 GMT
EXPOSE 9092
# Wed, 27 Mar 2019 05:07:10 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 27 Mar 2019 05:07:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 05:07:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db31a319a722ff235e271597f78c22b6dc51185fd28dd2035336bfd7eb7181bf`  
		Last Modified: Wed, 27 Mar 2019 05:07:26 GMT  
		Size: 13.0 MB (13014776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babfa8e1ad47045d9aa6fd298a1b3b3a31a1a55b3cd450dcadb35f5f40157b9f`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 2.8 KB (2777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f34d3100295ecedb391c36207cd00fa69d8a716c7e593df4adbb77236cdba70`  
		Last Modified: Wed, 27 Mar 2019 05:07:42 GMT  
		Size: 32.9 MB (32918218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd896469b2180901c0729792e63ceafac41593da2bb5789574d2cae5fc97301`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76168b2cab0173148d5164d64bb8edccbd3e2b95392fdff872c0808ece9ed61`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.2` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:d7d1c8d56955cd31bfc8bd6e2ce4b1657d92386e6f186841f08e7289dd385bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99564827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d271aee8f58af1baf03d7a0dc97827bc1a09f8966bb8453cb3f7c336922ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:09:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:09:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:09:55 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:10:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:10:02 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:10:03 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:10:03 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:10:04 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:10:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:10:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfed3d94bbef52d00aede24cd77d9ed9dd62a7d58e24ed7ea02df66e0d85cbc`  
		Last Modified: Tue, 05 Mar 2019 17:10:18 GMT  
		Size: 13.2 MB (13184514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244abed59bcac69bd62fc50bf156d7c1b6a02c6c4886c78c3ebe2792fbe058f7`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a31b21bb7d295acddea287cc6e8d1e229132d3e4e401e21db72f204979f90`  
		Last Modified: Tue, 05 Mar 2019 17:10:41 GMT  
		Size: 30.9 MB (30899726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ec290e4b28c4057f65d2535c1da335b9cd8ca638d7ea1c976f0060d4029c61`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179e763923d83888cc5c1ab2ecf35791d71e754a950fc7f16877c15ec4cb0fa6`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.2` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:e017f762b3812bfb66e1f1ab6be5747bcc290c5f0d23c07e418767d0a0f16dee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a80236be2b361e3dca1156e71af07674fa70c91df4e92a7c691cc6f86faab46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:12:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:12:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:12:47 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:12:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:12:59 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:13:00 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:13:01 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:13:01 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:13:03 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba92bf5724a47ac6004566cd3a26cfb872931480732b82700a68fecacbdaa6a7`  
		Last Modified: Tue, 05 Mar 2019 17:13:20 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81b71e89150dc41a0fc9598f444366a02ef9c7bc82aaf5ea7d4fcd3768c007`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89c993d5ba963d190fba0e16ae534260b4ee32bc79b0e6f9c2b65e02d3a6c`  
		Last Modified: Tue, 05 Mar 2019 17:13:48 GMT  
		Size: 30.9 MB (30899541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6233109f36a656f8104fe5ed46822bd3cd38db9e805b042b1eb4363e62c967d`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6845deeeba40066c91de822c1a33c112477a05e83be02e18a7a8c085238514`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.2-alpine`

```console
$ docker pull kapacitor@sha256:fc8780c74f2403ac8da23d1db1ab6335f7bdb951285d8ddf5888ade8c4af3ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5.2-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:9f2becd67c190240b53aef62335a0255178fbccca92fa976c5a660ed7ebba106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21953017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e313de93f58fb667c7dd3d1c5e049b10ca05976e2d5c3deebb225b983937fbf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:47:09 GMT
ENV KAPACITOR_VERSION=1.5.2
# Fri, 08 Mar 2019 00:47:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:15 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320153dc004ab05ceff5a224cd7c1f1a9c2bcf13b48afc28aaf5be5f85a4635`  
		Last Modified: Fri, 08 Mar 2019 00:47:41 GMT  
		Size: 19.4 MB (19436109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831c7bc8028a8d7b670f969cbff8194e45cb2dee74b90cdc509784996f9e43d`  
		Last Modified: Fri, 08 Mar 2019 00:47:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc29f6c555dc911f8f2605dadb7937bf81a55ac03008fa0fcba184ec4d9b07`  
		Last Modified: Fri, 08 Mar 2019 00:47:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5-alpine`

```console
$ docker pull kapacitor@sha256:fc8780c74f2403ac8da23d1db1ab6335f7bdb951285d8ddf5888ade8c4af3ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:9f2becd67c190240b53aef62335a0255178fbccca92fa976c5a660ed7ebba106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21953017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e313de93f58fb667c7dd3d1c5e049b10ca05976e2d5c3deebb225b983937fbf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:47:09 GMT
ENV KAPACITOR_VERSION=1.5.2
# Fri, 08 Mar 2019 00:47:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:15 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320153dc004ab05ceff5a224cd7c1f1a9c2bcf13b48afc28aaf5be5f85a4635`  
		Last Modified: Fri, 08 Mar 2019 00:47:41 GMT  
		Size: 19.4 MB (19436109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831c7bc8028a8d7b670f969cbff8194e45cb2dee74b90cdc509784996f9e43d`  
		Last Modified: Fri, 08 Mar 2019 00:47:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc29f6c555dc911f8f2605dadb7937bf81a55ac03008fa0fcba184ec4d9b07`  
		Last Modified: Fri, 08 Mar 2019 00:47:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:fc8780c74f2403ac8da23d1db1ab6335f7bdb951285d8ddf5888ade8c4af3ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:9f2becd67c190240b53aef62335a0255178fbccca92fa976c5a660ed7ebba106
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21953017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e313de93f58fb667c7dd3d1c5e049b10ca05976e2d5c3deebb225b983937fbf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 08 Mar 2019 00:47:09 GMT
ENV KAPACITOR_VERSION=1.5.2
# Fri, 08 Mar 2019 00:47:14 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Fri, 08 Mar 2019 00:47:15 GMT
EXPOSE 9092
# Fri, 08 Mar 2019 00:47:15 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 08 Mar 2019 00:47:15 GMT
COPY file:a64543022a380a96e18ddc4e841e034238df340064743d570fa109d5086b123a in /entrypoint.sh 
# Fri, 08 Mar 2019 00:47:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 00:47:16 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9320153dc004ab05ceff5a224cd7c1f1a9c2bcf13b48afc28aaf5be5f85a4635`  
		Last Modified: Fri, 08 Mar 2019 00:47:41 GMT  
		Size: 19.4 MB (19436109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4831c7bc8028a8d7b670f969cbff8194e45cb2dee74b90cdc509784996f9e43d`  
		Last Modified: Fri, 08 Mar 2019 00:47:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc29f6c555dc911f8f2605dadb7937bf81a55ac03008fa0fcba184ec4d9b07`  
		Last Modified: Fri, 08 Mar 2019 00:47:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:fe4787fa58705d834c41fdd31de055d4ca347d66d97163a5a981b9540e592705
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:e2326f2c6f0e3fd281801567b7e1d4e07c2d4a010264e1d3da7d149b0f8f5c6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106400883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:975a301c20305384300a5aa03ef4912b1f5ebec50c24fc01744793cb4a1a581c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 05:06:50 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Mar 2019 05:06:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 05:07:06 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 27 Mar 2019 05:07:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Mar 2019 05:07:10 GMT
EXPOSE 9092
# Wed, 27 Mar 2019 05:07:10 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Mar 2019 05:07:10 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 27 Mar 2019 05:07:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 05:07:11 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db31a319a722ff235e271597f78c22b6dc51185fd28dd2035336bfd7eb7181bf`  
		Last Modified: Wed, 27 Mar 2019 05:07:26 GMT  
		Size: 13.0 MB (13014776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babfa8e1ad47045d9aa6fd298a1b3b3a31a1a55b3cd450dcadb35f5f40157b9f`  
		Last Modified: Wed, 27 Mar 2019 05:07:24 GMT  
		Size: 2.8 KB (2777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f34d3100295ecedb391c36207cd00fa69d8a716c7e593df4adbb77236cdba70`  
		Last Modified: Wed, 27 Mar 2019 05:07:42 GMT  
		Size: 32.9 MB (32918218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bd896469b2180901c0729792e63ceafac41593da2bb5789574d2cae5fc97301`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b76168b2cab0173148d5164d64bb8edccbd3e2b95392fdff872c0808ece9ed61`  
		Last Modified: Wed, 27 Mar 2019 05:07:35 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:d7d1c8d56955cd31bfc8bd6e2ce4b1657d92386e6f186841f08e7289dd385bad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99564827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d271aee8f58af1baf03d7a0dc97827bc1a09f8966bb8453cb3f7c336922ba2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:09:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:09:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:09:55 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:10:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:10:02 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:10:03 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:10:03 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:10:04 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:10:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:10:05 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfed3d94bbef52d00aede24cd77d9ed9dd62a7d58e24ed7ea02df66e0d85cbc`  
		Last Modified: Tue, 05 Mar 2019 17:10:18 GMT  
		Size: 13.2 MB (13184514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:244abed59bcac69bd62fc50bf156d7c1b6a02c6c4886c78c3ebe2792fbe058f7`  
		Last Modified: Tue, 05 Mar 2019 17:10:16 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a05a31b21bb7d295acddea287cc6e8d1e229132d3e4e401e21db72f204979f90`  
		Last Modified: Tue, 05 Mar 2019 17:10:41 GMT  
		Size: 30.9 MB (30899726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ec290e4b28c4057f65d2535c1da335b9cd8ca638d7ea1c976f0060d4029c61`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179e763923d83888cc5c1ab2ecf35791d71e754a950fc7f16877c15ec4cb0fa6`  
		Last Modified: Tue, 05 Mar 2019 17:10:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:e017f762b3812bfb66e1f1ab6be5747bcc290c5f0d23c07e418767d0a0f16dee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100571059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a80236be2b361e3dca1156e71af07674fa70c91df4e92a7c691cc6f86faab46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 17:12:21 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 05 Mar 2019 17:12:26 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 17:12:47 GMT
ENV KAPACITOR_VERSION=1.5.2
# Tue, 05 Mar 2019 17:12:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 05 Mar 2019 17:12:59 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Tue, 05 Mar 2019 17:13:00 GMT
EXPOSE 9092
# Tue, 05 Mar 2019 17:13:01 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 05 Mar 2019 17:13:01 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Tue, 05 Mar 2019 17:13:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 17:13:03 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba92bf5724a47ac6004566cd3a26cfb872931480732b82700a68fecacbdaa6a7`  
		Last Modified: Tue, 05 Mar 2019 17:13:20 GMT  
		Size: 12.7 MB (12711874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc81b71e89150dc41a0fc9598f444366a02ef9c7bc82aaf5ea7d4fcd3768c007`  
		Last Modified: Tue, 05 Mar 2019 17:13:16 GMT  
		Size: 2.8 KB (2774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc89c993d5ba963d190fba0e16ae534260b4ee32bc79b0e6f9c2b65e02d3a6c`  
		Last Modified: Tue, 05 Mar 2019 17:13:48 GMT  
		Size: 30.9 MB (30899541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6233109f36a656f8104fe5ed46822bd3cd38db9e805b042b1eb4363e62c967d`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6845deeeba40066c91de822c1a33c112477a05e83be02e18a7a8c085238514`  
		Last Modified: Tue, 05 Mar 2019 17:13:37 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
