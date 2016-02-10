
typealias MKDirectionsHandler = (MKDirectionsResponse?, Error?) -> Void
typealias MKETAHandler = (MKETAResponse?, Error?) -> Void
@available(OSX 10.9, *)
class MKDirections : Object {
  init(request: MKDirectionsRequest)
  func calculate(completionHandler completionHandler: MKDirectionsHandler)
  func calculateETA(completionHandler completionHandler: MKETAHandler)
  func cancel()
  var isCalculating: Bool { get }
  convenience init()
}
