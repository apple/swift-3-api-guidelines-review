
@available(OSX 10.8, *)
class AVB17221AECPMessage : NSObject, NSCopying {
  var messageType: AVB17221AECPMessageType
  var status: AVB17221AECPStatusCode
  @available(OSX 10.9, *)
  var targetEntityID: UInt64
  @available(OSX 10.9, *)
  var controllerEntityID: UInt64
  var sequenceID: UInt16
  @NSCopying var sourceMAC: AVBMACAddress
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}
@available(OSX 10.8, *)
class AVB17221AECPAEMMessage : AVB17221AECPMessage {
  var commandType: AVB17221AEMCommandType
  var unsolicited: Bool
  @available(OSX 10.9, *)
  var controllerRequest: Bool
  @NSCopying var commandSpecificData: NSData?
  class func commandMessage() -> AVB17221AECPAEMMessage
  class func responseMessage() -> AVB17221AECPAEMMessage
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {
  var tlvs: [AVB17221AECPAddressAccessTLV]?
  class func commandMessage() -> AVB17221AECPAddressAccessMessage
  class func responseMessage() -> AVB17221AECPAddressAccessMessage
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessTLV : NSObject {
  var mode: AVB17221AECPAddressAccessTLVMode
  var address: UInt64
  @NSCopying var memoryData: NSData?
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAVCMessage : AVB17221AECPMessage {
  @NSCopying var commandResponse: NSData?
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPVendorMessage : AVB17221AECPMessage {
  var protocolID: UInt64
  @NSCopying var protocolSpecificData: NSData?
  init()
}
