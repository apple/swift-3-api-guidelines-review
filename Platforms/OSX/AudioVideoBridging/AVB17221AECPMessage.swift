
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
  @available(OSX 10.8, *)
  func copy(with zone: NSZone = nil) -> AnyObject
}
@available(OSX 10.8, *)
class AVB17221AECPAEMMessage : AVB17221AECPMessage {
  var commandType: AVB17221AEMCommandType
  var isUnsolicited: Bool
  @available(OSX 10.9, *)
  var isControllerRequest: Bool
  @NSCopying var commandSpecificData: NSData?
  class func command() -> AVB17221AECPAEMMessage
  class func response() -> AVB17221AECPAEMMessage
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {
  var tlvs: [AVB17221AECPAddressAccessTLV]?
  class func command() -> AVB17221AECPAddressAccessMessage
  class func response() -> AVB17221AECPAddressAccessMessage
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessTLV : NSObject {
  var mode: AVB17221AECPAddressAccessTLVMode
  var address: UInt64
  @NSCopying var memoryData: NSData?
}
@available(OSX 10.8, *)
class AVB17221AECPAVCMessage : AVB17221AECPMessage {
  @NSCopying var commandResponse: NSData?
}
@available(OSX 10.8, *)
class AVB17221AECPVendorMessage : AVB17221AECPMessage {
  var protocolID: UInt64
  @NSCopying var protocolSpecificData: NSData?
}
