.PHONY: install

sbt-launch.jar:
	wget -c https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.7/sbt-launch.jar
	sha1sum -c $@.sha1

install: sbt sbt-launch.jar
	install -vd ~/bin/
	install -v -m 775 sbt ~/bin/
	install -v -m 664 sbt-launch.jar ~/bin/
