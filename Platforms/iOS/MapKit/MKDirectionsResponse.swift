
@available(iOS 7.0, *)
class MKDirectionsResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var routes: [MKRoute] { get }
  init()
}
@available(iOS 7.0, *)
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
@available(iOS 7.0, *)
class MKRouteStep : Object {
  var instructions: String { get }
  var notice: String? { get }
  var polyline: MKPolyline { get }
  var distance: CLLocationDistance { get }
  var transportType: MKDirectionsTransportType { get }
  init()
}
@available(iOS 7.0, *)
class MKETAResponse : Object {
  var source: MKMapItem { get }
  var destination: MKMapItem { get }
  var expectedTravelTime: TimeInterval { get }
  @available(iOS 9.0, *)
  var distance: CLLocationDistance { get }
  @available(iOS 9.0, *)
  var expectedArrivalDate: Date { get }
  @available(iOS 9.0, *)
  var expectedDepartureDate: Date { get }
  @available(iOS 9.0, *)
  var transportType: MKDirectionsTransportType { get }
  init()
}
