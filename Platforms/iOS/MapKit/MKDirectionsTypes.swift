
@available(iOS 7.0, *)
struct MKDirectionsTransportType : OptionSetType {
  init(rawValue rawValue: UInt)
  let rawValue: UInt
  static var Automobile: MKDirectionsTransportType { get }
  static var Walking: MKDirectionsTransportType { get }
  @available(iOS 9.0, *)
  static var Transit: MKDirectionsTransportType { get }
  static var Any: MKDirectionsTransportType { get }
}
