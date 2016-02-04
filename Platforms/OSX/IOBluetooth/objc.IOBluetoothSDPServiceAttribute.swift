
class IOBluetoothSDPServiceAttribute : Object, Coding {
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: Object!) -> Self!
  class func withID(newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!) -> Self!
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElementValue: Object!)
  init!(id newAttributeID: BluetoothSDPServiceAttributeID, attributeElement: IOBluetoothSDPDataElement!)
  func getID() -> BluetoothSDPServiceAttributeID
  func getDataElement() -> IOBluetoothSDPDataElement!
  func getIDDataElement() -> IOBluetoothSDPDataElement!
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
