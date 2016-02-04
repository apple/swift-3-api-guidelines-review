
@available(OSX 10.9, *)
struct MKDirectionsTransportType : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Automobile: MKDirectionsTransportType { get }
  static var Walking: MKDirectionsTransportType { get }
  @available(OSX 10.11, *)
  static var Transit: MKDirectionsTransportType { get }
  static var Any: MKDirectionsTransportType { get }
}
