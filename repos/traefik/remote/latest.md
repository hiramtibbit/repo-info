## `traefik:latest`

```console
$ docker pull traefik@sha256:66eeef8d7c7a3fd1c2f113b706713f9613f44046673f6b74424408b1eb358e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `traefik:latest` - linux; amd64

```console
$ docker pull traefik@sha256:b713d421276e33610f7dbbd25b3cc8d030f41277cc82f641316ed737a56d282a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.2 MB (20164791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb5ce07475c690dbfbc475ebf0b57bf2e8dc5bc9a89dce64616738685e708080`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 19 Mar 2019 21:34:26 GMT
COPY file:16631ba5b73b1c0ef18d038c89d29ce03d2772a9a3d775abef35c4085f29a3bf in /etc/ssl/certs/ 
# Mon, 01 Apr 2019 23:25:51 GMT
COPY file:82442c484066dcb603a5be72f299226172b964bf443829f2bc3cb98321a3e28d in / 
# Mon, 01 Apr 2019 23:25:51 GMT
EXPOSE 80
# Mon, 01 Apr 2019 23:25:51 GMT
VOLUME [/tmp]
# Mon, 01 Apr 2019 23:25:52 GMT
ENTRYPOINT ["/traefik"]
# Mon, 01 Apr 2019 23:25:52 GMT
LABEL org.label-schema.vendor=Containous org.label-schema.url=https://traefik.io org.label-schema.name=Traefik org.label-schema.description=A modern reverse-proxy org.label-schema.version=v1.7.10 org.label-schema.docker.schema-version=1.0
```

-	Layers:
	-	`sha256:d572f7c8e98390811ccda70b3cd865d413636517e557d586db244257f25ef6df`  
		Last Modified: Tue, 19 Mar 2019 21:35:04 GMT  
		Size: 132.0 KB (132022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc858cf9fbac23402c8332110827b816e70cd46c661b6a66e7e6b51d836e459`  
		Last Modified: Mon, 01 Apr 2019 23:26:39 GMT  
		Size: 20.0 MB (20032769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
