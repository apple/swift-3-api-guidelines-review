
typealias PrivOBEXSessionDataRef = COpaquePointer
class OBEXSession : NSObject {
  func OBEXConnect(inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnect(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPut(isFinalChunk: Bool, headersData inHeadersData: UnsafeMutablePointer<Void>, headersDataLength inHeadersDataLength: Int, bodyData inBodyData: UnsafeMutablePointer<Void>, bodyDataLength inBodyDataLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGet(isFinalChunk: Bool, headers inHeaders: UnsafeMutablePointer<Void>, headersLength inHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbort(inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPath(inFlags: OBEXFlags, constants inConstants: OBEXConstants, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXConnectResponse(inResponseOpCode: OBEXOpCode, flags inFlags: OBEXFlags, maxPacketLength inMaxPacketLength: OBEXMaxPacketLength, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXDisconnectResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXPutResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXGetResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXAbortResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func OBEXSetPathResponse(inResponseOpCode: OBEXOpCode, optionalHeaders inOptionalHeaders: UnsafeMutablePointer<Void>, optionalHeadersLength inOptionalHeadersLength: Int, eventSelector inSelector: Selector, selectorTarget inTarget: AnyObject!, refCon inUserRefCon: UnsafeMutablePointer<Void>) -> OBEXError
  func getAvailableCommandPayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getAvailableCommandResponsePayloadLength(inOpCode: OBEXOpCode) -> OBEXMaxPacketLength
  func getMaxPacketLength() -> OBEXMaxPacketLength
  func hasOpenOBEXConnection() -> Bool
  func setEventCallback(inEventCallback: OBEXSessionEventCallback!)
  func setEventRefCon(inRefCon: UnsafeMutablePointer<Void>)
  func setEventSelector(inEventSelector: Selector, target inEventSelectorTarget: AnyObject!, refCon inUserRefCon: AnyObject!)
  func serverHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func clientHandleIncomingData(event: UnsafeMutablePointer<OBEXTransportEvent>)
  func sendDataToTransport(inDataToSend: UnsafeMutablePointer<Void>, dataLength inDataLength: Int) -> OBEXError
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
