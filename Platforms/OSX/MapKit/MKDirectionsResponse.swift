
@available(OSX 10.9, *)
class MKDirectionsResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
@available(OSX 10.9, *)
class MKRoute : Object {
  var name: String { get }
  var advisoryNotices: [String] { get }
  var distance: CLLocationDistance { get }
  var expectedTravelTime: TimeInterval { get }
  var transportType: MKDirectionsTransportType { get }
  var polyline: MKPolyline { get }
  var steps: [MKRouteStep] { get }
  init()
}
@available(OSX 10.9, *)
class MKRouteStep : Object {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(OSX 10.9, *)
class MKETAResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: TimeInterval { get }
  @available(OSX 10.11, *)
  var distance: CLLocationDistance { get }
  @available(OSX 10.11, *)
  var expectedArrivalDate: Date { get }
  @available(OSX 10.11, *)
  var expectedDepartureDate: Date { get }
  @available(OSX 10.11, *)
  var transportType: MKDirectionsTransportType { get }
  init()
}
