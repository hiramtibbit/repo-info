## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:a83faf20a517f5763edbc849516c9c06659f780c97299dbee59a1b5f90c55757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:39b162ca33b4aac2334254793b738793ea7249cc5940814837830f14bf528b90
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4789005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0d900571a67fa14097605b5ba825ebea47ca8268f50b63bbd5be65371c1a5f`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 27 Apr 2019 01:16:26 GMT
COPY file:951cddb2116a5e8f7b1ebb3a9eb558b8fedafbe83758ce42f4c5063e1e803145 in /nats-streaming-server 
# Sat, 27 Apr 2019 01:16:26 GMT
EXPOSE 4222 8222
# Sat, 27 Apr 2019 01:16:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Sat, 27 Apr 2019 01:16:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7be48d0418b5d1f6f338ddd32c1c2133bc0bcafb489cf95114b40fda1ab90b98`  
		Last Modified: Sat, 27 Apr 2019 01:16:39 GMT  
		Size: 4.8 MB (4789005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
