# Copyright (c) 2016-present Sonatype, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific 

FROM sonatype/nexus3:3.2.1

MAINTAINER Martin Horava <horavamartin@gmail.com>

ENV JAVA_MIN_MEM=128m \
	JAVA_MAX_MEM=256m \
	MAX_DIRECT_MEMORY_SIZE=2G

COPY nexus.sh /opt/sonatype/nexus/bin/nexus.sh

WORKDIR ${NEXUS_HOME}/bin
	
USER root

# Delete vmoptions file and prepare new
RUN rm nexus.vmoptions && \
	touch nexus.vmoptions && \
	chmod o+w nexus.vmoptions

USER nexus

ENTRYPOINT sh nexus.sh