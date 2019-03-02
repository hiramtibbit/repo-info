## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:8262bdbdfb2ef1ffb7ab93956fdccc7566df5815363bec259bf2d83a2ad860ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:1985174c87050f77f040db9201faf6ed15915cf2bfe9366aa276cdd01284e888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.0 MB (410971923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:836b41a02f57a171fce29730161d26909f337672888b6065a97a5a3bcc9413d2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 01 Mar 2019 22:19:41 GMT
ADD file:b599e9fb65fc9d9df4487ab6b8405dcaba819ae77270a40eaa3ae57b1b66524d in / 
# Fri, 01 Mar 2019 22:19:41 GMT
CMD ["/bin/bash"]
# Fri, 01 Mar 2019 22:20:33 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz"  && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:f64ae36417d79eb6674c978614b5f335753eef62d26d5396fe9ea6d57e2ca53a`  
		Last Modified: Fri, 01 Mar 2019 22:21:08 GMT  
		Size: 61.3 MB (61309745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53f31a070c59b887db8e17d982eae47c90c5c4a31188cbe046506296c2428`  
		Last Modified: Fri, 01 Mar 2019 22:21:29 GMT  
		Size: 349.7 MB (349662178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:faead9b8a695d050f6501780d28574099e5cde45cda0fe0ea1e68db974af15f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.2 MB (412220410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3b7c76b6c80ea71d72a45486caf8b54e4eb8e0555dc961aa8e67858b4ec914`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 02 Mar 2019 09:45:08 GMT
ADD file:aed06e95346dd305e387e3782b7a91674d573f7f58a82413b7496c5f5f4eb093 in / 
# Sat, 02 Mar 2019 09:45:09 GMT
CMD ["/bin/bash"]
# Sat, 02 Mar 2019 09:46:00 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-b3740d57b8e0cde51e2a18baa3db230c47383cdfb47dba5ee7ba1f8f955c35b9.tar.gz"  && echo "b86589a8ce7c636f66f92b093c0f85b4e1be98bfd2842ec98050f49b51483eea  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2b194c25de7396c6ed4b7879d7e9d5d1d76f7dc212ceba4c0ecd67c6a628475a`  
		Last Modified: Sat, 02 Mar 2019 09:46:42 GMT  
		Size: 62.6 MB (62558230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64c0535f0251ba0aeaa1a279ce3f761dad63ec42eb68b52ee808af198b0fcbe`  
		Last Modified: Sat, 02 Mar 2019 09:47:32 GMT  
		Size: 349.7 MB (349662180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
