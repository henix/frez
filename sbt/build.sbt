import com.typesafe.sbt.SbtNativePackager._
import NativePackagerKeys._

resolvers += Resolver.mavenLocal

packageArchetype.java_application
