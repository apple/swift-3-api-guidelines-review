
@available(OSX 10.8, *)
class AVB17221AECPMessage : Object, Copying {
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
  func copy(zone zone: Zone = nil) -> AnyObject
}
@available(OSX 10.8, *)
class AVB17221AECPAEMMessage : AVB17221AECPMessage {
  var commandType: AVB17221AEMCommandType
  var isUnsolicited: Bool
  @available(OSX 10.9, *)
  var isControllerRequest: Bool
  @NSCopying var commandSpecificData: Data?
  class func command() -> AVB17221AECPAEMMessage
  class func response() -> AVB17221AECPAEMMessage
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessMessage : AVB17221AECPMessage {
  var tlvs: [AVB17221AECPAddressAccessTLV]?
  class func command() -> AVB17221AECPAddressAccessMessage
  class func response() -> AVB17221AECPAddressAccessMessage
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAddressAccessTLV : Object {
  var mode: AVB17221AECPAddressAccessTLVMode
  var address: UInt64
  @NSCopying var memoryData: Data?
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPAVCMessage : AVB17221AECPMessage {
  @NSCopying var commandResponse: Data?
  init()
}
@available(OSX 10.8, *)
class AVB17221AECPVendorMessage : AVB17221AECPMessage {
  var protocolID: UInt64
  @NSCopying var protocolSpecificData: Data?
  init()
}
