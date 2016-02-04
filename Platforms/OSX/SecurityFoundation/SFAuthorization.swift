
class SFAuthorization : NSObject, NSCoding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorizationWithFlags(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)
  init!()
  func invalidateCredentials()
  func obtainWithRight(rightName: AuthorizationString, flags: AuthorizationFlags) throws
  func obtainWithRights(rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SFAuthorization {
}
