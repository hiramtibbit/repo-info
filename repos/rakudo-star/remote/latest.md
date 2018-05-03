## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:804f683ccb6cec1d39c950565d4b157d257ba8d4fc7749e9fc57c49028f0254c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:e0fb7e16ad2fb6c141cd4a7cfb264a71bd2e859dd0fe8c902df0dfbc340d400f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.4 MB (131408712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7282b46eca776716fec2beb8149b46d1a30c57025f534fb9137273e65724942`
-	Default Command: `["perl6"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:03:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:03:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:09:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 21:39:09 GMT
MAINTAINER Rob Hoelz
# Wed, 02 May 2018 21:39:11 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 02 May 2018 21:39:11 GMT
ARG rakudo_version=2018.01
# Wed, 02 May 2018 21:39:11 GMT
ENV rakudo_version=2018.01
# Wed, 02 May 2018 21:50:18 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Wed, 02 May 2018 21:50:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 02 May 2018 21:50:18 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c14872d9970c08665f5dd1b41a6adfb11583b8337c0f9236dcd23e093a4f02`  
		Last Modified: Sat, 28 Apr 2018 20:46:10 GMT  
		Size: 10.7 MB (10747762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ae159b9cae5ecb1a10a4acd04b700b23bfb8293d616bc9efd9aa234b0c1fc3`  
		Last Modified: Sat, 28 Apr 2018 20:46:09 GMT  
		Size: 4.3 MB (4335353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cbf2b79699f7773c66af1f4258b352d39c8ef23ccfe861db8bb4661e7894e0`  
		Last Modified: Sat, 28 Apr 2018 20:47:32 GMT  
		Size: 50.0 MB (50025823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2daae00f9b4c5b8eb679d2eb5a051a7f952fa3c5dd10837055034294f384430`  
		Last Modified: Wed, 02 May 2018 22:13:25 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7be3dddea8a193ff32fc40969c11bc404afe02b8f66f6f07deeb9d865f83d0`  
		Last Modified: Wed, 02 May 2018 22:13:30 GMT  
		Size: 21.0 MB (20979852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
