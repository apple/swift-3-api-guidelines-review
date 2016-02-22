
typealias PrivOBEXSessionDataRef = COpaquePointer
class OBEXSession : NSObject {
  func obexConnect(inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexDisconnect(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexPut(isFinalChunk: Bool, headersData inHeadersData: UnsafeMutablePointer<Void>, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutablePointer<Void>, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexGet(isFinalChunk: Bool, headers inHeaders: UnsafeMutablePointer<Void>, headersLength inHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexAbort(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexSetPath(inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexConnectResponse(inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexDisconnectResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexPutResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexGetResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexAbortResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func obexSetPathResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func getAvailableCommandPayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getAvailableCommandResponsePayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getMaxPacketLength() -> OBEXMaxPacketLength
  func hasOpenOBEXConnection() -> Bool
  func setEventCallback(inEventCallback: OBEXSessionEventCallback!)
  func setEventRefCon(inRefCon: UnsafeMutablePointer<Void>)
  func setEventSelector(inEventSelector: Selector, target inEventSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func serverHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func clientHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func sendData(toTransport inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
  func openTransportConnection(inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func hasOpenTransportConnection() -> Bool
  func closeTransportConnection() -> OBEXError
  init()
}
typealias OBEXTransportEventType = UInt32
struct OBEXTransportEventTypes : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
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
  init(type: OBEXTransportEventType, status: OBEXError, dataPtr: UnsafeMutablePointer<Void>, dataLength: Int)
}
