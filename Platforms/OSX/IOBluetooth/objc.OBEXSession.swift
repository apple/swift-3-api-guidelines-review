
typealias PrivOBEXSessionDataRef = COpaquePointer
class OBEXSession : NSObject {
  func OBEXConnect(_ inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnect(_ inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPut(_ isFinalChunk: Bool, headersData inHeadersData: UnsafeMutablePointer<Void>, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutablePointer<Void>, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGet(_ isFinalChunk: Bool, headers inHeaders: UnsafeMutablePointer<Void>, headersLength inHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbort(_ inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPath(_ inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXConnectResponse(_ inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnectResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPutResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGetResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbortResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPathResponse(_ inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func getAvailableCommandPayloadLength(_ inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getAvailableCommandResponsePayloadLength(_ inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getMaxPacketLength() -> OBEXMaxPacketLength
  func hasOpenOBEXConnection() -> Bool
  func setEventCallback(_ inEventCallback: OBEXSessionEventCallback!)
  func setEventRefCon(_ inRefCon: UnsafeMutablePointer<Void>)
  func setEventSelector(_ inEventSelector: Selector, target inEventSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func serverHandleIncomingData(_ event: UnsafeMutablePointer<OBEXTransportEvent>)
  func clientHandleIncomingData(_ event: UnsafeMutablePointer<OBEXTransportEvent>)
  func sendDataToTransport(_ inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
  func openTransportConnection(_ inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
}
typealias OBEXTransportEventType = UInt32
struct OBEXTransportEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue rawValue: UInt32)
  var rawValue: UInt32
}
var kOBEXTransportEventTypeDataReceived: OBEXTransportEventTypes { get }
var kOBEXTransportEventTypeStatus: OBEXTransportEventTypes { get }
struct OBEXTransportEvent {
  var type: OBEXTransportEventType
  var status: OBEXError
  var dataPtr: UnsafeMutablePointer<Void>
  var dataLength: Int
  init()
  init(type type: OBEXTransportEventType, status status: OBEXError, dataPtr dataPtr: UnsafeMutablePointer<Void>, dataLength dataLength: Int)
}
