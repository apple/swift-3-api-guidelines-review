
@available(OSX 10.9, *)
class MKDirectionsRequest : NSObject {
  var source: MKMapItem?
  var destination: MKMapItem?
  init()
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  var transportType: MKDirectionsTransportType
  @available(OSX 10.9, *)
  var requestsAlternateRoutes: Bool
  @available(OSX 10.9, *)
  @NSCopying var departureDate: NSDate?
  @available(OSX 10.9, *)
  @NSCopying var arrivalDate: NSDate?
}
extension MKDirectionsRequest {
  @available(OSX 10.9, *)
  init(contentsOfURL url: NSURL)
  @available(OSX 10.9, *)
  class func isDirectionsRequestURL(url: NSURL) -> Bool
}
