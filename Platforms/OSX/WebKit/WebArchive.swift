
let WebArchivePboardType: String
class WebArchive : Object, Coding, Copying {
  init!(mainResource: WebResource!, subresources: [AnyObject]!, subframeArchives: [AnyObject]!)
  init!(data: Data!)
  var mainResource: WebResource! { get }
  var subresources: [AnyObject]! { get }
  var subframeArchives: [AnyObject]! { get }
  @NSCopying var data: Data! { get }
  init()
  func encode(aCoder: Coder)
  init?(coder aDecoder: Coder)
  func copy(zone: Zone = nil) -> AnyObject
}
