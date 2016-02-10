
class IOBluetoothSDPDataElement : Object, Coding {
  class func withElementValue(element: Object!) -> Self!
  class func withType(type: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: Object!) -> Self!
  class func withSDPDataElementRef(sdpDataElementRef: IOBluetoothSDPDataElementRef!) -> Self!
  init!(elementValue element: Object!)
  init!(type newType: BluetoothSDPDataElementTypeDescriptor, sizeDescriptor newSizeDescriptor: BluetoothSDPDataElementSizeDescriptor, size newSize: UInt32, value newValue: Object!)
  func getRef() -> Unmanaged<IOBluetoothSDPDataElementRef>!
  func getTypeDescriptor() -> BluetoothSDPDataElementTypeDescriptor
  func getSizeDescriptor() -> BluetoothSDPDataElementSizeDescriptor
  func getSize() -> UInt32
  func getNumberValue() -> Number!
  func getDataValue() -> Data!
  func getStringValue() -> String!
  func getArrayValue() -> [AnyObject]!
  func getUUIDValue() -> IOBluetoothSDPUUID!
  func getValue() -> Object!
  func contains(dataElement: IOBluetoothSDPDataElement!) -> Bool
  func containsValue(cmpValue: Object!) -> Bool
  init()
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
