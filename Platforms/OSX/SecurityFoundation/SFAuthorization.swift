
class SFAuthorization : NSObject, NSCoding {
  class func authorization() -> AnyObject!
  func authorizationRef() -> AuthorizationRef
  class func authorizationWithFlags(_ flags: AuthorizationFlags, rights rights: UnsafePointer<AuthorizationRights>, environment environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!
  init!(flags flags: AuthorizationFlags, rights rights: UnsafePointer<AuthorizationRights>, environment environment: UnsafePointer<AuthorizationEnvironment>)
  func invalidateCredentials()
  func obtainWithRight(_ rightName: AuthorizationString, flags flags: AuthorizationFlags) throws
  func obtainWithRights(_ rights: UnsafePointer<AuthorizationRights>, flags flags: AuthorizationFlags, environment environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SFAuthorization {
}
