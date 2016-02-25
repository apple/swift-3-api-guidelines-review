
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue attributeElementValue: NSObject!) -> Self!
  class func withID(_ newAttributeID: BluetoothSDPServiceAttributeID, attributeElement attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue attributeElementValue: NSObject!)
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElement attributeElement: IOBluetoothSDPDataElement!)
  func getID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
