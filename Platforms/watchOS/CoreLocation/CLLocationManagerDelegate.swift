
protocol CLLocationManagerDelegate : ObjectProtocol {
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: Error)
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
}
