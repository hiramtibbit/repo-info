## `mongo:unstable-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:cdab2f7b1f56ce35074bd8d5b9dc81a394008bdb26a115db17d9a4b5c771a1fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `mongo:unstable-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull mongo@sha256:2b29f64179f83512a541894376896db8f48e82e3e1017f88bba830c92db7b7aa
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5731125162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc9c0d53f1e1d0ee265a18e522ca6a2daeb702177bec3650e775c266d43887d5`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Thu, 14 Feb 2019 10:15:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 11:54:41 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 11:54:42 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 11:54:43 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:04:07 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:04:09 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:04:11 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:04:12 GMT
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
	-	`sha256:4f55d807795161b8dfc8e3b54e1d74072740eff422c90796eafec4ffa0d7f09b`  
		Last Modified: Thu, 14 Feb 2019 13:19:04 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e480957bdc658162df2a9d6673180948164b07e5415f49bb97c8aaf66d1cae`  
		Last Modified: Thu, 14 Feb 2019 13:19:03 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e610d52b3f2d7b11ae28e4dc53fb28b3734e490deb135d5ca9a08496ed9351b1`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d29ab179fe584a88aee127ac6fabc9e0208bddaa5a30ba08e750506036efb8`  
		Last Modified: Thu, 14 Feb 2019 13:20:44 GMT  
		Size: 91.1 MB (91069697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bf68a70274f79e3669dcffeb5f571e9cef2f0fae4903c562498095c1a1d7d1`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411a0792c3f2ec1e862585ff236d31652d0c8bc9c72a34034f05290c28c8f79e`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0c15e2001afc0a634d03ac7f9da5e709b0360b4665e5285cda63a846774f3d`  
		Last Modified: Thu, 14 Feb 2019 13:19:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
