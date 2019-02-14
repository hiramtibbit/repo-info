## `mongo:unstable-windowsservercore`

```console
$ docker pull mongo@sha256:7140be2d62ec31e12a97e5fdb763c79139767c3b90581dbca8c7141bd850fad6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64
	-	windows version 10.0.16299.967; amd64
	-	windows version 10.0.17134.590; amd64

### `mongo:unstable-windowsservercore` - windows version 10.0.14393.2791; amd64

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

### `mongo:unstable-windowsservercore` - windows version 10.0.16299.967; amd64

```console
$ docker pull mongo@sha256:2fd0361af354423c8f3da602b7d07888e94124f9e50aaaceefb6d20cd26508e7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3738414585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686febf9687b9cb1f8fbcc4d8a7eddaec0161a8fbed2d9a91355f1e13049541f`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Fri, 08 Feb 2019 07:16:29 GMT
RUN Install update 10.0.16299.967
# Thu, 14 Feb 2019 10:18:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 12:04:26 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 12:04:27 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 12:04:28 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:26:25 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:26:27 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:26:29 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:26:30 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:effca3ebc3a86f19a139eb7047c6e97d2fe4c941737e8d9698820d0491ccf530`  
		Last Modified: Mon, 11 Feb 2019 21:05:02 GMT  
		Size: 873.9 MB (873894336 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4273f2f648bb455b5339bc8719afa5ca050432c7fd18636bbea664f8f035578`  
		Last Modified: Thu, 14 Feb 2019 12:49:56 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f7663ff0f813f89e3548a37554314fbb5a444e091d778c4457b34dd8647b5e`  
		Last Modified: Thu, 14 Feb 2019 13:21:04 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a39fc11e918e9ed78931d9ccb5337f5d4141dd6786098e49797bb00b520523b`  
		Last Modified: Thu, 14 Feb 2019 13:21:04 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2fdfee48c02a6d143aaea69ba9f30b4aaa29187e80da6cd28d834822c3419d`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63969c76683e2fd6604db7b86718ad2e1da8a4b224e58142a3e4b0d4346ffe24`  
		Last Modified: Thu, 14 Feb 2019 13:24:13 GMT  
		Size: 590.2 MB (590211222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7777455bad992e9634d71d1c1b02cd0bc44e3230de1956fd0b80fd6e27528461`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195b31dfe5867d1b67c5adc2b84d7f566fb1f31f4f9fc3967f29d96ca58c8b4e`  
		Last Modified: Thu, 14 Feb 2019 13:21:02 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8235efd1b7954956202059a456cdc37937c1df013b06a050c8747e130fe87e3f`  
		Last Modified: Thu, 14 Feb 2019 13:21:01 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:unstable-windowsservercore` - windows version 10.0.17134.590; amd64

```console
$ docker pull mongo@sha256:c9cb8c938e99326acd48d807a367000ca30947871fd3288891c4ff115fdd0523
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2814491714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f762645d44fb0dffa8584c2d08cf317210072e98ecb1e03659caecf7b8b2932e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 07 Feb 2019 23:00:02 GMT
RUN Install update 10.0.17134.590
# Thu, 14 Feb 2019 11:32:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Thu, 14 Feb 2019 12:26:45 GMT
ENV MONGO_VERSION=4.1.8
# Thu, 14 Feb 2019 12:26:46 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2012plus-4.1.8-signed.msi
# Thu, 14 Feb 2019 12:26:48 GMT
ENV MONGO_DOWNLOAD_SHA256=b0de0cc0e3b1af73435e4b11a61776af4ee178339abdd2d31674d14ab7f1bbc0
# Thu, 14 Feb 2019 12:48:15 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Thu, 14 Feb 2019 12:48:17 GMT
VOLUME [C:\data\db C:\data\configdb]
# Thu, 14 Feb 2019 12:48:19 GMT
EXPOSE 27017
# Thu, 14 Feb 2019 12:48:21 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e94f7b83ce20c90f9f1b0323c3f9c3c791163e44e7069e47cd76cf50a3a07ef`  
		Last Modified: Mon, 11 Feb 2019 21:11:29 GMT  
		Size: 588.0 MB (587983329 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:608c11b759474cb7931cb0eaa5a61eebd1ead65f3503252a1524d8eb1eda6fc6`  
		Last Modified: Thu, 14 Feb 2019 13:16:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cf96d67d1c6f2af1056bd79de3913e286de3311ec93abda39aab9d5b8c6b48`  
		Last Modified: Thu, 14 Feb 2019 13:24:49 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07cbdbda6281af29b548fd0a6ddfe365b8fa8f32e810be94486499518878d254`  
		Last Modified: Thu, 14 Feb 2019 13:24:49 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:807ffd1b634e7f7d1c901f4236eb87b8d5f8b2bb6720fd1ce53bb23265711bc0`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c58092895b20b39ca4185b0b7b703d1c91e7a3e3bdee4de69d2aeb768bff00`  
		Last Modified: Thu, 14 Feb 2019 13:26:55 GMT  
		Size: 566.8 MB (566811684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bc3b69b0f0bbaf9c268cc59642ead46e7db79057b4eb925734088864b2291`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03bb7b70af61ec37a6f8b06acbc418c3c81fb6f52d32cd8bcffe5f735fdbf560`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de4d8eaff101fdaa2da9464527170eefd7246bd229b40e897fc64ea6d1e839b`  
		Last Modified: Thu, 14 Feb 2019 13:24:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
