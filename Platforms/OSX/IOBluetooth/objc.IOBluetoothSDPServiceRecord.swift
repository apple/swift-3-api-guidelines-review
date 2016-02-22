
class IOBluetoothSDPServiceRecord : NSObject, NSCoding {
  class func publishedServiceRecord(with serviceDict: [NSObject : AnyObject]!) -> Self!
  func remove() -> IOReturn
  class func withServiceDictionary(serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!) -> Self!
  init!(serviceDictionary serviceDict: [NSObject : AnyObject]!, device: IOBluetoothDevice!)
  class func withSDPServiceRecordRef(sdpServiceRecordRef: IOBluetoothSDPServiceRecordRef!) -> Self!
  func getRef() -> Unmanaged<IOBluetoothSDPServiceRecordRef>!
  var device: IOBluetoothDevice! { get }
  var attributes: [NSObject : AnyObject]! { get }
  func getAttributeDataElement(attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!
  func getServiceName() -> String!
  func getRFCOMMChannelID(rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>) -> IOReturn
  func getL2CAPPSM(outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>) -> IOReturn
  func getHandle(outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>) -> IOReturn
  func matchesUUID16(uuid16: BluetoothSDPUUID16) -> Bool
  func matchesUUIDArray(uuidArray: [AnyObject]!) -> Bool
  func matchesSearch(searchArray: [AnyObject]!) -> Bool
  func hasService(from array: [AnyObject]!) -> Bool
  var sortedAttributes: [AnyObject]! { get }
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
