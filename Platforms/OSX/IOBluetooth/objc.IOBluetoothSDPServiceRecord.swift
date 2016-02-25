
class IOBluetoothSDPServiceRecord : NSObject, NSCoding {
  class func publishedServiceRecord(with serviceDict: [NSObject : AnyObject]!) -> Self!
  func remove() -> IOReturn
  class func withServiceDictionary(_ serviceDict: [NSObject : AnyObject]!, device device: IOBluetoothDevice!) -> Self!
  init!(serviceDictionary serviceDict: [NSObject : AnyObject]!, device device: IOBluetoothDevice!)
  class func withSDPServiceRecordRef(_ sdpServiceRecordRef: IOBluetoothSDPServiceRecordRef!) -> Self!
  func getRef() -> Unmanaged<IOBluetoothSDPServiceRecordRef>!
  var device: IOBluetoothDevice! { get }
  var attributes: [NSObject : AnyObject]! { get }
  func getAttributeDataElement(_ attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!
  func getServiceName() -> String!
  func getRFCOMMChannelID(_ rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>) -> IOReturn
  func getL2CAPPSM(_ outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>) -> IOReturn
  func getHandle(_ outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>) -> IOReturn
  func matchesUUID16(_ uuid16: BluetoothSDPUUID16) -> Bool
  func matchesUUIDArray(_ uuidArray: [AnyObject]!) -> Bool
  func matchesSearch(_ searchArray: [AnyObject]!) -> Bool
  func hasService(from array: [AnyObject]!) -> Bool
  var sortedAttributes: [AnyObject]! { get }
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
