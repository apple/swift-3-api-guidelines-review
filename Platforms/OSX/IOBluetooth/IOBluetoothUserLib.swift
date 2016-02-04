
class IOBluetoothObjectRef {
}
class IOBluetoothDeviceRef {
}
class IOBluetoothL2CAPChannelRef {
}
class IOBluetoothRFCOMMChannelRef {
}
class IOBluetoothSDPServiceRecordRef {
}
class IOBluetoothSDPUUIDRef {
}
class IOBluetoothSDPDataElementRef {
}
class IOBluetoothUserNotificationRef {
}
typealias IOBluetoothObjectID = UInt
typealias IOBluetoothDeviceSearchOptions = UInt32
struct IOBluetoothDeviceSearchOptionsBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kSearchOptionsNone: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsAlwaysStartInquiry: IOBluetoothDeviceSearchOptionsBits { get }
var kSearchOptionsDiscardCachedResults: IOBluetoothDeviceSearchOptionsBits { get }
struct IOBluetoothDeviceSearchDeviceAttributes {
  var address: BluetoothDeviceAddress
  var name: BluetoothDeviceName
  var serviceClassMajor: BluetoothServiceClassMajor
  var deviceClassMajor: BluetoothDeviceClassMajor
  var deviceClassMinor: BluetoothDeviceClassMinor
  init()
  init(address: BluetoothDeviceAddress, name: BluetoothDeviceName, serviceClassMajor: BluetoothServiceClassMajor, deviceClassMajor: BluetoothDeviceClassMajor, deviceClassMinor: BluetoothDeviceClassMinor)
}
struct IOBluetoothDeviceSearchAttributes {
  var options: IOBluetoothDeviceSearchOptions
  var maxResults: IOItemCount
  var deviceAttributeCount: IOItemCount
  var attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>
  init()
  init(options: IOBluetoothDeviceSearchOptions, maxResults: IOItemCount, deviceAttributeCount: IOItemCount, attributeList: UnsafeMutablePointer<IOBluetoothDeviceSearchDeviceAttributes>)
}
typealias IOBluetoothDeviceSearchTypes = UInt32
struct IOBluetoothDeviceSearchTypesBits : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothDeviceSearchClassic: IOBluetoothDeviceSearchTypesBits { get }
var kIOBluetoothDeviceSearchLE: IOBluetoothDeviceSearchTypesBits { get }
func IOBluetoothIgnoreHIDDevice(device: IOBluetoothDeviceRef!)
func IOBluetoothRemoveIgnoredHIDDevice(device: IOBluetoothDeviceRef!)
struct IOBluetoothUserNotificationChannelDirection : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOBluetoothUserNotificationChannelDirectionAny: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionIncoming: IOBluetoothUserNotificationChannelDirection { get }
var kIOBluetoothUserNotificationChannelDirectionOutgoing: IOBluetoothUserNotificationChannelDirection { get }
typealias IOBluetoothUserNotificationCallback = @convention(c) (UnsafeMutablePointer<Void>, IOBluetoothUserNotificationRef!, IOBluetoothObjectRef!) -> Void
func IOBluetoothUserNotificationUnregister(notificationRef: IOBluetoothUserNotificationRef!)
func IOBluetoothRegisterForDeviceConnectNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothDeviceRegisterForDisconnectNotification(inDevice: IOBluetoothDeviceRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForFilteredL2CAPChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ inPSM: BluetoothL2CAPPSM, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothL2CAPChannelRegisterForChannelCloseNotification(channel: IOBluetoothL2CAPChannelRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRegisterForFilteredRFCOMMChannelOpenNotifications(callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>, _ channelID: BluetoothRFCOMMChannelID, _ inDirection: IOBluetoothUserNotificationChannelDirection) -> Unmanaged<IOBluetoothUserNotificationRef>!
func IOBluetoothRFCOMMChannelRegisterForChannelCloseNotification(inChannel: IOBluetoothRFCOMMChannelRef!, _ callback: IOBluetoothUserNotificationCallback!, _ inRefCon: UnsafeMutablePointer<Void>) -> Unmanaged<IOBluetoothUserNotificationRef>!
