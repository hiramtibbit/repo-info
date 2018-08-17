## `mongo:3-windowsservercore`

```console
$ docker pull mongo@sha256:8766e2fab1a13041f0e4c1deebf91cf55dcb46d94447bf3481c1b225d0ce5d78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64
	-	windows version 10.0.16299.611; amd64

### `mongo:3-windowsservercore` - windows version 10.0.14393.2430; amd64

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

### `mongo:3-windowsservercore` - windows version 10.0.16299.611; amd64

```console
$ docker pull mongo@sha256:79c7d67c6cf77a9ac10a15f905520d4dec0d14ffdf3307e281bf92bf389d1de1
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 GB (3650455792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8bdd1a4630a8b4f5f105cd466dd79b373fc6ff96a0e09e47c0357e5ca157c01`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Fri, 17 Aug 2018 09:24:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Fri, 17 Aug 2018 09:39:56 GMT
ENV MONGO_VERSION=3.6.6
# Fri, 17 Aug 2018 09:39:57 GMT
ENV MONGO_DOWNLOAD_URL=https://downloads.mongodb.org/win32/mongodb-win32-x86_64-2008plus-ssl-3.6.6-signed.msi
# Fri, 17 Aug 2018 09:39:57 GMT
ENV MONGO_DOWNLOAD_SHA256=584bc98ce5755f419b7182c3abf1c632a4365e28577a4f498be2c291beeae7c2
# Fri, 17 Aug 2018 09:58:52 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 	if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=all' 		); 	$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongo --version'; mongo --version; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\mongodb\bin\*.pdb -Force; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Fri, 17 Aug 2018 09:58:54 GMT
VOLUME [C:\data\db C:\data\configdb]
# Fri, 17 Aug 2018 09:58:56 GMT
EXPOSE 27017/tcp
# Fri, 17 Aug 2018 09:58:57 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Mon, 13 Aug 2018 18:28:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:979b51c3a12a3db81990ebd92c5d5a3325e035f84c0503e987ede3bfd73f44df`  
		Last Modified: Fri, 17 Aug 2018 11:36:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bf6816aaf59c0f07a4e05da584c6f7ffd5bb1b88857d1b2a24752229d722acd`  
		Last Modified: Fri, 17 Aug 2018 11:38:28 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dff2a77315c980fc8da6840e1600fa9d1142aa145cf7121dae87f69f08d30035`  
		Last Modified: Fri, 17 Aug 2018 11:38:27 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd5339b2551196f141fa5346a4108a2a3d4a100fb608d372c690a9e422b967f`  
		Last Modified: Fri, 17 Aug 2018 11:38:25 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c54ed76500887df1504bcf67fcb031298a1593ad861d92a6f79fcb4dcb6e2171`  
		Last Modified: Fri, 17 Aug 2018 11:39:29 GMT  
		Size: 538.3 MB (538311680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb197b4854efcb4bbee22afc60cf1fb20a51bcc1b1cffc28e85c6888200e896`  
		Last Modified: Fri, 17 Aug 2018 11:38:25 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729482620dd2198dab11438727cc50e717b1fddcad67d09fd4fffb500055d6e3`  
		Last Modified: Fri, 17 Aug 2018 11:38:25 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6adf24a0727d94d5d8cd3e44983c2e045c998176364da5a1bfb8517e81d0a3a`  
		Last Modified: Fri, 17 Aug 2018 11:38:25 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
