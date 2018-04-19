## `chronograf:latest`

```console
$ docker pull chronograf@sha256:ebc167fb8a26d0aa82847d6609cdd217dfecafeba7a5f3be36d3149e3aabd420
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:a5e0c9827d861151c9a4b8e0c52c87c34c8532c7e342b4d3d07f14d14435c7e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48506996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe9c4bfa61c98c6494200f112256521b666ff7dae2c9279b6bfc66f889e261a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:18:30 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Apr 2018 19:23:33 GMT
ENV CHRONOGRAF_VERSION=1.4.4.0
# Wed, 18 Apr 2018 19:23:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 18 Apr 2018 19:23:52 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 18 Apr 2018 19:23:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 18 Apr 2018 19:23:53 GMT
EXPOSE 8888/tcp
# Wed, 18 Apr 2018 19:23:53 GMT
VOLUME [/var/lib/chronograf]
# Wed, 18 Apr 2018 19:23:53 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 18 Apr 2018 19:23:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Apr 2018 19:23:54 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3360a9607a577c345628fa69b5c0b4013e5cca0177cdc9880ffd041bafcb625`  
		Last Modified: Wed, 14 Mar 2018 05:19:37 GMT  
		Size: 4.5 MB (4500353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba1b65745770385ae70089a14587ca39d739e3b024a7fb096649cb68f71be65`  
		Last Modified: Wed, 18 Apr 2018 19:25:22 GMT  
		Size: 21.5 MB (21493269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1694551794faf9fde72e2a8f8b190721f845982fffa4d28319589e263e13b858`  
		Last Modified: Wed, 18 Apr 2018 19:25:19 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7af82c93adaab44a2a14616e5130e5f1767d4e88568160e318f2603c9bb142de`  
		Last Modified: Wed, 18 Apr 2018 19:25:19 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb11f5110ece208a3f66a6546d8b27285c2d8e2bea0ce75958d42cae95f0825c`  
		Last Modified: Wed, 18 Apr 2018 19:25:18 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1a499e1cecceed86876ed52f1d2627e0a7a55817a9dc9d961599bfd58bf49919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.9 MB (40903816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9832173a8b37cea915aaba59d1c8c3d0d8bdff534451c992cdfe635c89ee19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:54:07 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 05 Apr 2018 18:02:59 GMT
ENV CHRONOGRAF_VERSION=1.4.3.1
# Thu, 05 Apr 2018 18:03:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 05 Apr 2018 18:03:16 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 05 Apr 2018 18:03:19 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 05 Apr 2018 18:03:19 GMT
EXPOSE 8888/tcp
# Thu, 05 Apr 2018 18:03:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Apr 2018 18:03:24 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 05 Apr 2018 18:03:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Apr 2018 18:03:27 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c49a533398d3192bf14fbaff633d7dc2f74a31acb58a9ed3277e70533f19c64`  
		Last Modified: Wed, 14 Mar 2018 15:55:32 GMT  
		Size: 3.9 MB (3873124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640f221fd06a8ba76adb25b57547cfa8fa609058850b14efd153c0f1d0c4f4f6`  
		Last Modified: Thu, 05 Apr 2018 18:03:48 GMT  
		Size: 17.7 MB (17728687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f620fa7f91eb0c68256682978c729f4c6715fe16234d5a7d41f89381af0369`  
		Last Modified: Thu, 05 Apr 2018 18:03:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1e488e65eae045539ac88fd0fc929c32f9079a98069114aaac6d2db0fd8820`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eeb2ad6fa3badeca38c84d1b853a324e020ef056ec2098fd6a12707c8d3d9ba`  
		Last Modified: Thu, 05 Apr 2018 18:03:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6bfd7f16c10e8a7cbd9cf9c3d635ee5054ed86e5d3dffaa9c8eaea672877804b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44536514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c946aed92b60477860d8ff68738406100c35f8072e165084a4a06e4f369e18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 00:50:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 19 Apr 2018 08:40:54 GMT
ENV CHRONOGRAF_VERSION=1.4.4.0
# Thu, 19 Apr 2018 08:41:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 19 Apr 2018 08:41:42 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 19 Apr 2018 08:41:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 19 Apr 2018 08:41:44 GMT
EXPOSE 8888/tcp
# Thu, 19 Apr 2018 08:41:45 GMT
VOLUME [/var/lib/chronograf]
# Thu, 19 Apr 2018 08:41:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 19 Apr 2018 08:41:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Apr 2018 08:41:48 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fbb595522d03c9501f6d5fbbf579b5656caa58ed279424683f8deccaf279a6`  
		Last Modified: Thu, 15 Mar 2018 00:52:57 GMT  
		Size: 4.1 MB (4075003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4404833568760bdb00b413cd350bfb24f5d54ca6c4f2c6b08d4907499cfd7593`  
		Last Modified: Thu, 19 Apr 2018 08:42:51 GMT  
		Size: 20.1 MB (20099912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac45c45025673868a6614dfd51f3ac7bf64d92029b8edabb44a22df1a2bd9f88`  
		Last Modified: Thu, 19 Apr 2018 08:42:43 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4f24c64312d53163b4ee948cd620609d38b08fe4e4c2ec1456bccd7a927487`  
		Last Modified: Thu, 19 Apr 2018 08:42:43 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5620d76e28e404527d71a2905e6f7fbb1be1babf623c3dd7ee0f9b3bc3afd47e`  
		Last Modified: Thu, 19 Apr 2018 08:42:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
