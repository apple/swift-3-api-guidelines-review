
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!) -> Self!
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!)
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)
  func getAttributeID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  init()
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
