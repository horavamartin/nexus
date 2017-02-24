echo Overriding "nexus.vmoptions" file.
echo -e "-Xms${JAVA_MIN_MEM}\n" \
	 "-Xmx${JAVA_MAX_MEM}\n" \
	 "-XX:MaxDirectMemorySize=${MAX_DIRECT_MEMORY_SIZE}\n" \
	 "-XX:+UnlockDiagnosticVMOptions\n" \
	 "-XX:+UnsyncloadClass\n" \
	 "-XX:+LogVMOutput\n" \
	 "-XX:LogFile=../sonatype-work/nexus3/log/jvm.log\n" \
	 "-Djava.net.preferIPv4Stack=true\n" \
	 "-Dkaraf.home=.\n" \
	 "-Dkaraf.base=.\n" \
	 "-Dkaraf.etc=etc/karaf\n" \
	 "-Djava.util.logging.config.file=etc/karaf/java.util.logging.properties\n" \
	 "-Dkaraf.data=../sonatype-work/nexus3\n" \
	 "-Djava.io.tmpdir=../sonatype-work/nexus3/tmp\n" \
	 "-Dkaraf.startLocalConsole=false" > nexus.vmoptions

./nexus run