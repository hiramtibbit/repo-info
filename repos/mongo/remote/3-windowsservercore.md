## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:2883fa4d3501af20f7df65239069c51df694ff5d83c0854862baa98424178630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull mongo@sha256:2d8edf909e683084a3f315bf3b3b69ef857d228bdf368de0cfb93be76bcf605f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5803256834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1921cd1a5e21e02505b043470e46ef9f6a123051dd5849b96be3930e792c8903`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 16:02:36 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Jun 2019 16:05:50 GMT
ENV MONGO_VERSION=3.6.13
# Wed, 12 Jun 2019 16:05:51 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.13-signed.msi
# Wed, 12 Jun 2019 16:05:52 GMT
ENV MONGO_DOWNLOAD_SHA256=b7cf208f31432fa511273a65a4a983866b98be4f7f5e61c5c99279a873f22b71
# Wed, 12 Jun 2019 16:14:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 16:14:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Jun 2019 16:14:40 GMT
EXPOSE 27017
# Wed, 12 Jun 2019 16:14:42 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a93a9306787f35923544db17afaac32adba5f64cbbb54158d169119bec4293a0`  
		Last Modified: Wed, 12 Jun 2019 17:13:38 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546827ba620ef96ed277f5420e81c309e1902ddf672c851879bcaa068b7f1c86`  
		Last Modified: Wed, 12 Jun 2019 17:14:16 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f03a9377e1023dbd45809feab105f8f004c45ef58947b2e1dd06e4a7a536697`  
		Last Modified: Wed, 12 Jun 2019 17:14:16 GMT  
		Size: 1.2 KB (1170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a1ae6e103c6593c002b12ed0dcf99303ff1c47c175fe3dc48c0db998ca07f0`  
		Last Modified: Wed, 12 Jun 2019 17:14:13 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc72d9ac5148e2d1e2fcad03c926a40a267f177bd0c1baeb63632487bdf807e9`  
		Last Modified: Wed, 12 Jun 2019 17:14:52 GMT  
		Size: 93.3 MB (93273805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eff3dbc558263cd549412f27dc77fec1168d4ec1b460a54655757fea4f0dac8`  
		Last Modified: Wed, 12 Jun 2019 17:14:13 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2a9018bf6605f19610a84b6e38c8854330b766bbd58a09affd9228500dfcd7`  
		Last Modified: Wed, 12 Jun 2019 17:14:13 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27410b515048c603030e63ce9495b5b4ff879b9bc29a257279bd3420253b28`  
		Last Modified: Wed, 12 Jun 2019 17:14:14 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
