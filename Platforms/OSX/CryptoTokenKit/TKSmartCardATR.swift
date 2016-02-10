
@available(OSX 10.10, *)
struct TKSmartCardProtocol : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var none: TKSmartCardProtocol { get }
  static var T0: TKSmartCardProtocol { get }
  static var T1: TKSmartCardProtocol { get }
  static var T15: TKSmartCardProtocol { get }
  static var any: TKSmartCardProtocol { get }
}
@available(OSX 10.10, *)
class TKSmartCardATRInterfaceGroup : Object {
  var ta: Number? { get }
  var tb: Number? { get }
  var tc: Number? { get }
  var `protocol`: Number? { get }
  init()
}
@available(OSX 10.10, *)
class TKSmartCardATR : Object {
  init?(bytes: Data)
  init?(source: () -> Int32)
  var bytes: Data { get }
  var protocols: [Number] { get }
  func interfaceGroup(at index: Int) -> TKSmartCardATRInterfaceGroup?
  func interfaceGroup(forProtocol protocol: TKSmartCardProtocol) -> TKSmartCardATRInterfaceGroup?
  var historicalBytes: Data { get }
  init()
}
