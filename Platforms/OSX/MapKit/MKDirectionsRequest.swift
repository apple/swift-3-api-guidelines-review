
@available(OSX 10.9, *)
class MKDirectionsRequest : Object {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  var transportType: MKDirectionsTransportType
  @available(OSX 10.9, *)
  var requestsAlternateRoutes: Bool
  @available(OSX 10.9, *)
  @NSCopying var departureDate: Date?
  @available(OSX 10.9, *)
  @NSCopying var arrivalDate: Date?
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  init(contentsOf url: URL)
  @available(OSX 10.9, *)
  class func isDirectionsRequest(url: URL) -> Bool
}
