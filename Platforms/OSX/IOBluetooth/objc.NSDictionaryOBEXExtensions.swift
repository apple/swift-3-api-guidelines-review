
extension NSMutableDictionary {
  convenience init!(obexHeadersData inHeadersData: UnsafePointer<Void>, headersDataSize inDataSize: Int)
  convenience init!(obexHeadersData inHeadersData: NSData!)
  func getHeaderBytes() -> NSMutableData!
  func addTargetHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addHTTPHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addBodyHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32, endOfBody isEndOfBody: Bool) -> OBEXError
  func addWhoHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addConnectionIDHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addApplicationParameterHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addByteSequenceHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addObjectClassHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationChallengeHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationResponseHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTimeISOHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTypeHeader(_ type: String!) -> OBEXError
  func addLengthHeader(_ length: UInt32) -> OBEXError
  func addTime4ByteHeader(_ time4Byte: UInt32) -> OBEXError
  func addCountHeader(_ inCount: UInt32) -> OBEXError
  func addDescriptionHeader(_ inDescriptionString: String!) -> OBEXError
  func addNameHeader(_ inNameString: String!) -> OBEXError
  func addUserDefinedHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addImageHandleHeader(_ type: String!) -> OBEXError
  func addImageDescriptorHeader(_ inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
}
