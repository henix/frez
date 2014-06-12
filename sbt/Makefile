.PHONY: install

sbt-launch.jar:
	wget -c http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.5/sbt-launch.jar
	sha1sum -c $@.sha1

install:
	install -vd ~/bin/
	install -v -m 775 sbt ~/bin/
	install -v -m 664 sbt-launch.jar ~/bin/
	install -vd ~/.sbt/0.13/plugins/
	install -v -m 664 build.sbt ~/.sbt/0.13/build.sbt
	install -v -m 664 plugins.sbt ~/.sbt/0.13/plugins/build.sbt
