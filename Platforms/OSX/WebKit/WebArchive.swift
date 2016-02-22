
let WebArchivePboardType: String
class WebArchive : NSObject, NSCoding, NSCopying {
  init!(mainResource: WebResource!, subresources: [AnyObject]!, subframeArchives: [AnyObject]!)
  init!(data: NSData!)
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  var subframeArchives: [AnyObject]! { get }
  @NSCopying var data: NSData! { get }
  init()
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
  func copy(with zone: NSZone = nil) -> AnyObject
}
