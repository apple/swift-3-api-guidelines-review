
@available(OSX 10.5, *)
class CBIdentityAuthority : Object {
  class func local() -> CBIdentityAuthority
  class func managed() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
  init()
}
