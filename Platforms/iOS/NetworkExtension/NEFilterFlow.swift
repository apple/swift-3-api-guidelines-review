
var NEFilterFlowBytesMax: UInt64 { get }
@available(iOS 9.0, *)
class NEFilterFlow : Object, SecureCoding, Copying {
  @available(iOS 9.0, *)
  var url: URL? { get }
  init()
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
  @available(iOS 9.0, *)
  func copy(zone: Zone = nil) -> AnyObject
}
@available(iOS 9.0, *)
class NEFilterBrowserFlow : NEFilterFlow, SecureCoding, Copying {
  @available(iOS 9.0, *)
  var request: URLRequest { get }
  @available(iOS 9.0, *)
  var response: URLResponse? { get }
  @available(iOS 9.0, *)
  var parentURL: URL? { get }
  init()
  init?(coder aDecoder: Coder)
}
@available(iOS 9.0, *)
class NEFilterSocketFlow : NEFilterFlow, SecureCoding, Copying {
  @available(iOS 9.0, *)
  var remoteEndpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var localEndpoint: NWEndpoint { get }
  @available(iOS 9.0, *)
  var socketFamily: Int32
  @available(iOS 9.0, *)
  var socketType: Int32
  @available(iOS 9.0, *)
  var socketProtocol: Int32
  init()
  init?(coder aDecoder: Coder)
}
