.PHONY: install

sbt-launch.jar:
	wget -c https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.7/sbt-launch.jar
	sha1sum -c $@.sha1

install: sbt sbt-launch.jar build.sbt plugins.sbt
	install -vd ~/bin/
	install -v -m 775 sbt ~/bin/
	install -v -m 664 sbt-launch.jar ~/bin/
	install -vd ~/.sbt/0.13/plugins/
	install -v -m 664 build.sbt ~/.sbt/0.13/build.sbt
	install -v -m 664 plugins.sbt ~/.sbt/0.13/plugins/build.sbt
