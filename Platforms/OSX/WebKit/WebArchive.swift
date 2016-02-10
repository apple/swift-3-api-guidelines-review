
let WebArchivePboardType: String
class WebArchive : Object, Coding, Copying {
  init!(mainResource: WebResource!, subresources: [AnyObject]!, subframeArchives: [AnyObject]!)
  init!(data: Data!)
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  var subframeArchives: [AnyObject]! { get }
  @NSCopying var data: Data! { get }
  init()
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(withZone zone: Zone = nil) -> AnyObject
}
