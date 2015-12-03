

/*!
	@class SFAuthorization 
    @abstract SFAuthorization APIs are used for implementing access control in applications and daemons. It has NSCoder support for proxied objects SFAuthorization is a wrapper for using the Authorization API.
*/
class SFAuthorization : NSObject, NSCoding {

  /*!
  	@method authorization
  	@abstract Returns an authorization object initialized with a default environment, flags and rights.
  */
  class func authorization() -> AnyObject!

  /*!
  	@method authorizationRef
  	@abstract Returns the AuthorizationRef for this SFAuthorization.
  */
  func authorizationRef() -> AuthorizationRef

  /*!
      @method authorizationWithFlags:rights:environment:
  	@abstract Returns an authorization object initialized with the specified flags, rights and environment.
  	@param flags Authorization flags.
      @param rights (input/optional) An AuthorizationItemSet containing rights for which authorization is being requested.  If none are specified the resulting AuthorizationRef will authorize nothing at all.
      @param environment (input/optional) An AuthorizationItemSet containing enviroment state used when making the autorization decision.  See the AuthorizationEnvironment type for details.
  */
  class func authorizationWithFlags(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>) -> AnyObject!

  /*!
  	@method initWithFlags:rights:environment:
  	@abstract Initializes an authorization object specified flags, rights and environment.
  	@param flags Authorization flags.
      @param rights (input/optional) An AuthorizationItemSet containing rights for which authorization is being requested.  If none are specified the resulting AuthorizationRef will authorize nothing at all.
      @param environment (input/optional) An AuthorizationItemSet containing enviroment state used when making the autorization decision.  See the AuthorizationEnvironment type for details.
  */
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>, environment: UnsafePointer<AuthorizationEnvironment>)

  /*!
  	@method init
  	@abstract Initializes an authorization object initialized with a default environment, flags and rights.
  */
  init!()

  /*!
  	@method invalidateCredentials
  	@abstract Calling this will prevent any rights that were obtained by this object to be preserved. It effectively locks down all potentially shared authorizations.
  */
  func invalidateCredentials()

  /*!
   @method obtainWithRight:flags:
   @abstract Call obtainWithRight to gain a right to have access to a privilege operation. On success, YES is returned.
   @param rightName The name of an authorization right.
   @param flags Authorization flags.
   @param error Resulting error.
   */
  func obtainWithRight(rightName: AuthorizationString, flags: AuthorizationFlags) throws

  /*!
      @method obtainWithRights:flags:environment:authorizedRights:error:
  	@abstract Call obtainWithRights to gain the rights to have access to privileged operations. On success, YES is returned.
  	@param flags Authorization flags.
      @param rights (input) A rights set (see AuthorizationCreate).
      @param environment (input/optional) An AuthorizationItemSet containing enviroment state used when making the autorization decision.  See the AuthorizationEnvironment type for details.
      @param authorizedRights (output/optional) A pointer to a newly allocated AuthorizationInfoSet in which the authorized subset of rights are returned (authorizedRights should be deallocated by calling AuthorizationFreeInfoSet() when it is no longer needed).  If NULL the only information returned is the status.  Note that if the kAuthorizationFlagPreAuthorize flag was specified rights that could not be preauthorized are returned in authorizedRights, but their flags contains the kAuthorizationFlagCanNotPreAuthorize bit.
  	@param error Resulting error.
  */
  func obtainWithRights(rights: UnsafePointer<AuthorizationRights>, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>>) throws
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
extension SFAuthorization {
}
