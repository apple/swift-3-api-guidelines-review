
class SFAuthorization : Object, Coding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorization(with flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)
  init!()
  func invalidateCredentials()
  func obtain(withRight rightName: AuthorizationString, flags: AuthorizationFlags) throws
  func obtain(withRights rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SFAuthorization {
}
