## `mongo:3-windowsservercore-ltsc2016`

```console
$ docker pull mongo@sha256:742c3362fa3641235385cc4399e7061ab41d8362a375bb605e6ed229239696e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `mongo:3-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull mongo@sha256:3319467d87789a0a0abe1d2a73ca9735fd595fec6355abd5e7fc34fcc9b7ff33
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5583769451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaae8b607660ee9b2910feb157126e8b8ede89c2f844a5a17305c4ec22335d9`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Fri, 17 Aug 2018 09:21:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 09:31:57 GMT
ENV MONGO_VERSION=3.6.6
# Fri, 17 Aug 2018 09:31:58 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.6-signed.msi
# Fri, 17 Aug 2018 09:31:59 GMT
ENV MONGO_DOWNLOAD_SHA256=584bc98ce5755f419b7182c3abf1c632a4365e28577a4f498be2c291beeae7c2
# Fri, 17 Aug 2018 09:39:35 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 09:39:38 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 09:39:39 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 09:39:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b95dd3ea2455375b05a0040130b4b3f2bd839787743ff33b9d31af75610902b1`  
		Last Modified: Fri, 17 Aug 2018 11:36:08 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f436657de382f7b588b03eef6d76b3b965ac8758fa1222657023cb2b56e1da`  
		Last Modified: Fri, 17 Aug 2018 11:37:57 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d3abf6f267c68c278861b646427f3334220b3e0e8a151360455433546ef302`  
		Last Modified: Fri, 17 Aug 2018 11:37:58 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3e36bac5a6a459ee72e0122610c118083b25757239404ccb2112b7d6f86a05`  
		Last Modified: Fri, 17 Aug 2018 11:37:54 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e87eac4209f28ddab87492a70ec110bf5352d439abe8de222c975fb15897f9`  
		Last Modified: Fri, 17 Aug 2018 11:38:11 GMT  
		Size: 71.9 MB (71870094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd64f23b6590864e4acc8e53762465fabb7c4b582917bcc2d6b7df84978e1bd`  
		Last Modified: Fri, 17 Aug 2018 11:37:54 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ebf34cf3513c3ca600710940cfe9ad77c187bcf2e76cb4ccd76d3fdce77304`  
		Last Modified: Fri, 17 Aug 2018 11:37:54 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690bae0f9ca414f8f0a722ee9f77c37b1730d4fe6cac61aaa17fdef4aaa5c2f`  
		Last Modified: Fri, 17 Aug 2018 11:37:54 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
