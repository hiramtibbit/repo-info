<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `swarm`

-	[`swarm:1.2.9`](#swarm129)
-	[`swarm:latest`](#swarmlatest)

## `swarm:1.2.9`

```console
$ docker pull swarm@sha256:406022f04a3d0c5ce4dbdb60422f24052c20ab7e6d41ebe5723aa649c3833975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swarm:1.2.9` - linux; amd64

```console
$ docker pull swarm@sha256:21ba7705cd79ead9495d5bea3b14a98e70b1e8ec97c35b095e6f8562a3f547ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff454b4a0e84e50c50e3df457ad44b80f1a67ec6ec75cff5117dd5dc46bf4965`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Fri, 01 Jun 2018 20:34:37 GMT
COPY file:a0ae60e7cd059ed4cd6a1ad271463ff13a63dafb05ef44ea98778a3d5d7ca9e4 in /swarm 
# Fri, 01 Jun 2018 20:34:37 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Fri, 01 Jun 2018 20:34:38 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Fri, 01 Jun 2018 20:34:38 GMT
ENV SWARM_HOST=:2375
# Fri, 01 Jun 2018 20:34:38 GMT
EXPOSE 2375/tcp
# Fri, 01 Jun 2018 20:34:38 GMT
VOLUME [/.swarm]
# Fri, 01 Jun 2018 20:34:39 GMT
ENTRYPOINT ["/swarm"]
# Fri, 01 Jun 2018 20:34:39 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:d85c18077b82c3550e91fe3c0d4413ff2e0c028c590a05cd282bcc17924e8dce`  
		Last Modified: Fri, 01 Jun 2018 20:34:52 GMT  
		Size: 3.7 MB (3693031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6bb16f8cb1f84ca253dfe59226e75e1d8d6cb27d93f1bb843398219b2b505e`  
		Last Modified: Fri, 01 Jun 2018 20:34:51 GMT  
		Size: 156.8 KB (156763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bac13497d7196c6367aa0e527880c110e71fceb04ea517008234954b3e2f61`  
		Last Modified: Fri, 01 Jun 2018 20:34:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `swarm:latest`

```console
$ docker pull swarm@sha256:c97a27b020ae4439432c842769d8e731661d5987962e33004114e4aba9d03b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `swarm:latest` - linux; amd64

```console
$ docker pull swarm@sha256:476a11b8ed3b825cf3d7cc9c94db299d531534ab61c1b8eb718b564810928a90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4583244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c0df55980b84dfd2a7650af954b77ce2b4013356ede2a3475ebf6884bbfc91`
-	Entrypoint: `["\/swarm"]`
-	Default Command: `["--help"]`

```dockerfile
# Sat, 04 Nov 2017 10:10:51 GMT
COPY file:68bb308564ed8a5ab3947f9312203ba536151a2f0bb9f62af59ef9c6f657cae3 in /swarm 
# Sat, 04 Nov 2017 10:10:51 GMT
COPY file:7544fce8b63059c6e70ecf475487d6e4ea6fef407369869f02d8ea84b211c4de in /etc/ssl/certs/ca-certificates.crt 
# Sat, 04 Nov 2017 10:10:51 GMT
COPY dir:d556676b4fb31ddaa271490e57c3a85e3c4bcc1e809b22d64b2f570c05149a22 in /tmp 
# Sat, 04 Nov 2017 10:10:52 GMT
ENV SWARM_HOST=:2375
# Sat, 04 Nov 2017 10:10:52 GMT
EXPOSE 2375/tcp
# Sat, 04 Nov 2017 10:10:52 GMT
VOLUME [/.swarm]
# Sat, 04 Nov 2017 10:10:52 GMT
ENTRYPOINT ["/swarm"]
# Sat, 04 Nov 2017 10:10:52 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:dd72058debf0b20abcf1ca861c5d62a4e0c4fa0bd9177084f9b108641fbe237f`  
		Last Modified: Sat, 04 Nov 2017 10:11:00 GMT  
		Size: 4.4 MB (4426357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb543654edaf6e61c6ebff00455022bcca5a10cd6f6e6cb0550edf4c8e8fbe2b`  
		Last Modified: Sat, 04 Nov 2017 10:10:59 GMT  
		Size: 156.8 KB (156761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44212202dc6d55870c29a715177456263a88f9c4728f9bf3efc9bba859862b8c`  
		Last Modified: Sat, 04 Nov 2017 10:10:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
