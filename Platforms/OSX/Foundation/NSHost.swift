
class Host : Object {
  class func current() -> Self
  convenience init(name: String?)
  convenience init(address: String)
  func isEqualTo(aHost: Host) -> Bool
  var name: String? { get }
  var names: [String] { get }
  var address: String? { get }
  var addresses: [String] { get }
  @available(OSX 10.6, *)
  var localizedName: String? { get }
  init()
}
