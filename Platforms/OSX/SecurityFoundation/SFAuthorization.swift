
class SFAuthorization : Object, Coding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorizationWith(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)
  init!()
  func invalidateCredentials()
  func obtainWithRight(rightName: AuthorizationString, flags: AuthorizationFlags) throws
  func obtainWithRights(rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
extension SFAuthorization {
}
