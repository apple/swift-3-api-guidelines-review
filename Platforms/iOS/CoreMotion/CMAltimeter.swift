
@available(iOS 8.0, *)
typealias CMAltitudeHandler = (CMAltitudeData?, NSError?) -> Void
@available(iOS 8.0, *)
class CMAltimeter : NSObject {
  class func isRelativeAltitudeAvailable() -> Bool
  func startRelativeAltitudeUpdates(to queue: NSOperationQueue, withHandler handler: CMAltitudeHandler)
  func stopRelativeAltitudeUpdates()
}
