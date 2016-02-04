
class IOBluetoothDeviceInquiry : Object {
  unowned(unsafe) var delegate: @sil_unmanaged AnyObject!
  init!(delegate: AnyObject!)
  func start() -> IOReturn
  func stop() -> IOReturn
  var inquiryLength: UInt8
  var searchType: IOBluetoothDeviceSearchTypes
  var updateNewDeviceNames: Bool
  func foundDevices() -> [AnyObject]!
  func clearFoundDevices()
  func setSearchCriteria(inServiceClassMajor: BluetoothServiceClassMajor, majorDeviceClass inMajorDeviceClass: BluetoothDeviceClassMajor, minorDeviceClass inMinorDeviceClass: BluetoothDeviceClassMinor)
  init()
}
protocol IOBluetoothDeviceInquiryDelegate {
  optional func deviceInquiryStarted(sender: IOBluetoothDeviceInquiry!)
  optional func deviceInquiryDeviceFound(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!)
  optional func deviceInquiryUpdatingDeviceNamesStarted(sender: IOBluetoothDeviceInquiry!, devicesRemaining: UInt32)
  optional func deviceInquiryDeviceNameUpdated(sender: IOBluetoothDeviceInquiry!, device: IOBluetoothDevice!, devicesRemaining: UInt32)
  optional func deviceInquiryComplete(sender: IOBluetoothDeviceInquiry!, error: IOReturn, aborted: Bool)
}
