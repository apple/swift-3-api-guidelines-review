
protocol CLLocationManagerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
  @available(watchOS 2.0, *)
  optional func locationManager(_ manager: CLLocationManager, didFailWithError error: NSError)
  @available(watchOS 2.0, *)
  optional func locationManager(_ manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus)
}
