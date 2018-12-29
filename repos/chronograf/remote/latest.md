## `chronograf:latest`

```console
$ docker pull chronograf@sha256:1827f5c4d09e31b99e79c231298c1a06347de138b51ed4bf8778139fe35357bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:9d92ca50888c69d79f2d466d7a5ddf4feb59618bdf0ce9412fea499f7d64ddb5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54943227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b387434f49dfe4d16a5a7082cc3b96d9da976bdcb0bbcb9dfd5bcdd7d5feda2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:29:21 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Sat, 29 Dec 2018 03:29:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:29:32 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:29:32 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:29:32 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:29:33 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:29:33 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:29:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:29:33 GMT
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
	-	`sha256:a5dd1ee367dac4a73505305452a2e28b672eff710bde8af1de4110d15df9da06`  
		Last Modified: Sat, 29 Dec 2018 03:30:22 GMT  
		Size: 27.9 MB (27922645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8475a8fcaf75cc8393c9068a106601bfd00ada454aa07ce97324b08af1adf5`  
		Last Modified: Sat, 29 Dec 2018 03:30:14 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1c0d1957dc8795f30e272662fa0e1bc96a4ccd17a2a7b07a4dd2786303ec8b1`  
		Last Modified: Sat, 29 Dec 2018 03:30:14 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033dec75b4c23b0f0536ededb2d0906c124165f363d3cc108141ac88fb7fc884`  
		Last Modified: Sat, 29 Dec 2018 03:30:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:90959960a8393e037dc30fe288fc91b4ee2cc91e8cf08488f45a9b990617a1e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (48952884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d44e0641f698df869c1e069a21ad050a4be643b05b674690aa4e4d95bbcae13f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:21:43 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Sat, 29 Dec 2018 14:22:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:22:04 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:22:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:22:05 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:22:05 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:22:06 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:22:07 GMT
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
	-	`sha256:8622411ce3f51cd08a646e3112dfd1f8baa5fbfac7e7fe96b05ec2267eb81e6a`  
		Last Modified: Sat, 29 Dec 2018 14:22:52 GMT  
		Size: 25.8 MB (25773614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd79c588e4fb977118179b4c290df7a39c6efedf16b184f71276b5042eb2b87`  
		Last Modified: Sat, 29 Dec 2018 14:22:44 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db168711c5288c936ea29b47a4d7a5109612f617b054b3d4bbc967e287860615`  
		Last Modified: Sat, 29 Dec 2018 14:22:44 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aca0032a2503ce502eec10acfde1ec8f26e9dd857897d9a63beee55996002628`  
		Last Modified: Sat, 29 Dec 2018 14:22:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e6b4498eb6191657be1daa59b4947018ee752a8f53052c78285d7768de1b11e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50405829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc734baf8da057c3bbf11bebdf62345c8f2b39e6f7588eb7173c34bfda978c18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 09:40:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 09:41:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:41:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:41:22 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:41:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:41:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:41:23 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:25 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a4fe19304d6bdd1c1857871e8caf6625e9b9a900bb6bd25eb9c382d3b48a69`  
		Last Modified: Sat, 17 Nov 2018 02:59:15 GMT  
		Size: 4.1 MB (4078493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faaee0e2f4efa34f4d30ebb6a89c664b8b640a449b4fed3f50ff719e6a0dbfc`  
		Last Modified: Tue, 18 Dec 2018 09:42:11 GMT  
		Size: 26.0 MB (25971627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4dde66993354bd8a6a200ef7359381b7ff4e435b4cb25c7e153671f33a046`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00128d00582cbd1831a0d050fcdc377a1472d6996760b8a16d21d1bf80674417`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c65fb86b182cfb3df55ec766dace874484c3ac59f5aa3cdca4a34e3918c75`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
