## `percona:ps-5.6.42`

```console
$ docker pull percona@sha256:4e9fc7e0c6d632bd51e3fe401a0a030f0c08e97233d2e34319bfaef17b752558
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `percona:ps-5.6.42` - linux; amd64

```console
$ docker pull percona@sha256:f6ea7f3a5bb6c227fc04bb407a3085609f92a8e498faa2061a82212091edabaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (137995147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8069b6630d70fd9019391eac9aec667e4cd80263cd2a797e99ed6acbd6c5a97`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 09 Oct 2018 18:19:47 GMT
ADD file:fbe9badfd2790f0747a25fbe5c94a6daa78969511ca08c8d4ac654f3442570de in / 
# Tue, 09 Oct 2018 18:19:48 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181006
# Tue, 09 Oct 2018 18:19:48 GMT
CMD ["/bin/bash"]
# Thu, 22 Nov 2018 19:20:44 GMT
MAINTAINER Percona Development <info@percona.com>
# Thu, 22 Nov 2018 19:22:10 GMT
RUN groupdel input && groupadd -g 999 mysql
# Thu, 22 Nov 2018 19:22:11 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 22 Nov 2018 19:22:13 GMT
RUN export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	&& gpg --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona 	&& rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 	&& curl -L -o /tmp/percona-release.rpm http://www.percona.com/downloads/percona-release/redhat/0.1-6/percona-release-0.1-6.noarch.rpm 	&& rpmkeys --checksig /tmp/percona-release.rpm 	&& yum install -y /tmp/percona-release.rpm 	&& rm -rf "$GNUPGHOME" /tmp/percona-release.rpm
# Tue, 04 Dec 2018 01:14:54 GMT
ENV PERCONA_VERSION=5.6.42-rel84.2.el7
# Tue, 04 Dec 2018 01:15:21 GMT
RUN yum install -y 		Percona-Server-server-56-${PERCONA_VERSION} 		Percona-Server-tokudb-56-${PERCONA_VERSION} 		Percona-Server-rocksdb-56-${PERCONA_VERSION} 		jemalloc 		which 		policycoreutils 	&& yum clean all 	&& rm -rf /var/cache/yum /var/lib/mysql
# Tue, 04 Dec 2018 01:15:22 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Tue, 04 Dec 2018 01:15:22 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Tue, 04 Dec 2018 01:15:22 GMT
COPY file:fe6b1a8e605281e5ec8baec786785211172b14a252ac4bf8d19e30ace28a2e85 in /docker-entrypoint.sh 
# Tue, 04 Dec 2018 01:15:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:15:23 GMT
USER [mysql]
# Tue, 04 Dec 2018 01:15:23 GMT
EXPOSE 3306/tcp
# Tue, 04 Dec 2018 01:15:23 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:aeb7866da422acc7e93dcf7323f38d7646f6269af33bcdb6647f2094fc4b3bf7`  
		Last Modified: Tue, 09 Oct 2018 18:24:50 GMT  
		Size: 74.7 MB (74703002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb10f28c06939cd6f1efb03e3e3aa10ee814c4b2a224ee9c6b671b313cace8c`  
		Last Modified: Thu, 22 Nov 2018 19:25:47 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9857fd8d3c7aef3d406d6b768e7546733d7edc4266f9a8f8c7edb4c763aebe`  
		Last Modified: Thu, 22 Nov 2018 19:25:46 GMT  
		Size: 1.4 KB (1424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55baeba7117c3351a195aafcb9ca765bdf66d993dc68f1e753ebe4b09f955f57`  
		Last Modified: Thu, 22 Nov 2018 19:25:49 GMT  
		Size: 5.9 MB (5892861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ad82239fde5ca38f66d450de3f53afe973add048d90b89468f91bcb4abca4d`  
		Last Modified: Tue, 04 Dec 2018 01:19:24 GMT  
		Size: 57.4 MB (57389574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47de845981c4eeb746c6fc1e3a0edaac43286db97533b86bad0c23f0fc54ffea`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 4.9 KB (4883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6394a033b5aa11bfe7b6e29579efa4dd480b16ababdd39a59cc243cdd92b046b`  
		Last Modified: Tue, 04 Dec 2018 01:19:12 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
