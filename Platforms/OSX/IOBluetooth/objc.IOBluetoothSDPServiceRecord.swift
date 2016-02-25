
class IOBluetoothSDPServiceRecord : NSObject, NSCoding {
  class func publishedServiceRecordWithDictionary(_ serviceDict: [NSObject : AnyObject]!) -> Self!
  func removeServiceRecord() -> IOReturn
  class func withServiceDictionary(_ serviceDict: [NSObject : AnyObject]!, device device: IOBluetoothDevice!) -> Self!
  init!(serviceDictionary serviceDict: [NSObject : AnyObject]!, device device: IOBluetoothDevice!)
  class func withSDPServiceRecordRef(_ sdpServiceRecordRef: IOBluetoothSDPServiceRecordRef!) -> Self!
  func getSDPServiceRecordRef() -> Unmanaged<IOBluetoothSDPServiceRecordRef>!
  var device: IOBluetoothDevice! { get }
  var attributes: [NSObject : AnyObject]! { get }
  func getAttributeDataElement(_ attributeID: BluetoothSDPServiceAttributeID) -> IOBluetoothSDPDataElement!
  func getServiceName() -> String!
  func getRFCOMMChannelID(_ rfcommChannelID: UnsafeMutablePointer<BluetoothRFCOMMChannelID>) -> IOReturn
  func getL2CAPPSM(_ outPSM: UnsafeMutablePointer<BluetoothL2CAPPSM>) -> IOReturn
  func getServiceRecordHandle(_ outServiceRecordHandle: UnsafeMutablePointer<BluetoothSDPServiceRecordHandle>) -> IOReturn
  func matchesUUID16(_ uuid16: BluetoothSDPUUID16) -> Bool
  func matchesUUIDArray(_ uuidArray: [AnyObject]!) -> Bool
  func matchesSearchArray(_ searchArray: [AnyObject]!) -> Bool
  func hasServiceFromArray(_ array: [AnyObject]!) -> Bool
  var sortedAttributes: [AnyObject]! { get }
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
