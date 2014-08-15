import com.typesafe.sbt.SbtNativePackager._
import NativePackagerKeys._

// use https to access central http://central.sonatype.org/pages/consumers.html#sbt
resolvers += "Secured Central Repository" at "https://repo1.maven.org/maven2"

resolvers += Resolver.mavenLocal

externalResolvers := Resolver.withDefaultResolvers(resolvers.value, mavenCentral = false)

packageArchetype.java_application
