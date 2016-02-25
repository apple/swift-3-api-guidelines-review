
typealias MKDirectionsHandler = (MKDirectionsResponse?, NSError?) -> Void
typealias MKETAHandler = (MKETAResponse?, NSError?) -> Void
@available(OSX 10.9, *)
class MKDirections : NSObject {
  init(request request: MKDirectionsRequest)
  func calculateDirectionsWithCompletionHandler(_ completionHandler: MKDirectionsHandler)
  func calculateETAWithCompletionHandler(_ completionHandler: MKETAHandler)
  func cancel()
  var calculating: Bool { get }
}
