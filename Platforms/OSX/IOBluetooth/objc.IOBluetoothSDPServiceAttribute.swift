
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue attributeElementValue: NSObject!) -> Self!
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElement attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue attributeElementValue: NSObject!)
  init!(ID newAttributeID: BluetoothSDPServiceAttributeID, attributeElement attributeElement: IOBluetoothSDPDataElement!)
  func getAttributeID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
