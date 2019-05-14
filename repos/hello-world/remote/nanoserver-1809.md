## `hello-world:nanoserver-1809`

```console
$ docker pull hello-world@sha256:d1a7b20808044b809461f70b7bfa88e13289d9c5d02dac1ebeece5d3feb3c14e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `hello-world:nanoserver-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull hello-world@sha256:057a2292b00553b4ab8e090487aaa8068bf8da87abd563875ffcbfadaf2d03ac
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100603686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02214b8df4e998afe248fa8b4cc45650f0647b6eba17fdef35b855f19318c44`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Tue, 02 Apr 2019 15:26:15 GMT
RUN Apply image 1809-amd64
# Fri, 12 Apr 2019 05:21:02 GMT
RUN cmd /S /C #(nop) COPY file:0afaffc2fa64462107b7178b2ae7d20404ff12f637eabe3a8046192b9d9a0338 in C: 
# Fri, 12 Apr 2019 05:21:03 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:9319e23c867097dbd06eeba65f98262c72d1910ca9d70f4abaa4f49091263e7f`  
		Last Modified: Tue, 09 Apr 2019 17:44:32 GMT  
		Size: 100.6 MB (100601078 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0eddea05ad5408e19330ecca4bf0508a9fe784b4381cb492e9ce8ed1777dd5de`  
		Last Modified: Fri, 12 Apr 2019 05:21:36 GMT  
		Size: 1.7 KB (1659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000c2261a31089558f3ea0a17e285f9081f803852869e2e5a129669d57218bfb`  
		Last Modified: Fri, 12 Apr 2019 05:21:36 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
