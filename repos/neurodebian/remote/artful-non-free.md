## `neurodebian:artful-non-free`

```console
$ docker pull neurodebian@sha256:489924a0c577ba4b0abacdbc7e7bd954af8927f527147240b5a5b160b044362d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3c0a23461f85d4a05a46edd6d3011f6fc356ac1e74c28405538ee5db4b6b390e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42347907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a918ba5c11d5ef5f5100a06d52db369cd66e0668cdbd7a17bf2fe59bddf8e040`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:34:38 GMT
ADD file:468408277a83dbd0949d04a6bd3fe61c1fda31fb15df76257c1f1502c6b2889b in / 
# Thu, 12 Apr 2018 18:34:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:34:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:34:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:34:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:34:41 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:07:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:07:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Fri, 13 Apr 2018 12:07:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Fri, 13 Apr 2018 12:07:46 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:f56c16792d1e2514d57f86a120f7bff06c8f7ad0f3c26c47f54e8d96f57b1ca7`  
		Last Modified: Thu, 12 Apr 2018 19:14:52 GMT  
		Size: 40.5 MB (40506608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f3fcbcaacdbf8bf99fc9e2cecfae0ca6b637325023b34140d9b328b7cea39a`  
		Last Modified: Thu, 12 Apr 2018 19:14:44 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f1503c00f86eee2f931903a7038268867b9952347e7ae66c8e0bee8a1aff51`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5ce6675ff396e9b2cffca66df5660189168e4e29a301dbae503425b5bc7095b`  
		Last Modified: Thu, 12 Apr 2018 19:14:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29a9bdc981f94e39efbc0aff3f33cffcde04a8fcb08fb1c28d43395451829d6`  
		Last Modified: Thu, 12 Apr 2018 19:14:43 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352078c74003d2adca3908e6dc6614c8c47f0516f08542f8d3960aeca7b16b5`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 1.8 MB (1835177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fb56c4c391254ce65a72e576ecc8372d000f2b8024d9b85df2da1f6ca533c6`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e4b1f433db7217fae2bbdedaf78c810dec39297db7999b29e79f8077ae91af`  
		Last Modified: Fri, 13 Apr 2018 12:27:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de834202463b9c5e9255c568d55ca02a101e736f0e05b9551205d7080b387cb`  
		Last Modified: Fri, 13 Apr 2018 12:30:16 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
