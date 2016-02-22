
extension NSMutableDictionary {
  convenience init!(obexHeadersData inHeadersData: UnsafePointer<Void>, headersDataSize inDataSize: Int)
  convenience init!(obexHeadersData inHeadersData: NSData!)
  func getHeaderBytes() -> NSMutableData!
  func addTargetHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addHTTPHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addBodyHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32, endOfBody isEndOfBody: Bool) -> OBEXError
  func addWhoHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addConnectionIDHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addApplicationParameterHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addByteSequenceHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addObjectClassHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationChallengeHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationResponseHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTimeISOHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addTypeHeader(type: String!) -> OBEXError
  func addLengthHeader(length: UInt32) -> OBEXError
  func addTime4ByteHeader(time4Byte: UInt32) -> OBEXError
  func addCountHeader(inCount: UInt32) -> OBEXError
  func addDescriptionHeader(inDescriptionString: String!) -> OBEXError
  func addNameHeader(inNameString: String!) -> OBEXError
  func addUserDefinedHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
  func addImageHandleHeader(type: String!) -> OBEXError
  func addImageDescriptorHeader(inHeaderData: UnsafePointer<Void>, length inHeaderDataLength: UInt32) -> OBEXError
}
