
class SFAuthorization : NSObject, NSCoding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorization(with flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)
  init!()
  func invalidateCredentials()
  func obtain(right rightName: AuthorizationString, flags: AuthorizationFlags) throws
  func obtain(rights rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SFAuthorization {
}
