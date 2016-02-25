
class DRFolder : DRFSObject {
  init!(path path: String!)
}
extension DRFolder {
  class func virtualFolder(withName name: String!) -> DRFolder!
  init!(name name: String!)
  func makeVirtual()
  func addChild(_ child: DRFSObject!)
  func removeChild(_ child: DRFSObject!)
  func count() -> Int
  func children() -> [AnyObject]!
}
