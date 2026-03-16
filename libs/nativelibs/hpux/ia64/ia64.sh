#!/bin/ksh

JAVA_HOME=/opt/java6
JAVACMVP_PATH=../../dist_ia64 
KS_PATH=/user1/project/anyid/javaCmvpNativeModule/lib/lib-KeySharp_v1.5/hpux/ia64/lib

export SHLIB_PATH=$JAVACMVP_PATH:$KS_PATH
export KS_CM_PATH=$KS_PATH/libKeySharpCryptoV1_5.sl
ln -s $KS_PATH/libKeySharpCryptoV1_5.sl $KS_PATH/libKeySharpCryptoV1_5.so

$JAVA_HOME/bin/IA64W/java -cp ..:../CmvpwrapperTest.jar:../junit.jar:../org.hamcrest.core_1.3.0.v201303031735.jar:../commons-codec-1.2.jar -Djava.library.path=$SHLIB_PATH org.junit.runner.JUnitCore com.raonsecure.security.HashTest
