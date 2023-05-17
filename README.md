# obdblue

A Flutter project that allow the users to connect a bluetooth device to a OBD module and interractict with it.

## Presentation 
OBDBlue is a versatile Flutter plugin designed to establish a Bluetooth connection with an OBD (On-Board Diagnostics) module. This plugin enables seamless communication between your Flutter application and the OBD module, allowing you to retrieve valuable vehicle data for both iOS and Android platforms 

## Features
Bluetooth Connection: OBDBlue simplifies the process of establishing a secure Bluetooth connection between your Flutter app and the OBD module. It handles the complexities of Bluetooth pairing and device discovery, ensuring a hassle-free connection.

OBD Communication: With OBDBlue, you can effortlessly send and receive commands to retrieve diagnostic information from the OBD module. Monitor real-time vehicle parameters, such as speed, RPM, fuel consumption, and more, with just a few lines of code.

Cross-Platform Compatibility: This plugin is built to support both iOS and Android platforms, making it easier for developers to create OBD-enabled apps that can reach a wider audience. You can leverage OBDBlue's capabilities and build powerful OBD diagnostic solutions for various mobile devices

## Usage
i - Import the OBDBlue plugin into your Flutter project.
```
import 'package:obdblue/obdblue.dart';
```

ii - Establish a Bluetooth connection with the OBD module
```
OBDBlue.connectToDevice(deviceAddress).then((connected) {
  if (connected) {
    // Connection successful, start communicating with the OBD module
    // ...
  } else {
    // Connection failed, handle the error
    // ...
  }
});
```

