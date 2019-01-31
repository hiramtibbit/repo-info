## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:920c11a06ff417d2e3f52029eb205c6b8181ecf6c40dfb5d760dd077424e826e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c15a065c87721fc70aabbf1417a5b6c36fec96dc90c2ac242a2cd711c7b7f311
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870c809df156b8c85e5754a8335107003648a958c1533af31670629b609e464e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 30 Jan 2019 22:39:27 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 30 Jan 2019 23:36:27 GMT
ENV CHRONOGRAF_VERSION=1.7.7
# Wed, 30 Jan 2019 23:36:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 30 Jan 2019 23:36:34 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 30 Jan 2019 23:36:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 30 Jan 2019 23:36:35 GMT
EXPOSE 8888
# Wed, 30 Jan 2019 23:36:35 GMT
VOLUME [/var/lib/chronograf]
# Wed, 30 Jan 2019 23:36:35 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:36:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:36:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c86720d58255ecee2b507baa83b533c47ef0c48c0e8952f2a5acfc8d931098`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 309.1 KB (309130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b3a61961ce5c59d9efdcdf263953184aa627e50871bfa69cb739ab31fe14fd`  
		Last Modified: Wed, 30 Jan 2019 23:37:21 GMT  
		Size: 14.2 MB (14151035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df7fa09526350eaacd8ca62bb75a17b13829619037138993d5ec97337a36d38`  
		Last Modified: Wed, 30 Jan 2019 23:37:16 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb563bcff867421f9b2f055e593c9c1c1e71cf2202540a0556ed439334359a5`  
		Last Modified: Wed, 30 Jan 2019 23:37:16 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be11a62155cc0edaa6364eea96e5d4feab81de681e95482bdc26fbe4da51cb7d`  
		Last Modified: Wed, 30 Jan 2019 23:37:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
