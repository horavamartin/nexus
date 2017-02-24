if [ ! -f nexus.vmoptions ]; then
	echo "nexus.vmoptions" file not found. Creating it.
	echo "-Xms${JAVA_MIN_MEM}'EOF'" \
		 "-Xmx${JAVA_MAX_MEM}'EOF'" \
		 "-XX:MaxDirectMemorySize=2G'EOF'" \
		 "-XX:+UnlockDiagnosticVMOptions'EOF'" \
		 "-XX:+UnsyncloadClass'EOF'" \
		 "-XX:+LogVMOutput'EOF'" \
		 "-XX:LogFile=../sonatype-work/nexus3/log/jvm.log'EOF'" \
		 "-Djava.net.preferIPv4Stack=true'EOF'" \
		 "-Dkaraf.home=.'EOF'" \
		 "-Dkaraf.base=.'EOF'" \
		 "-Dkaraf.etc=etc/karaf'EOF'" \
		 "-Djava.util.logging.config.file=etc/karaf/java.util.logging.properties'EOF'" \
		 "-Dkaraf.data=../sonatype-work/nexus3'EOF'" \
		 "-Djava.io.tmpdir=../sonatype-work/nexus3/tmp'EOF'" \
		 "-Dkaraf.startLocalConsole=false'EOF'" > nexus.vmoptions
else
    echo "nexus.vmoptions file found. Using it."
fi

/opt/sonatype/nexus/bin/nexus -run