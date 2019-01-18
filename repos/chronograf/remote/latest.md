## `chronograf:latest`

```console
$ docker pull chronograf@sha256:670279569308d8ab1c4fabb3461cb37d3235a8bf7533245aaf825e26d77990b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:02e9b6784887fd223be5d41030cffa93bc42c0f7ea04a7cb20d5cd63337d6230
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55224316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c84bf61cec411a280a3bb8d18822830a09b6b0f623773da94abddc22c4ea47`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 17 Jan 2019 23:19:34 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Thu, 17 Jan 2019 23:19:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 17 Jan 2019 23:19:48 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Thu, 17 Jan 2019 23:19:48 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 17 Jan 2019 23:19:48 GMT
EXPOSE 8888
# Thu, 17 Jan 2019 23:19:48 GMT
VOLUME [/var/lib/chronograf]
# Thu, 17 Jan 2019 23:19:49 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Thu, 17 Jan 2019 23:19:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Jan 2019 23:19:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1d2b5fe313eaa5e7da4193698dac2a217897250f3bcdfc1611b632851070c5`  
		Last Modified: Thu, 17 Jan 2019 23:20:25 GMT  
		Size: 28.2 MB (28203730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa5fbbc8ddf5176d5eaeeb582917bbba38af112ed8fea93d644dd3c00dc365c`  
		Last Modified: Thu, 17 Jan 2019 23:20:19 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c134fe45c8e414a4dc2542f0a4cf7ac1f368c42bb694ebe250ea5ad8fcbfbb77`  
		Last Modified: Thu, 17 Jan 2019 23:20:20 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f575464af501aff7bf94dba0235c1282369ecfc7ea572f20f7d4dfaa0a7d04`  
		Last Modified: Thu, 17 Jan 2019 23:20:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1b9fb36e63b1c357c8a44c695acce25a5ed486f89cea2333af07d8e6d25ea013
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49196067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3fc5aaadd1a2e09d44153ddcc5d3d8c9cb5857b8596f2d804fadb9eb154e04d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 18 Jan 2019 12:57:37 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Fri, 18 Jan 2019 12:57:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Jan 2019 12:58:00 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 18 Jan 2019 12:58:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 18 Jan 2019 12:58:01 GMT
EXPOSE 8888
# Fri, 18 Jan 2019 12:58:01 GMT
VOLUME [/var/lib/chronograf]
# Fri, 18 Jan 2019 12:58:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 18 Jan 2019 12:58:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 12:58:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc431f06aaabaae13107f8ea58fedf682ae7d08517df953ce6bf0aac7cb969c`  
		Last Modified: Fri, 18 Jan 2019 12:58:27 GMT  
		Size: 26.0 MB (26016805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c40377056d41e2649b8c8a44ff97f48537620e9f376d6f1724b079844c32b8`  
		Last Modified: Fri, 18 Jan 2019 12:58:18 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bffa94d3f6ee244da0ebb450e24a81bea99b16f4b16248a1b212e0504cccf29`  
		Last Modified: Fri, 18 Jan 2019 12:58:18 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c2ee315794d3cc44b4b22d846cd93772def582ee13c2ce71e6677d1b9c0512`  
		Last Modified: Fri, 18 Jan 2019 12:58:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e4d21a7a44e3f5c8df9dc6fa0615135abe7fb65f5d2de7c2b031d9068c29587e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50661036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee869cd59303e9680abce6633d3938e2e04162306c86ec20f27476c23e0299d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 18 Jan 2019 09:39:40 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Fri, 18 Jan 2019 09:40:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 18 Jan 2019 09:40:33 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 18 Jan 2019 09:40:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 18 Jan 2019 09:40:34 GMT
EXPOSE 8888
# Fri, 18 Jan 2019 09:40:35 GMT
VOLUME [/var/lib/chronograf]
# Fri, 18 Jan 2019 09:40:36 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 18 Jan 2019 09:40:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 09:40:38 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00db62a4ef45057e107cdbe5641aeb5f06c927204505d5c9bc90a3e1d7c3537c`  
		Last Modified: Fri, 18 Jan 2019 09:41:13 GMT  
		Size: 26.2 MB (26220620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37f7e29e51fa06ffdaad6ea8e598d973df6c015b352259ded576731b73462f3`  
		Last Modified: Fri, 18 Jan 2019 09:41:05 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae88a69b614b7e6ac973dc636c6154ad241513a11d621658cf2599894e3e7b2`  
		Last Modified: Fri, 18 Jan 2019 09:41:04 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2980672e87ba34c96af5975bdd26b3a1215c09797eff2b20ec60e6b46ee98f1`  
		Last Modified: Fri, 18 Jan 2019 09:41:04 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
