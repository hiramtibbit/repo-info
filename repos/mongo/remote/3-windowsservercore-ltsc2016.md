## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:06b8ef59e26d3e50ece2973c1b5bf8d7bc7361c61fe52840cd3725bb54aa85fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull mongo@sha256:c22cefb0a556dc1843045874f4e2b99ab4ea29d1a9d7e20181859489c58e553c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 GB (6199071246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:703f52144d34ffea9a9db503c2d1b3fda5f33dd44d764fac5e853c790243217d`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Thu, 14 Feb 2019 10:15:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 10:21:24 GMT
ENV MONGO_VERSION=3.6.10
# Thu, 14 Feb 2019 10:21:26 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.10-signed.msi
# Thu, 14 Feb 2019 10:21:27 GMT
ENV MONGO_DOWNLOAD_SHA256=959acce14e4a565c1eb090a3430f20a7a04cadbe2d31b3367a7ff44b14e5b24d
# Thu, 14 Feb 2019 10:40:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 10:40:33 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 10:40:35 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 10:40:37 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:33e3f629f8e74d92de73bbc723579547f0dd6f434077ae65e3418c97061f6c4f`  
		Last Modified: Thu, 14 Feb 2019 12:49:25 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc56b3ffd089de956deb8d8501e043d3251afb3c45444a0db5c09224150f9588`  
		Last Modified: Thu, 14 Feb 2019 12:50:24 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:884b51f9cbb5e225931f38dedbde80c9598edb12e856db17772be33369f9331c`  
		Last Modified: Thu, 14 Feb 2019 12:50:24 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b54755c00637e038603d7531b58ac4bd026655e085239a19a576043d5d99fc2`  
		Last Modified: Thu, 14 Feb 2019 12:50:22 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e944c8400ae6dba63394949be9c6efcf651d003062bd9fcf99dbee5be4d30c`  
		Last Modified: Thu, 14 Feb 2019 12:59:59 GMT  
		Size: 559.0 MB (559015767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcf801eb80eb73709545d4d3a9e787cc048d6011b1d08a530a02dad60bf8375`  
		Last Modified: Thu, 14 Feb 2019 12:50:22 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105908f5f553570d23edfcefdc27aa9eb650f28fcec22050a73001372e700049`  
		Last Modified: Thu, 14 Feb 2019 12:50:22 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5093c424045083757aee9f569aa53371387f478c437b441f4bd6c8a7c31aad17`  
		Last Modified: Thu, 14 Feb 2019 12:50:22 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
