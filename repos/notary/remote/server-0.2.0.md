## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:27b6fa05f0f11fd9132db8be0de27088ffa49081d08dac7c720b8aa64e35165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:a3cab2360d5524f408483cc0239da1ff34f5d209d291aa55bb3dcb6fa5905078
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7987643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaa836250037d5b117b853749afddbd33607a4d24b0bf25d846d2c8ee818ed3`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:05 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:06 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:47:06 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:47:07 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:47:07 GMT
USER [notary]
# Fri, 06 Jul 2018 15:47:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:47:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:47:08 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d08aa0ee6374c81f6c03bd464873a916802e2ce67acce091d3a20036585038`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5433a55d03df909a57d38eee80af055800a8862a9fb0676e91ec1d150e2d007`  
		Last Modified: Fri, 06 Jul 2018 15:49:27 GMT  
		Size: 5.8 MB (5779113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3282b4ffc8751a007406e03367a8f6afc082cd6935c8ebe2b998dcdff9b40ff1`  
		Last Modified: Fri, 06 Jul 2018 15:49:26 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463002e35c473bfa450061fec1656f7bae27ba61b0884c9beae17291859173ea`  
		Last Modified: Fri, 06 Jul 2018 15:49:26 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
