
class IOBluetoothSDPDataElement : NSObject, NSCoding {
  class func withElementValue(element: NSObject!) -> Self!
  class func withType(type: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!) -> Self!
  class func withSDPDataElementRef(sdpDataElementRef: IOBluetoothSDPDataElementRef!) -> Self!
  init!(elementValue element: NSObject!)
  init!(type newType: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: NSObject!)
  func getRef() -> Unmanaged<IOBluetoothSDPDataElementRef>!
  func getTypeDescriptor() -> BluetoothSDPDataElementTypeDescriptor
  func getSizeDescriptor() -> BluetoothSDPDataElementSizeDescriptor
  func getSize() -> UInt32
  func getNumberValue() -> NSNumber!
  func getDataValue() -> NSData!
  func getStringValue() -> String!
  func getArrayValue() -> [AnyObject]!
  func getUUIDValue() -> IOBluetoothSDPUUID!
  func getValue() -> NSObject!
  func contains(dataElement: IOBluetoothSDPDataElement!) -> Bool
  func containsValue(cmpValue: NSObject!) -> Bool
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
