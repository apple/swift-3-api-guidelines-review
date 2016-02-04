
@available(iOS 6.0, *)
class MKDirectionsRequest : Object {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  @available(iOS 7.0, *)
  var transportType: MKDirectionsTransportType
  @available(iOS 7.0, *)
  var requestsAlternateRoutes: Bool
  @available(iOS 7.0, *)
  @NSCopying var departureDate: Date?
  @available(iOS 7.0, *)
  @NSCopying var arrivalDate: Date?
}
extension MKDirectionsRequest {
  @available(iOS 6.0, *)
  init(contentsOf url: URL)
  @available(iOS 6.0, *)
  class func isDirectionsRequest(url: URL) -> Bool
}
