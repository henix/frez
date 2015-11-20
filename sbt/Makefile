.PHONY: install

sbt-launch.jar:
	wget -c https://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch/0.13.9/sbt-launch.jar
	sha1sum -c $@.sha1

install: sbt sbt-launch.jar
	install -vd ~/bin/
	install -v -m 755 sbt ~/bin/
	install -v -m 644 sbt-launch.jar ~/bin/
