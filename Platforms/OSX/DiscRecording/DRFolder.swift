
class DRFolder : DRFSObject {
  init!(path: String!)
  init()
}
extension DRFolder {
  class func virtualFolder(withName name: String!) -> DRFolder!
  init!(name: String!)
  func makeVirtual()
  func addChild(child: DRFSObject!)
  func removeChild(child: DRFSObject!)
  func count() -> Int
  func children() -> [AnyObject]!
}
