
@available(OSX 10.5, *)
class CBIdentityAuthority : NSObject {
  class func localIdentityAuthority() -> CBIdentityAuthority
  class func managedIdentityAuthority() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
  init()
}
