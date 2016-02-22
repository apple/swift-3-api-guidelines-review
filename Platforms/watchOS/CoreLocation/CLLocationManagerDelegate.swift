
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didUpdate locations: [CLLocation])
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didFailWithError error: NSError)
  @available(watchOS 2.0, *)
  optional func locationManager(manager: CLLocationManager, didChange status: CLAuthorizationStatus)
}
