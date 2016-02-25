
@available(OSX 10.10, *)
struct TKSmartCardProtocol : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var None: TKSmartCardProtocol { get }
  static var T0: TKSmartCardProtocol { get }
  static var T1: TKSmartCardProtocol { get }
  static var T15: TKSmartCardProtocol { get }
  static var Any: TKSmartCardProtocol { get }
}
@available(OSX 10.10, *)
class TKSmartCardATRInterfaceGroup : NSObject {
  var TA: NSNumber? { get }
  var TB: NSNumber? { get }
  var TC: NSNumber? { get }
  var `protocol`: NSNumber? { get }
}
@available(OSX 10.10, *)
class TKSmartCardATR : NSObject {
  init?(bytes bytes: NSData)
  init?(source source: () -> Int32)
  var bytes: NSData { get }
  var protocols: [NSNumber] { get }
  func interfaceGroupAtIndex(_ index: Int) -> TKSmartCardATRInterfaceGroup?
  func interfaceGroupForProtocol(_ protocol: TKSmartCardProtocol) -> TKSmartCardATRInterfaceGroup?
  var historicalBytes: NSData { get }
}
