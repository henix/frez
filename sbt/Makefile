.PHONY: install

sbt-launch.jar:
	wget -c http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.5/sbt-launch.jar
	sha1sum -c $@.sha1

install:
	install -vd ~/.sbt/0.13/plugins/
	install -vc -b build.sbt ~/.sbt/0.13/build.sbt
	install -vc -b plugins.sbt ~/.sbt/0.13/plugins/build.sbt
