
### 专为小票打印机修改源码
尝试将结束标志[0x0D, 0x0A]跟消息体一起发送，但由于时间有限，swift和java也不熟悉，自己也没有小票打印机测试。
所以将消息体和结束标志分开发送，先发送消息体，如"Hello, World!"，再发送结果标志"0D0A"，即可成功打印。
如果你的小票打印结束标志不是"0D0A"，可以根据comomit记录自行在源码中修改下if判断语句即可，如果有谁能解决一次性发送的问题，麻烦告知下，谢谢！

##### 可直接安装我修改后的版本
##### yarn安装：
yarn add https://github.com/zhanguangao/react-native-ble-plx.git

##### npm安装：
npm install git+https://git@github.com/zhanguangao/react-native-ble-plx.git

#### [react-native-ble-plx使用示例](https://github.com/zhanguangao/react-native-ble-plx-demo)

<p align="center">
  <img
    alt="react-native-ble-plx library logo"
    src="docs/logo.png"
    height="300"
    style="margin-top: 20px; margin-bottom: 20px;"
  />
</p>

## About this library

This is React Native Bluetooth Low Energy library using [RxBluetoothKit](https://github.com/Polidea/RxBluetoothKit) and [RxAndroidBle](https://github.com/Polidea/RxAndroidBle) under the hood.

It supports:

- [observing device's Bluetooth adapter state](https://github.com/Polidea/react-native-ble-plx/wiki/Bluetooth-Adapter-State)
- [scanning BLE devices](https://github.com/Polidea/react-native-ble-plx/wiki/Bluetooth-Scanning)
- [making connections to peripherals](https://github.com/Polidea/react-native-ble-plx/wiki/Device-Connecting)
- [discovering services/characteristics](https://github.com/Polidea/react-native-ble-plx/wiki/Device-Service-Discovery)
- [reading](https://github.com/Polidea/react-native-ble-plx/wiki/Characteristic-Reading)/[writing](https://github.com/Polidea/react-native-ble-plx/wiki/Characteristic-Writing) characteristics
- [observing characteristic notifications/indications](https://github.com/Polidea/react-native-ble-plx/wiki/Characteristic-Notifying)
- [reading RSSI](https://github.com/Polidea/react-native-ble-plx/wiki/RSSI-Reading)
- [negotiating MTU](https://github.com/Polidea/react-native-ble-plx/wiki/MTU-Negotiation)
- turning the device's Bluetooth adapter on

What this library does NOT support:

- communicating between phones using BLE (Peripheral support)
- [bonding peripherals](https://github.com/Polidea/react-native-ble-plx/wiki/Device-Bonding)

## Compatibility

| React Native  | 1.0.3                          |  1.1.0                         |
| ------------- | ------------------------------ | ------------------------------ |
| 0.60.5        | :white_check_mark:<sup>2</sup> | :white_check_mark:<sup>2</sup> |
| 0.59.10       | :white_check_mark:             | :white_check_mark:             |
| 0.58.6        | :white_check_mark:             | :white_check_mark:             |
| 0.57.8        | :white_check_mark:             | :white_check_mark:             |
| 0.56.1        | :boom:<sup>1</sup>             | :boom:<sup>1</sup>             |
| 0.55.4        | :boom:<sup>1</sup>             | :boom:<sup>1</sup>             |

<sup>1</sup> fails on Android, although might work after updating gradle

<sup>2</sup> may require usage of `jetifier` on Android and migration to `CocoaPods` on iOS.

## Recent Changes

**1.1.0**

- Add support for descriptors.
- Fix XCode 11 compilation error.

[All previous changes](CHANGELOG.md)

## Documentation & Support

Interested in React Native project involving Bluetooth Low Energy? [We can help you!](https://www.polidea.com/react-native)

Learn more about Polidea's BLE services [here](https://www.polidea.com/services/ble).

Documentation can be found [here](https://polidea.github.io/react-native-ble-plx/).

Contact us at [Gitter](https://gitter.im/RxBLELibraries/react-native-ble) if you have any questions, feedback or want to help!

## Configuration & Installation

### iOS (expo/Podfile and RN 0.60+, [example setup](https://github.com/Cierpliwy/SensorTagExpo))

1. Make sure your Expo project is ejected (formerly: detached). You can read how to do it [here](https://docs.expo.io/versions/v32.0.0/expokit/eject/) and [here](https://docs.expo.io/versions/latest/expokit/expokit). (only for expo)
2. `npm install --save react-native-ble-plx`
3. `react-native link react-native-ble-plx`
4. Open Xcode workspace located inside `ios` folder and add empty Swift file if you don't have at least one:
   - Select File/New/File...
   - Choose Swift file and click Next.
   - Name it however you want, select your application target and create it.
   - Accept to create Objective-C bridging header.
5. Update your `ios/Podfile` to contain:
   ```
   pod 'react-native-ble-plx', :path => '../node_modules/react-native-ble-plx'
   pod 'react-native-ble-plx-swift', :path => '../node_modules/react-native-ble-plx'
   ```
6. Enter `ios` folder and run `pod update`
7. Minimal supported version of iOS is 8.0
8. If you want to support background mode:
   - In your application target go to `Capabilities` tab and enable `Uses Bluetooth LE Accessories` in
     `Background Modes` section.
   - Pass `restoreStateIdentifier` and `restoreStateFunction` to `BleManager` constructor.
9. Starting from iOS 13 add `NSBluetoothAlwaysUsageDescription` in `info.plist` file.

### iOS (react-native < 0.60, [example setup](https://github.com/Cierpliwy/SensorTag/tree/rn59))

1. `npm install --save react-native-ble-plx`
2. `react-native link react-native-ble-plx`
3. Open Xcode project located inside `ios` folder and add empty Swift file if you don't have at least one:
   - Select File/New/File...
   - Choose Swift file and click Next.
   - Name it however you want, select your targets and create it.
   - Accept to create Objective-C bridging header.
4. Minimal supported version of iOS is 8.0
5. If you want to support background mode:

   - In your application target go to `Capabilities` tab and enable `Uses Bluetooth LE Accessories` in
     `Background Modes` section.
   - Pass `restoreStateIdentifier` and `restoreStateFunction` to `BleManager` constructor.
6. Starting from iOS 13 add `NSBluetoothAlwaysUsageDescription` in `info.plist` file.

### Android ([example setup](https://github.com/Cierpliwy/SensorTag))

1. `npm install --save react-native-ble-plx`
2. `react-native link react-native-ble-plx`
3. In `build.gradle` of `app` module make sure that min SDK version is at least 18:

```groovy
android {
    ...
    defaultConfig {
        minSdkVersion 18
        ...
```

4. In `AndroidManifest.xml`, add Bluetooth permissions and update `<uses-sdk/>`:

```xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
    ...
    <uses-permission android:name="android.permission.BLUETOOTH"/>
    <uses-permission android:name="android.permission.BLUETOOTH_ADMIN"/>
    <uses-permission-sdk-23 android:name="android.permission.ACCESS_COARSE_LOCATION"/>

    <!-- Add this line if your application always requires BLE. More info can be found on:
         https://developer.android.com/guide/topics/connectivity/bluetooth-le.html#permissions
      -->
    <uses-feature android:name="android.hardware.bluetooth_le" android:required="true"/>

    <uses-sdk
        android:minSdkVersion="18"
        ...
```

5. If you are using AndroidX, then for the time being you need to convert import statements in the Android library with [jetifier](https://www.npmjs.com/package/jetifier). These steps apply for all react-native packages, which are during the transition period:

- `npm install --save-dev jetifier`
- Run `jetify` script after `npm install`. You can do it by adding "postinstall" script to the `package.json` file:
  ```json
   ...
   "postinstall": "npx jetify",
   ...
  ```

## Troubleshooting

### Problems with Proguard

Add this to your `app/proguard-rules.pro`

```
-dontwarn com.polidea.reactnativeble.**
```
