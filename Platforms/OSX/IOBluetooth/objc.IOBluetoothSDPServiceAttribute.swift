
class IOBluetoothSDPServiceAttribute : NSObject, NSCoding {
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!) -> Self!
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: NSObject!)
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)
  func getID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
