
protocol MKAnnotation : ObjectProtocol {
  var coordinate: CLLocationCoordinate2D { get }
  optional var title: String? { get }
  optional var subtitle: String? { get }
}
