
@available(watchOS 2.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, Error?) -> Void
@available(watchOS 2.0, *)
class CMAltimeter : Object {
  class func isRelativeAltitudeAvailable() -> Bool
  func startRelativeAltitudeUpdates(to queue: OperationQueue, withHandler handler: CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
  init()
}
