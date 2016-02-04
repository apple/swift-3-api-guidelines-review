
typealias MKDirectionsHandler = (MKDirectionsResponse?, NSError?) -> Void
typealias MKETAHandler = (MKETAResponse?, NSError?) -> Void
@available(iOS 7.0, *)
class MKDirections : NSObject {
  init(request: MKDirectionsRequest)
  func calculateDirectionsWithCompletionHandler(completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(completionHandler: MKETAHandler)
  func cancel()
  var calculating: Bool { get }
  convenience init()
}
