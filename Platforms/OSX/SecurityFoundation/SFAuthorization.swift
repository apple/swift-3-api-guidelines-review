
class SFAuthorization : Object, Coding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorization(withFlags flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)
  init!()
  func invalidateCredentials()
  func obtain(right rightName: AuthorizationString, flags: AuthorizationFlags) throws
  func obtain(rights rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SFAuthorization {
}
