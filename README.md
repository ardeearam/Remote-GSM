# Remote-GSM
Send AT commands over the internet to your remote GSM device, and sends back AT response back to you.

## Goals and Motivation

The goal of Remote-GSM is to be able to control an AT-command driven GSM device that is connected to an Internet-connected machine.

This project was created due to the author's problem of lugging around a 16-port GSM modem pool all over coffee shops. The modem pool was large, needs planty of table space, and because of its size and blinking read lights, draws suspicion upon other people. Thus there was a need to put the machine somewhere, and just control it remotely.

## Platform and Prerequisite

* Windows XP, 7, or 8
* jruby 9.0.0.0.pre1 (2.2.0p0)
* RXTX Comm (Download RXTXcomm.jar and rxtxSerial.dll here: http://jlog.org/rxtx-win.html)
* Amazon SQS. Download AWS-SDK for Java here: http://sdk-for-java.amazonwebservices.com/latest/aws-java-sdk.zip
* AWS Java SDK JAR dependencies. Consult AWS SDK for updated list, but to date, the required JAR files are:
** commons-logging-1.2.jar
** httpclient-4.4.jar
** httpcore-4.4.jar
** jackson-annotations-2.5.0.jar
** jackson-core-2.5.0.jar
** jackson-databind-2.3.1.jar