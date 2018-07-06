## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:11ec105aaaa92ebcdfacf6ec121308915716ce2855662016472637b75e81d3dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

```console
$ docker pull notary@sha256:2c11a43ddb1a2428d9a4f0ccbb306bbeabbdfc9e8c8e6538a65d7347de0545a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6239221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf29868595cb94a800973bb87b17bab853fbeddc9f65fca7203bbed2f4689834`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:45:58 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:58 GMT
COPY file:f2a069fbf8217b93f22caec2c889c13a9ad6c10fd0ce97ffe350a3997ca55804 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:45:59 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:00 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:00 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43e30d64a03f2a2a81428395b8c15e6bab455cf66fbea2759377bca405a978`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f65e4c7129f856bab100e5f889b1c636664079cfa34ca0f38e7e768444d96e25`  
		Last Modified: Fri, 06 Jul 2018 15:47:35 GMT  
		Size: 4.0 MB (4030702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3328f8e9ad2cb80e0bbb79e766c4653eaf4a8486779145443d0d2fceb227c52`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 377.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfbcddf98334594584b5b1152095ea1cd064d34754a5f2f42cd4ce0a9f34028`  
		Last Modified: Fri, 06 Jul 2018 15:47:34 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
