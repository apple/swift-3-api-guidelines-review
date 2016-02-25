
@available(OSX 10.5, *)
class CBIdentityAuthority : NSObject {
  class func local() -> CBIdentityAuthority
  class func managed() -> CBIdentityAuthority
  class func defaultIdentityAuthority() -> CBIdentityAuthority
  var localizedName: String { get }
}
