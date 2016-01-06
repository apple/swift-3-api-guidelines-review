
@available(OSX 10.6, *)
let ODFrameworkErrorDomain: String

/*!
    @typedef    ODContextRef
    @abstract   Opaque reference for the ODContext object
*/
class ODContext {
}

/*!
    @typedef    ODContextRef
    @abstract   Opaque reference for the ODContext object
*/
typealias ODContextRef = ODContext

/*!
    @typedef    ODNodeRef
    @abstract   Opaque reference for the ODNode object
*/
class ODNode {
}

/*!
    @typedef    ODNodeRef
    @abstract   Opaque reference for the ODNode object
*/
typealias ODNodeRef = ODNode

/*!
    @typedef    ODQueryRef
    @abstract   Opaque reference for the ODQuery object
*/
class ODQuery {
}

/*!
    @typedef    ODQueryRef
    @abstract   Opaque reference for the ODQuery object
*/
typealias ODQueryRef = ODQuery

/*!
    @typedef    ODRecordRef
    @abstract   Opaque reference for the ODRecord object
*/
class ODRecord {
}

/*!
    @typedef    ODRecordRef
    @abstract   Opaque reference for the ODRecord object
*/
typealias ODRecordRef = ODRecord

/*!
    @typedef	ODSessionRef
    @abstract   Opaque reference for ODSession object
*/
class ODSession {
}

/*!
    @typedef	ODSessionRef
    @abstract   Opaque reference for ODSession object
*/
typealias ODSessionRef = ODSession

/*!
    @const      kODErrorDomainFramework
    @abstract   the error domain for OpenDirectory.framework details
    @discussion the error domain for OpenDirectory.framework details
*/
@available(OSX 10.6, *)
let kODErrorDomainFramework: CFString!

/*!
    @function   ODContextGetTypeID
    @abstract   Standard GetTypeID function support for CF-based objects
    @discussion Returns the typeID for the ODContext object
    @result     a valid CFTypeID for the ODContext object
*/
func ODContextGetTypeID() -> CFTypeID

/*!
    @function   ODNodeGetTypeID
    @abstract   Standard GetTypeID function support for CF-based objects
    @discussion Returns the typeID for the ODNode objects
    @result     a valid CFTypeID for the ODNode object
*/
@available(OSX 10.6, *)
func ODNodeGetTypeID() -> CFTypeID

/*!
    @function   ODNodeCreateWithNodeType
    @abstract   Creates an ODNodeRef based on a specific node type
    @discussion Creates an ODNodeRef based on a specific node type
    @param      allocator a memory allocator to use for this object
    @param      session an ODSessionRef, either kODSessionDefault or a valid ODSessionRef can be passed
    @param      nodeType an ODNodeType of the node to open
    @param      error an optional CFErrorRef reference for error details
    @result     a valid ODNodeRef if successful, otherwise returns NULL.  outError can be checked for details upon
                failure.
*/
@available(OSX 10.6, *)
func ODNodeCreateWithNodeType(allocator: CFAllocator!, _ session: ODSession!, _ nodeType: ODNodeType, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!

/*!
    @function   ODNodeCreateWithName
    @abstract   Creates an ODNodeRef based on a partciular node name
    @discussion Creates an ODNodeRef based on a particular node name
    @param      allocator a memory allocator to use for this object
    @param      session an ODSessionRef, either kODSessionDefault or a valid ODSessionRef can be passed
    @param      nodeName a CFStringRef of the name of the node to open
    @param      error an optional CFErrorRef reference for error details
    @result     a valid ODNodeRef if successful, otherwise returns NULL. outError can be checked for specific
                error
*/
@available(OSX 10.6, *)
func ODNodeCreateWithName(allocator: CFAllocator!, _ session: ODSession!, _ nodeName: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!

/*!
    @function   ODNodeCreateCopy
    @abstract   Creates a copy, including any remote credentials used for Proxy and/or Node authentication
    @discussion Creates a copy of the object including all credentials used for the original.  Can be used for future
                references to the same node setup.
    @param      allocator a memory allocator to use for this object
    @param      node an ODNodeRef to make a copy of
    @param      error an optional CFErrorRef reference for error details
    @result     a valid ODNodeRef if successful, otherwise returns NULL, with outError set to a CFErrorRef
*/
@available(OSX 10.6, *)
func ODNodeCreateCopy(allocator: CFAllocator!, _ node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODNode>!

/*!
    @function   ODNodeCopySubnodeNames
    @abstract   Returns a CFArray of subnode names for this node, which may contain sub-nodes or search policy nodes
    @discussion Returns a CFArray of subnode names for this node, which may contain sub-nodes or search policy nodes.
                Commonly used with Search policy nodes.
    @param      node an ODNodeRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFArrayRef with the list of nodes, otherwise NULL, with outError set to a CFErrorRef
*/
@available(OSX 10.6, *)
func ODNodeCopySubnodeNames(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODNodeCopyUnreachableSubnodeNames
    @abstract   Will return names of subnodes that are not currently reachable.
    @discussion Will return names of subnodes that are not currently reachable.  Commonly used with Search policy nodes
                to determine if any nodes are currently unreachable, but may also return other subnodes if the
                Open Directory plugin supports.
    @param      node an ODNodeRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFArrayRef with the list of unreachable nodes or NULL if no bad nodes
*/
@available(OSX 10.6, *)
func ODNodeCopyUnreachableSubnodeNames(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODNodeGetName
    @abstract   Returns the node name of the node that was opened
    @discussion Returns the node name of the node that was opened
    @param      node an ODNodeRef to use
    @result     a CFStringRef of the node name that is current or NULL if no open node
*/
@available(OSX 10.6, *)
func ODNodeGetName(node: ODNode!) -> Unmanaged<CFString>!

/*!
    @function   ODNodeCopyDetails
    @abstract   Returns a dictionary with details about the node in dictionary form
    @discussion Returns a dictionary with details about the node in dictionary form.
    @param      node an ODNodeRef to use
    @param      keys a CFArrayRef listing the keys the user wants returned, such as 
                kODAttributeTypeStreet
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing the requested key and values in form of a CFArray
*/
@available(OSX 10.6, *)
func ODNodeCopyDetails(node: ODNode!, _ keys: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODNodeCopySupportedRecordTypes
    @abstract   Returns a CFArrayRef of the record types supported by this node.
    @discussion Returns a CFArrayRef of the record types supported by this node.  If node does not support the check
                then all possible types will be returned.
    @param      node an ODNodeRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a valid CFArrayRef of CFStrings listing the supported Record types on this node.
*/
@available(OSX 10.6, *)
func ODNodeCopySupportedRecordTypes(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODNodeCopySupportedAttributes
    @abstract   Will return a list of attribute types supported for that attribute if possible
    @discussion Will return a list of attribute types supported for that attribute if possible.  If no specific
                types are available, then all possible values will be returned instead.
    @param      node an ODNodeRef to use
    @param      recordType a ODRecordTypeRef with the type of record to check attribute types.  If NULL is passed it will
                return all possible attributes that are available.
    @param      error an optional CFErrorRef reference for error details
    @result     a valid CFArrayRef of CFStrings listing the attributes supported for the requested record type
*/
@available(OSX 10.6, *)
func ODNodeCopySupportedAttributes(node: ODNode!, _ recordType: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODNodeSetCredentials
    @abstract   Sets the credentials for interaction with the ODNode
    @discussion Sets the credentials for interaction with the ODNode.  Record references, etc. will use these credentials
                to query or change data.  Setting the credentials on a node referenced by other OD object types will
                change the credentials for all for all references.
    @param      node an ODNodeRef to use
    @param      recordType a ODRecordTypeRef of the Record Type to use, if NULL is passed, defaults to a 
                kODRecordTypeUsers
    @param      recordName a CFString of the username to be used for this node authentication
    @param      password a CFString of the password to be used for this node authentication
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details.  If the authentication failed, 
                the previous credentials are used.
*/
@available(OSX 10.6, *)
func ODNodeSetCredentials(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeSetCredentialsExtended
    @abstract   Allows use of other Open Directory types of authentications to set the credentials for an ODNode
    @discussion Allows the caller to use other types of authentications that are available in Open Directory, that may
                require response-request loops, etc.  Not all OD plugins will support this call, look for 
                kODErrorCredentialsMethodNotSupported in outError.
    @param      node an ODNodeRef to use
    @param      recordType a ODRecordType of the type of record to do the authentication with
    @param      authType a ODAuthenticationType of the type of authentication to be used (e.g., kDSStdAuthNTLMv2)
    @param      authItems a CFArray of CFData or CFString items that will be sent in order to the auth process
    @param      outAuthItems will be assigned to a pointer of a CFArray of CFData items if there are returned values
    @param      outContext will return a pointer to a context if caller supplies a container, and the call requires a
                context.  If a non-NULL value is returned, then more calls must be made with the Context to continue
                the authorization.
    @param      error an optional CFErrorRef reference for error details
    @result     a bool will be returned with the result of the operation and outAuthItems set with response items
                and outContext set for any needed continuation.
*/
@available(OSX 10.6, *)
func ODNodeSetCredentialsExtended(node: ODNode!, _ recordType: String!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeCreateRecord
    @abstract   Takes a record and all of the provided attributes and creates the record in the node
    @discussion Takes all the provided attributes and type to create an entire record.  The function will assign a
                UUID to the record automatically.  This UUID can be overwritten by the client by passing with the
                other attributes.
    @param      node an ODNodeRef to use
    @param      recordType a ODRecordTypeRef of the type of record (e.g., kODRecordTypeUsers, etc.)
    @param      recordName a CFStringRef of the name of record
    @param      attributeDict a CFDictionaryRef of key-value pairs for attribute values.  The key is a CFStringRef of the
                attribute name or ODRecordType constant such as kODAttributeTypeRecordName.  The value must be a CFArrayRef of
                CFDataRef or CFStringRef.  If additional kODAttributeTypeRecordName are to be set, they can be passed in the 
                inAttributes list.  This parameter is optional and can be NULL.  If any of the attributes passed
                fail to be set, the record will be deleted and outError will be set with the appropriate error.
                If a password is not supplied with a user account, then a random password will be set automatically.  If
                an empty password is expected, then the kODAttributeTypePassword should be set to an empty CFArray.
    @param      error an optional CFErrorRef reference for error details
    @result     returns a valid ODRecordRef.  If the add fails, outError can be checked for details.
*/
@available(OSX 10.6, *)
func ODNodeCreateRecord(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ attributeDict: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODRecord>!

/*!
    @function   ODNodeCopyRecord
    @abstract   Simple API to open / create a references to a particular record on a Node
    @discussion Simple API to open / create a references to a particular record on a Node
    @param      node an ODNodeRef to use
    @param      recordType a ODRecordTypeRef of the record type to copy
    @param      recordName a CFStringRef of the record name to copy
    @param      attributes (optional) a CFArrayRef (or single ODAttributeType) of the attributes to copy from the directory.  Can be NULL when no 
                attributes are needed.  Any standard types can be passed, for example
                kODAttributeTypeAllAttributes will fetch all attributes up front.  If just standard attributes are needed, then
                kODAttributeTypeStandardOnly can be passed.
    @param      error an optional CFErrorRef reference for error details
    @result     returns a valid ODRecordRef.  If the record copy fails, the error can be checked for details.
                If the record is not found, will return NULL with a NULL error.
*/
@available(OSX 10.6, *)
func ODNodeCopyRecord(node: ODNode!, _ recordType: String!, _ recordName: CFString!, _ attributes: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODRecord>!

/*!
    @function   ODNodeCustomCall
    @abstract   Sends a custom call to a node.
    @discussion This will send a custom call to a node along with the specified data, returning the result.
    @param      node an ODNodeRef to use
    @param      customCode the custom code to be sent to the node
    @param      data a data blob expected by the custom code, can be NULL of no send data
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDataRef with the result of the operation, otherwise outError can be checked for specific details
*/
@available(OSX 10.6, *)
func ODNodeCustomCall(node: ODNode!, _ customCode: CFIndex, _ data: CFData!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFData!

/*!
 * @function ODNodeCustomCall
 *
 * @abstract
 * Sends a named custom function call to a node.
 *
 * @discussion
 * Sends a named custom function call to a node.  Custom functions are defined by the modules that implement them
 * and the parameter is defined by the module.
 *
 * @param node
 * An ODNodeRef to use
 *
 * @param function
 * A CFStringRef that specifies the name of the function
 *
 * @param payload
 * A CFType appropriate for the custom function.  The type is dictated by the module implementing the function.
 *
 * @param error
 * An optional CFErrorRef reference to receive any errors from the custom function call.
 *
 * @result
 * Returns a CFType appropriate for the function.
 */
@available(OSX 10.9, *)
func ODNodeCustomFunction(node: ODNode!, _ function: CFString!, _ payload: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> AnyObject!

/*!
    @function   ODNodeCopyPolicies
    @abstract   This will copy any policies configured for the node.
    @discussion This will copy any policies configured for the node.
    @param      node an ODNodeRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing all currently set policies
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODNodeCopyAccountPolicies")
func ODNodeCopyPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODNodeCopySupportedPolicies
    @abstract   This will return a dictionary of supported policies.
    @discussion This will return a dictionary of supported policies, if appropriate, the value will be the maximum value allowed
                for the policy in question.  For example, if password history is available, it will state how much history is
                supported.
    @param      node an ODNodeRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing all currently supported policies.  The values will be the maximum value allowed.
*/
@available(OSX, introduced=10.9, deprecated=10.10)
func ODNodeCopySupportedPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODNodeSetPolicies
    @abstract   This will set the policy for the node.
    @discussion This will set the policy for the node.  Policies are evaluated in combination with record-level policies.
    @param      node an ODNodeRef to use
    @param      policies a CFDictionary of policies to be set
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy set succeeded, otherwise error is set. 
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODNodeSetAccountPolicies")
func ODNodeSetPolicies(node: ODNode!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeSetPolicy
    @abstract   This will set a specific policy setting for the node.
    @discussion This will set a specific policy setting for the node.
    @param      node an ODNodeRef to use
    @param      policy a valid ODPolicyType
    @param      value a CFTypeRef to be set (should be of appropriate type for the policy)
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy set succeeded, otherwise error is set.
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODNodeAddAccountPolicy")
func ODNodeSetPolicy(node: ODNode!, _ policyType: ODPolicyType!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeRemovePolicy
    @abstract   This will remove a specific policy setting from the node.
    @discussion This will remove a specific policy setting from the node.
    @param      node an ODNodeRef to use
    @param      policy a valid ODPolicyType
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy removal succeeded, otherwise error is set.
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODNodeRemoveAccountPolicy")
func ODNodeRemovePolicy(node: ODNode!, _ policyType: ODPolicyType!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeAddAccountPolicy
    @abstract   This will add an account policy to the node for the specified category.
    @discussion This will add an account policy to the node for the specified category.
                The specified policy will be applied to all users in the
                specified node when policies are evaluated.
    @param      node an ODNodeRef to use.
    @param      policy a dictionary containing the specific policy to be added.
                The dictionary may contain the following keys:
                    kODPolicyKeyIdentifier a required key identifying the policy.
                    kODPolicyKeyParameters an optional key containing a dictionary of
                        parameters that can be used for informational purposes or in
                        the policy format string.
                    kODPolicyKeyContent a required key specifying the policy,
                        from which a predicate will be created for evaluating
                        the policy.
    @param      category a valid ODPolicyCategoryType to which the specified policy will be added.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy addition succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODNodeAddAccountPolicy(node: ODNode!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeRemoveAccountPolicy
    @abstract   This will remove an account policy from the node for the specified category.
    @discussion This will remove an account policy from the node for the specified category.
    @param      node an ODNodeRef to use.
    @param      policy a dictionary containing the specific policy to be
                removed, with the same format as described in ODNodeAddAccountPolicy.
    @param      category a valid ODPolicyCategoryType from which the specified policy will be removed.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy removal succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODNodeRemoveAccountPolicy(node: ODNode!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeSetAccountPolicies
    @abstract   This will set the policies for the node.
    @discussion This will set the policies for the node, replacing any existing
                policies.
    @param      node an ODNodeRef to use.
    @param      policies a dictionary containing all of the policies to be set
                for the node.  The dictionary may contain the following keys:
                    kODPolicyCategoryAuthentication an optional key with a value
                        of an array of policy dictionaries that specify when
                        authentications should be allowed.
                    kODPolicyCategoryPasswordContent an optional key with a
                        value of an array of policy dictionaries the specify the
                        required content of passwords. 
                    kODPolicyCategoryPasswordChange an optional key with a value
                    of an array of policy dictionaries that specify when
                    passwords are required to be changed.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy set succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODNodeSetAccountPolicies(node: ODNode!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODNodeCopyAccountPolicies
    @abstract   This will copy any policies configured for the node.
    @discussion This will copy any policies configured for the node.
    @param      node an ODNodeRef to use.
    @param      error an optional CFErrorRef reference for error details.
    @result     a CFDictionaryRef containing all currently set policies.  The
                format of the dictionary is the same as described in
                ODNodeSetAccountPolicies(). 
*/
@available(OSX 10.10, *)
func ODNodeCopyAccountPolicies(node: ODNode!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary!

/*!
    @function   ODNodePasswordContentCheck
    @abstract   Validates a password against the node's password content policies.
    @discussion Validates a password against the node's password content policies.
                The node's password content policies will be evaluated to
                determine if the password is acceptable.  May be used prior to
                creating the record.

                This check is only definitive at the time it was requested. The
                policy or the environment could change before the password change
                is actually requested.  Errors from the password change request
                should be consulted.

    @param      node an ODNodeRef to use.
    @param      password the password to be evaluated against the content policies.
    @param      recordName the name of the record.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the password passes all content policies, otherwise error is set.
 */
@available(OSX 10.10, *)
func ODNodePasswordContentCheck(node: ODNode!, _ password: CFString!, _ recordName: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @typedef    ODQueryCallback
    @abstract   Is called as results are returned from a query.  The incoming result must be retained or copied.
    @discussion Is called as results are returned from an CFRunLoop-based query.  These results are only partial
                and the callback is called repeatedly as results are available.  The incoming result must be retained or copied.  The 
                array will be released by the CFRunLoop upon return.  Incoming results do not include previous results,
                only the most recent results are returned.  inResults can be NULL if an error occurs or the query is complete.  If 
                inError and inResults are NULL then the query has completed.
*/
typealias ODQueryCallback = @convention(c) (ODQuery!, CFArray!, CFError!, UnsafeMutablePointer<Void>) -> Void

/*!
    @function   ODQueryGetTypeID
    @abstract   Standard GetTypeID function support for CF-based objects
    @discussion Returns the typeID for the ODQuery object
    @result     a valid CFTypeID for the ODQuery object
*/
@available(OSX 10.6, *)
func ODQueryGetTypeID() -> CFTypeID

/*!
    @function   ODQueryCreateWithNode
    @abstract   Creates a query with the node using the parameters provided
    @discussion Creates a query with the node using the supplied query parameters.  Some parameters can either be CFString or
                CFData or a CFArray of either CFString or CFData.
    @param      allocator a memory allocator to use for this object
    @param      node an ODNodeRef to use
    @param      recordTypeOrList a CFString of a type or CFArray with a list of record types
    @param      attribute a CFStringRef of the attribute name to query
    @param      matchType an ODMatchType value that signifies the type of query
    @param      queryValueOrList a CFStringRef, CFDataRef or CFArrayRef of either type for values to query in attribute
    @param      returnAttributeOrList a CFStringRef or CFArrayRef of CFStrings with the list of attributes to be returned
                from the query.  Passing NULL is equivalent to passing kODAttributeTypeStandardOnly.
    @param      maxResults a CFIndex of the total number of values the caller wants to be returned
    @param      error an optional CFErrorRef reference for error details
    @result     an ODQueryRef which should be passed into ODQueryCopyResults for immediate results or
                ODQueryScheduleWithRunLoop for background behavior
*/
@available(OSX 10.6, *)
func ODQueryCreateWithNode(allocator: CFAllocator!, _ node: ODNode!, _ recordTypeOrList: AnyObject!, _ attribute: String!, _ matchType: ODMatchType, _ queryValueOrList: AnyObject!, _ returnAttributeOrList: AnyObject!, _ maxResults: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODQuery>!

/*!
    @function   ODQueryCreateWithNodeType
    @abstract   Creates a query object that is initialized to a particular node type.
    @discussion Creates a query object that is initialized to a particular node type using the supplied
                query options.
    @param      allocator a memory allocator to use for this object
    @param      nodeType an ODNodeType to use when doing a query
    @param      recordTypeOrList a ODRecordType of a type or CFArray with a list of record types
    @param      attribute a ODAttributeType or CFStringRef of the attribute name to query
    @param      matchType an ODMatchType value that signifies the type of query
    @param      queryValueOrList a CFStringRef, CFDataRef or CFArrayRef of either type for values to query in attribute
    @param      returnAttributeOrList a CFStringRef or CFArrayRef of CFStrings with the list of attributes to be returned
                from the query.  Passing NULL is equivalent to passing kODAttributeTypeStandardOnly.
    @param      maxResults a CFIndex of the total number of values the caller wants to be returned
    @param      error an optional CFErrorRef reference for error details
    @result     an ODQueryRef which should be passed into ODQueryCopyResults for immediate results or
                ODQueryScheduleWithRunLoop for background behavior, see ODQueryCallback for details on RunLoop
                behavior.
*/
@available(OSX 10.6, *)
func ODQueryCreateWithNodeType(allocator: CFAllocator!, _ nodeType: ODNodeType, _ recordTypeOrList: AnyObject!, _ attribute: String!, _ matchType: ODMatchType, _ queryValueOrList: AnyObject!, _ returnAttributeOrList: AnyObject!, _ maxResults: CFIndex, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODQuery>!

/*!
    @function   ODQueryCopyResults
    @abstract   Returns results from a provided ODQueryRef synchronously
    @discussion Returns results from a provided ODQueryRef synchronously.  Passing false to inAllowPartialResults
                will block the call until all results are returned or an error occurs.  true can be passed at any time
                even if previous calls were made with false.
    @param      query an ODQueryRef to use
    @param      allowPartialResults a bool, passing true to retrieve any currently available results, or false to
                wait for all results
    @param      error an optional CFErrorRef reference for error details
    @result     a CFArrayRef comprised of ODRecord objects.  If partial results were requested but are complete, then
                NULL will be returned with outError set to NULL. If an error occurs, NULL will be returned and 
                outError should be checked accordingly.
*/
@available(OSX 10.6, *)
func ODQueryCopyResults(query: ODQuery!, _ allowPartialResults: Bool, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODQuerySynchronize
    @abstract   Will dispose of any results and restart the query.
    @discussion Will dispose of any results and restart the query for subsequent ODQueryCopyResults.  If the query
                is currently scheduled on a RunLoop, then the callback function will be called with inResults == NULL and
                inError.error == kODErrorQuerySynchronize and inError.domain == kODErrorDomainFramework, signifying that
                all existing results should be thrown away in preparation for new results.
    @param      query an ODQueryRef to use
*/
@available(OSX 10.6, *)
func ODQuerySynchronize(query: ODQuery!)

/*!
    @function   ODQuerySetCallback
    @abstract   This call is used to set the callback function for an asynchronous query
    @discussion This call is used to set the callback function for an asynchronous query, using a
                CFRunLoop or a dispatch queue.
    @param      query an ODQueryRef to use
    @param      callback a function to call when a query has results to return
    @param      userInfo a user-defined pointer to be passed back to the Query callback function
*/
@available(OSX 10.6, *)
func ODQuerySetCallback(query: ODQuery!, _ callback: ODQueryCallback!, _ userInfo: UnsafeMutablePointer<Void>)

/*!
    @function   ODQueryScheduleWithRunLoop
    @abstract   Allows a query to run off of a runloop, though it will spawn a thread to handle the work
    @discussion Allows a query to run off of a runloop, though it will spawn a thread to handle the work.
                When query is complete or stopped the callback function will be called with NULL results 
                and inError set to NULL.  ODQueryUnscheduleFromRunLoop() must be called to remove this query
                from Runloops if necessary.
    @param      query an ODQueryRef to put on the runloop
    @param      runLoop a CFRunLoopRef to put the ODQueryRef source onto
    @param      runLoopMode a CFStringRef with the runloop mode to add the ODQueryRef to
*/
@available(OSX 10.6, *)
func ODQueryScheduleWithRunLoop(query: ODQuery!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)

/*!
    @function   ODQueryUnscheduleFromRunLoop
    @abstract   Removes the ODQueryRef from the provided runloop
    @discussion Removes the ODQueryRef from the provided runloop
    @param      query an ODQueryRef to remove from the runloop
    @param      runLoop a CFRunLoopRef to remove the ODQuery source from
    @param      runLoopMode a CFStringRef of the mode to remove the ODQuery from
*/
@available(OSX 10.6, *)
func ODQueryUnscheduleFromRunLoop(query: ODQuery!, _ runLoop: CFRunLoop!, _ runLoopMode: CFString!)

/*!
    @function   ODQuerySetDispatchQueue
    @abstract   Performs the query and sends the results using the specified dispatch queue
    @discussion Schedule the query to run and deliver its results using the specified dispatch queue.
                The previously set callback will be called using the same semantics as
                ODQueryScheduleWithRunLoop
    @param      query an ODQueryRef to perform
    @param      queue a dispatch queue to receive the query results
*/
@available(OSX 10.6, *)
func ODQuerySetDispatchQueue(query: ODQuery!, _ queue: dispatch_queue_t!)

/*!
    @function   ODRecordGetTypeID
    @abstract   Standard GetTypeID function support for CF-based objects
    @discussion Returns the typeID for the ODRecord object
    @result     a valid CFTypeID for the ODRecord object
*/
@available(OSX 10.6, *)
func ODRecordGetTypeID() -> CFTypeID

/*!
    @function   ODRecordSetNodeCredentials
    @abstract   Similar to calling ODNodeSetCredentials except credentials are only set for this particular record's node
    @discussion Sets the credentials if necessary on the ODNodeRef referenced by this ODRecordRef.  Very similar to
                calling ODNodeSetCredentials except other records referencing the underlying ODNodeRef will not get
                authenticated, therefore inadvertant changes cannot occur.  If all records referencing a particular 
                ODNodeRef need to be updated, then use ODNodeSetCredentials on the original ODNodeRef instead.  If the
                ODNodeRef is already authenticated with the same name and password, this will be a NOOP call.  The original
                ODNodeRef held by an ODRecordRef will be released and a new ODNodeRef will be created when the credentials
                are set for this ODRecordRef.  Calling this on multiple records could result in multiple References into the 
                OpenDirectory daemon, which could cause errors logged into /var/log/system.log if a threshold is reached.
    @param      record an ODRecordRef to use
    @param      username a CFStringRef of the username used to authenticate
    @param      password a CFStringRef of the password used to authenticate
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details.  Upon failure the original node
                will still be intact.
*/
@available(OSX 10.6, *)
func ODRecordSetNodeCredentials(record: ODRecord!, _ username: CFString!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordSetNodeCredentialsExtended
    @abstract   Similar to calling ODNodeSetCredentialsExtended except credentials are only set for this particular record's
                node
    @discussion Allows the caller to use other types of authentications that are available in Open Directory, that may
                require response-request loops, etc.  Not all OD plugins will support this call, look for 
                kODErrorCredentialsMethodNotSupported in outError.  Same behavior as ODRecordSetNodeCredentials.
    @param      record an ODRecordRef to use
    @param      recordType a ODRecordTypeRef of the type of record to do the authentication with
    @param      authType a ODAuthenticationTypeRef of the type of authentication to be used (e.g., kDSStdAuthNTLMv2)
    @param      authItems a CFArrayRef of CFData or CFString items that will be sent in order to the auth process
    @param      outAuthItems a pointer to CFArrayRef that will be assigned to a CFArrayRef of CFData items if the
                call returned any values followup values
    @param      outContext a pointer to ODContextRef if the call requires further calls for response-request auths.
    @param      error an optional CFErrorRef reference for error details
    @result     a bool will be returned with the result of the operation and outAuthItems set with response items
                and outContext set for any needed continuation.  Upon failure the original node will still be intact.
*/
@available(OSX 10.6, *)
func ODRecordSetNodeCredentialsExtended(record: ODRecord!, _ recordType: String!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordVerifyPassword
    @abstract   Verifies the password provided is valid for the record
    @discussion Verifies the password provided is valid for the record.
    @param      record an ODRecordRef to use
    @param      password a CFStringRef of the password that is being verified
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordVerifyPassword(record: ODRecord!, _ password: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordVerifyPasswordExtended
    @abstract   Allows use of other Open Directory types of authentications to verify a record password
    @discussion Allows the caller to use other types of authentications that are available in Open Directory, that may 
                require response-request loops, etc.
    @param      record an ODRecordRef to use
    @param      authType a ODAuthenticationTypeRef of the type of authentication to be used (e.g., kODAuthenticationTypeCRAM_MD5)
    @param      authItems a CFArrayRef of CFData or CFString items that will be sent in order to the auth process
    @param      outAuthItems a pointer to CFArrayRef that will be assigned to a CFArrayRef of CFData items if the
                call returned any values followup values
    @param      outContext a pointer to ODContextRef if the call requires further calls for response-request auths.
    @param      error an optional CFErrorRef reference for error details
    @result     a bool will be returned with the result of the operation and outAuthItems set with response items
                and outContext set for any needed continuation.  Some ODNodes may not support the call so an error of
                eNotHandledByThisNode or eNotYetImplemented may be returned.
*/
@available(OSX 10.6, *)
func ODRecordVerifyPasswordExtended(record: ODRecord!, _ authType: String!, _ authItems: CFArray!, _ outAuthItems: UnsafeMutablePointer<Unmanaged<CFArray>?>, _ outContext: UnsafeMutablePointer<Unmanaged<ODContext>?>, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordChangePassword
    @abstract   Changes the password of an ODRecord
    @discussion Changes the password of an ODRecord.  If NULL is passed into inOldPassword, then an attempt to set
                the password will be tried.  If changing a password, then both old and new passwords should be supplied.
    @param      record an ODRecordRef to use
    @param      oldPassword a CFString of the record's old password (NULL is optional).
    @param      newPassword a CFString of the record's new password
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordChangePassword(record: ODRecord!, _ oldPassword: CFString!, _ newPassword: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordGetRecordType
    @abstract   Returns the record type of an ODRecordRef
    @discussion Returns the record type of an ODRecordRef
    @param      record an ODRecordRef to use
    @result     a CFStringRef of the record type for this ODRecordRef
*/
@available(OSX 10.6, *)
func ODRecordGetRecordType(record: ODRecord!) -> Unmanaged<CFString>!

/*!
    @function   ODRecordGetRecordName
    @abstract   Returns the official record name of an ODRecordRef
    @discussion Returns the official record name of an ODRecordRef which typically corresponds to the first value
                of the kODAttributeTypeRecordName attribute, but not always.  This name should be a valid name in either case.
    @param      record an ODRecordRef to use
    @result     a CFStringRef of the record name for this ODRecordRef
*/
@available(OSX 10.6, *)
func ODRecordGetRecordName(record: ODRecord!) -> Unmanaged<CFString>!

/*!
    @function   ODRecordCopyValues
    @abstract   Returns the value of an attribute as an array of CFStringRef or CFDataRef types
    @discussion Returns the value of an attribute as an array of CFStringRef or CFDataRef, depending on
                whether the data is Binary or not.  If the value has been fetched from the directory previously
                a copy of the internal storage will be returned without going to the directory.  If it has not been fetched
                previously, then it will be fetched at that time.
    @param      record an ODRecordRef to use
    @param      attribute a CFStringRef or ODAttributeType of the attribute (e.g., kODAttributeTypeRecordName, etc.)
    @param      error an optional CFErrorRef reference for error details
    @result     a CFArrayRef of the attribute requested if possible, or NULL if the attribute doesn't exist
*/
@available(OSX 10.6, *)
func ODRecordCopyValues(record: ODRecord!, _ attribute: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @function   ODRecordSetValue
    @abstract   Will take a CFDataRef or CFStringRef or a CFArrayRef of either type and set it for the attribute
    @discussion Will take a CFDataRef or CFStringRef or a CFArrayRef of either type and set it for the attribute.
                Any mixture of the types CFData and CFString are accepted.
    @param      record an ODRecordRef to use
    @param      attribute a CFStringRef of the attribute for values to be added too
    @param      valueOrValues a CFArrayRef of CFStringRef or CFDataRef types or either of the individual types, passing
                an empty CFArray deletes the attribute.  The underlying implementation will do this in the most efficient manner,
                either by adding only new values or completely replacing the values depending on the capabilities of the
                particular plugin.
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordSetValue(record: ODRecord!, _ attribute: String!, _ valueOrValues: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordAddValue
    @abstract   Adds a value to an attribute
    @discussion Adds a value to an attribute.
    @param      record an ODRecordRef to use
    @param      attribute a CFStringRef of the attribute for values to be added too
    @param      value a CFTypeRef of the value to be added to the attribute, either CFStringRef or CFDataRef
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordAddValue(record: ODRecord!, _ attribute: String!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordRemoveValue
    @abstract   Removes a particular value from an attribute.
    @discussion Removes a particular value from an attribute.
    @param      record an ODRecordRef to use
    @param      attribute a CFStringRef of the attribute to remove the value from
    @param      value a CFTypeRef of the value to be removed from the attribute.  Either CFStringRef or CFDataRef.
                If the value does not exist, true will be returned and no error will be set.
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordRemoveValue(record: ODRecord!, _ attribute: String!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordCopyDetails
    @abstract   Returns the attributes and values in the form of a key-value pair set for this record.
    @discussion Returns the attributes and values in the form of a key-value pair set for this record.  The key is a 
                CFStringRef or ODAttributeType of the attribute name (e.g., kODAttributeTypeRecordName, etc.) and the 
                value is an CFArrayRef of either CFDataRef or CFStringRef depending on the type of data.  Binary data will
                be returned as CFDataRef.
    @param      record an ODRecordRef to use
    @param      attributes a CFArrayRef of attributes.  If an attribute has not been fetched previously, it will be
                fetched in order to return the value.  If this parameter is NULL then all currently fetched attributes 
                will be returned.
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef of the attributes for the record
*/
@available(OSX 10.6, *)
func ODRecordCopyDetails(record: ODRecord!, _ attributes: CFArray!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODRecordSynchronize
    @abstract   Synchronizes the record from the Directory in order to get current data and commit pending changes
    @discussion Synchronizes the record from the Directory in order to get current data.  Any previously fetched attributes
                will be refetched from the Directory.  This will not refetch the entire record, unless the entire record
                has been accessed.  Additionally, any changes made to the record will be committed to the directory
                if the node does not do immediate commits.
    @param      record an ODRecordRef to use
    @param      error an optional CFErrorRef reference for error details
*/
@available(OSX 10.6, *)
func ODRecordSynchronize(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordDelete
    @abstract   Deletes the record from the node and invalidates the record.
    @discussion Deletes the record from the node and invalidates the record.  The ODRecordRef should be
                released after deletion.
    @param      record an ODRecordRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordDelete(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordAddMember
    @abstract   Will add the record as a member of the group record that is provided
    @discussion Will add the record as a member of the group record that is provided in an appopriate manner 
                based on what the directory will store.  An error will be returned if the record is not a group record.  
                Additionally, if the member record is not an appropriate type allowed as part of a group an
                error will be returned.
    @param      group an ODRecordRef of the group record to modify
    @param      member an ODRecordRef of the record to add to the group record
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordAddMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordRemoveMember
    @abstract   Will remove the record as a member from the group record that is provided
    @discussion Will remove the record as a member from the group record that is provided.  If the record type
                of group is not a Group, false will be returned with an appropriate error.
    @param      group an ODRecordRef of the group record to modify
    @param      member an ODRecordRef of the record to remove from the group record
    @param      error an optional CFErrorRef reference for error details
    @result     returns true on success, otherwise outError can be checked for details
*/
@available(OSX 10.6, *)
func ODRecordRemoveMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordContainsMember
    @abstract   Will use membership APIs to resolve group membership based on Group and Member record combination
    @discussion Will use membership APIs to resolve group membership based on Group and Member record combination.
                This API does not check attributes values directly, instead uses system APIs to deal with nested
                memberships.
    @param      group an ODRecordRef of the group to be checked for membership
    @param      member an ODRecordRef of the member to be checked against the group
    @param      error an optional CFErrorRef reference for error details
    @result     returns true or false depending on result
*/
@available(OSX 10.6, *)
func ODRecordContainsMember(group: ODRecord!, _ member: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordCopyPolicies
    @abstract   This will copy any policies configured for the record.
    @discussion This will copy any policies configured for the record.
    @param      record an ODRecordRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing all currently configured policies
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODRecordCopyAccountPolicies")
func ODRecordCopyPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODRecordCopyEffectivePolicies
    @abstract   This will copy the effective policies for the record (merging any node-level policies).
    @discussion This will copy the effective policies for the record (merging any node-level policies).
    @param      record an ODRecordRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing all currently configured policies (merging any node-level policies)
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODRecordAuthenticationAllowed and similar functions")
func ODRecordCopyEffectivePolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODRecordCopySupportedPolicies
    @abstract   This will return a dictionary of supported policies.
    @discussion This will return a dictionary of supported policies, if appropriate, the value will be the maximum value allowed
                for the policy in question.  For example, if password history is available, it will state how much history is
                supported.
    @param      record an ODRecordRef to use
    @param      error an optional CFErrorRef reference for error details
    @result     a CFDictionaryRef containing all currently supported policies
*/
@available(OSX, introduced=10.9, deprecated=10.10)
func ODRecordCopySupportedPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFDictionary>!

/*!
    @function   ODRecordSetPolicies
    @abstract   This will set the policy for the record.
    @discussion This will set the policy for the record.  Policies are evaluated in combination with node-level policies.
    @param      record an ODRecordRef to use
    @param      policies a CFDictionary of policies to be set
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy set succeeded, otherwise error is set. 
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODRecordSetAccountPolicies")
func ODRecordSetPolicies(record: ODRecord!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordSetPolicy
    @abstract   This will set a specific policy setting for the record.
    @discussion This will set a specific policy setting for the record.
    @param      record an ODRecordRef to use
    @param      policy a valid ODPolicyType
    @param      value a CFTypeRef to be set (should be of appropriate type for the policy)
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy set succeeded, otherwise error is set.
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODRecordAddAccountPolicy")
func ODRecordSetPolicy(record: ODRecord!, _ policy: ODPolicyType!, _ value: AnyObject!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordRemovePolicy
    @abstract   This will remove a specific policy setting from the record.
    @discussion This will remove a specific policy setting from the record.
    @param      record an ODRecordRef to use
    @param      policy a valid ODPolicyType
    @param      error an optional CFErrorRef reference for error details
    @result     a bool which signifies if the policy removal succeeded, otherwise error is set.
*/
@available(OSX, introduced=10.9, deprecated=10.10, message="use ODRecordRemoveAccountPolicy")
func ODRecordRemovePolicy(record: ODRecord!, _ policy: ODPolicyType!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordAddAccountPolicy
    @abstract   This will add an account policy to the record for the specified category.
    @discussion This will add an account policy to the record for the specified category.
                The node-level and record-level policies will be combined and
				evaluated as appropriate, ensuring the strongest policy is enforced.
    @param      record an ODRecordRef to use.
    @param      policy a dictionary containing the specific policy to be added.
                The dictionary may contain the following keys:
                    kODPolicyKeyIdentifier a required key identifying the policy.
                    kODPolicyKeyParameters an optional key containing a dictionary of
                        parameters that can be used for informational purposes or in
                        the policy format string.
                    kODPolicyKeyContent a required key specifying the policy,
                        from which a predicate will be created for evaluating
                        the policy.
    @param      category a valid ODPolicyCategoryType to which the policy will be added.
    @param      error is an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy addition succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODRecordAddAccountPolicy(record: ODRecord!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordRemoveAccountPolicy
    @abstract   This will remove an account policy from the record for the specified category.
    @discussion This will remove an account policy from the record for the specified category.
    @param      record an ODRecordRef to use.
    @param      policy a dictionary containing the specific policy to be
                removed, with the same format as described in ODRecordAddAccountPolicy.
    @param      category a valid ODPolicyCategoryType from which the policy will be removed.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy removal succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODRecordRemoveAccountPolicy(record: ODRecord!, _ policy: CFDictionary!, _ category: String!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordSetAccountPolicies
    @abstract   This will set the policies for the record.
    @discussion This will set the policies for the record, replacing any
                existing policies.  All of the policies in the set will be
                applied to the record when policies are evaluated.
    @param      record an ODRecordRef to use.
    @param      policies a dictionary containing all of the policies to be set
                for the node.  The dictionary may contain the following keys:
                    kODPolicyCategoryAuthentication an optional key with a value
                        of an array of policy dictionaries that specify when
                        authentications should be allowed.
                    kODPolicyCategoryPasswordContent an optional key with a
                        value of an array of policy dictionaries the specify the
                        required content of passwords. 
                    kODPolicyCategoryPasswordChange an optional key with a value
                    of an array of policy dictionaries that specify when
                    passwords are required to be changed.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the policy set succeeded, otherwise error is set.
*/
@available(OSX 10.10, *)
func ODRecordSetAccountPolicies(record: ODRecord!, _ policies: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordCopyAccountPolicies
    @abstract   This will copy any policies configured for the record.
    @discussion This will copy any policies configured for the record.  Does not
                copy any policies set for the node.
    @param      record an ODRecordRef to use.
    @param      error an optional CFErrorRef reference for error details.
    @result     a CFDictionaryRef containing all currently set policies.  The
                format of the dictionary is the same as described in
                ODRecordSetAccountPolicies(). 
*/
@available(OSX 10.10, *)
func ODRecordCopyAccountPolicies(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> CFDictionary!

/*!
    @function   ODRecordAuthenticationAllowed
    @abstract   Determines if policies allow the account to authenticate.
    @discussion Determines if policies allow the account to authenticate.
                Authentication and password change policies are evaluated.
                Record-level and node-level policies are evaluated in
                combination, with record-level taking precedence over node-level
                policies.  The failure of any single policy will deny the
                authentication.
 
                This check is only definitive at the time it was requested. The
                policy or the environment could change before the authentication
                is actually requested.  Errors from the authentication request
                should be consulted.

                It is not necessary to call this function when callingg
                ODRecordVerifyPassword or ODRecordVerifyPasswordExtended
                since those functions perform same policy evaluation.

    @param      record an ODRecordRef to use.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the authentication is allowed, otherwise error is set.
 */
@available(OSX 10.10, *)
func ODRecordAuthenticationAllowed(record: ODRecord!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordPasswordChangeAllowed
    @abstract   Determines if policies allow the password change.
    @discussion Determines if policies allow the password change.  Password
                content policies are evaluated. Record-level and node-level
                policies are evaluated in combination, with record-level taking
                precedence over node-level policies.  The failure of any single
                policy will deny the password change.
 
                This check is only definitive at the time it was requested. The
                policy or the environment could change before the password change
                is actually requested.  Errors from the password change request
                should be consulted.

    @param      record an ODRecordRef to use.
    @param      newPassword contains the password to be evaluated.
    @param      error an optional CFErrorRef reference for error details.
    @result     a bool which signifies if the password change is allowed, otherwise error is set.
 */
@available(OSX 10.10, *)
func ODRecordPasswordChangeAllowed(record: ODRecord!, _ newPassword: CFString!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool

/*!
    @function   ODRecordWillPasswordExpire
    @abstract   Determines if the password will expire within the specified time.
    @discussion Determines if the password will expire (i.e. need to be changed)
                between now and the specified number of seconds in the future. 
                Record-level and node-level policies are evaluated
                together, with record-level taking precedence over node-level
                policies.
    @param      record an ODRecordRef to use.
    @param      willExpireIn the number of seconds from the current time to be
                used as the upper-bound for the password expiration period.
    @result     a bool which signifies if the password will expire within the
                specified time.
 */
@available(OSX 10.10, *)
func ODRecordWillPasswordExpire(record: ODRecord!, _ willExpireIn: UInt64) -> Bool

/*!
    @function   ODRecordWillAuthenticationsExpire
    @abstract   Determines if authentications will expire within the specified time.
    @discussion Determines if authentications will expire (i.e. session and/or
                account expires) between now and the specified number of seconds
                in the future.  Record-level and node-level policies are evaluated
                together, with record-level taking precedence over node-level
                policies. 
    @param      record an ODRecordRef to use.
    @param      willExpireIn the number of seconds from the current time to be
                used as the upper-bound for the authentication expiration period.
    @result     a bool which signifies if authentications will expire within the
                specified time.
 */
@available(OSX 10.10, *)
func ODRecordWillAuthenticationsExpire(record: ODRecord!, _ willExpireIn: UInt64) -> Bool

/*!
    @function   ODRecordSecondsUntilPasswordExpires
    @abstract   Determines how many seconds until the password expires.
    @discussion Determines how many seconds until the password expires (i.e.
                needs changing).  Password change policies are evaluated.
                Record-level and node-level policies are evaluated in
                combination, with record-level taking precedence over node-level
                policies. 
    @param      record an ODRecordRef to use.
    @result     the number of seconds until the password expires.  If multiple
                policies will cause the password to expire, the soonest
                expiration time is returned.  If already expired,
                kODExpirationTimeExpired is returned.  If there are no password
                change policies, kODExpirationTimeNeverExpires is returned. 
 */
@available(OSX 10.10, *)
func ODRecordSecondsUntilPasswordExpires(record: ODRecord!) -> Int64

/*!
    @function   ODRecordSecondsUntilAuthenticationsExpire
    @abstract   Determines how many seconds until authentications expire.
    @discussion Determines how many seconds until authentications expire (i.e.
                session and/or account expires). Record-level and node-level 
                policies are evaluated together, with record-level taking 
                precedence over node-level policies
    @param      record an ODRecordRef to use.
    @result     the number of seconds until authentications expire.  If multiple
                policies will cause authentications to expire, the soonest
                expiration time is returned. If already expired,
                kODExpirationTimeExpired is returned.  If there are no
                authentication policies controlling expiration,
                kODExpirationTimeNeverExpires is returned.  
 */
@available(OSX 10.10, *)
func ODRecordSecondsUntilAuthenticationsExpire(record: ODRecord!) -> Int64

/*!
    @const      kODSessionDefault
    @abstract   is the default type of ODSessionRef used if there is no need to create a specific reference
    @discussion is the default type of ODSessionRef used if there is no need to create a specific reference
*/
@available(OSX 10.6, *)
var kODSessionDefault: Unmanaged<ODSession>!

/*!
    @function	ODSessionGetTypeID
    @abstract   Standard GetTypeID function support for CF-based objects
    @discussion Returns the typeID for ODSession objects
    @result     a valid CFTypeID for the ODSession object
*/
@available(OSX 10.6, *)
func ODSessionGetTypeID() -> CFTypeID

/*!
    @function   ODSessionCreate
    @abstract   Creates an ODSession object to be passed to ODNode functions
    @discussion Creates an ODSession object to be passed to ODNode functions.
    @param      allocator a memory allocator to use for this object
    @param      options a CFDictionary of options associated with this ODSession.  This is typically NULL
                unless caller needs to proxy to another host.  
 
                If proxy is required then a dictionary with keys should be:
                            Key                             Value
                    kODSessionProxyAddress        CFString(hostname or IP)
                    kODSessionProxyPort           CFNumber(IP port, should not be set as it will default)
                    kODSessionProxyUsername       CFString(username)
                    kODSessionProxyPassword       CFString(password)
    @param      error an optional CFErrorRef reference for error details
    @result     a valid ODSessionRef object or NULL if it cannot be created. Pass reference to CFErrorRef to
                get error details
*/
@available(OSX 10.6, *)
func ODSessionCreate(allocator: CFAllocator!, _ options: CFDictionary!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<ODSession>!

/*!
    @function   ODSessionCopyNodeNames
    @abstract   Returns the node names that are registered on this ODSession
    @discussion Returns the node names that are registered on this ODSession
    @param      allocator a memory allocator to use for this object
    @param      session an ODSessionRef, either kODSessionDefault or a valid ODSessionRef can be passed
    @param      error an optional CFErrorRef reference for error details
    @result     a valid CFArrayRef of node names that can be opened on the session reference
*/
@available(OSX 10.6, *)
func ODSessionCopyNodeNames(allocator: CFAllocator!, _ session: ODSession!, _ error: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Unmanaged<CFArray>!

/*!
    @const      kODSessionProxyAddress
    @abstract   the address to connect to via proxy, used when making the options dictionary
    @discussion the address to connect to via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let kODSessionProxyAddress: CFString!

/*!
    @const      kODSessionProxyPort
    @abstract   the port to connect to via proxy, used when making the options dictionary
    @discussion the port to connect to via proxy, used when making the options dictionary.  This parameter
                is optional and should not be passed normally.
*/
@available(OSX 10.6, *)
let kODSessionProxyPort: CFString!

/*!
    @const      kODSessionProxyUsername
    @abstract   the username to connect with via proxy, used when making the options dictionary
    @discussion the username to connect with via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let kODSessionProxyUsername: CFString!

/*!
    @const      kODSessionProxyPassword
    @abstract   the password to connect with via proxy, used when making the options dictionary
    @discussion the password to connect with via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let kODSessionProxyPassword: CFString!

/*!
 @const      kODModuleConfigOptionQueryTimeout
 @abstract   number of seconds before a query times out
 @discussion number of seconds before a query times out
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionQueryTimeout: CFString!

/*!
 @const      kODModuleConfigOptionConnectionSetupTimeout
 @abstract   number of seconds before a connection attempt times out
 @discussion number of seconds before a connection attempt times out
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionConnectionSetupTimeout: CFString!

/*!
 @const      kODModuleConfigOptionConnectionIdleDisconnect
 @abstract   number of seconds before a connection is idle disconnected
 @discussion number of seconds before a connection is idle disconnected
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionConnectionIdleDisconnect: CFString!

/*!
 @const      kODModuleConfigOptionPacketSigning
 @abstract   enable or disable packet signing
 @discussion number of seconds before a query times out
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionPacketSigning: CFString!

/*!
 @const      kODModuleConfigOptionPacketEncryption
 @abstract   enable or disable packet encryption
 @discussion enable or disable packet encryption
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionPacketEncryption: CFString!

/*!
 @const      kODModuleConfigOptionManInTheMiddle
 @abstract   enable or disable man-in-middle countermeasures
 @discussion enable or disable man-in-middle countermeasures
 */
@available(OSX 10.9, *)
let kODModuleConfigOptionManInTheMiddle: CFString!
var kODNodeTypeAuthentication: Int { get }
var kODNodeTypeContacts: Int { get }
var kODNodeTypeNetwork: Int { get }
var kODNodeTypeLocalNodes: Int { get }
var kODNodeTypeConfigure: Int { get }
typealias ODNodeType = UInt32

/*!
    @const      kODNodeOptionsQuerySkippedSubnode
    @abstract   Used with nodes that support options.
    @discussion Passed in an options dictionary where the value is a boolean (kCFBooleanTrue/kCFBooleanFalse).
                If a node supports the option it will notify the client when a subnode is skipped during queries.
                Supported options are listed in node details under kODAttributeTypeNodeOptions.  Node may fail to
                open if unsupported options are used.
 */
@available(OSX 10.8, *)
let kODNodeOptionsQuerySkippedSubnode: CFString!
var kODMatchAny: Int { get }
var kODMatchEqualTo: Int { get }
var kODMatchBeginsWith: Int { get }
var kODMatchContains: Int { get }
var kODMatchEndsWith: Int { get }
@available(OSX, introduced=10.6, deprecated=10.10, message="case matching is defined by attribute schema")
var kODMatchInsensitiveEqualTo: Int { get }
@available(OSX, introduced=10.6, deprecated=10.10, message="case matching is defined by attribute schema")
var kODMatchInsensitiveBeginsWith: Int { get }
@available(OSX, introduced=10.6, deprecated=10.10, message="case matching is defined by attribute schema")
var kODMatchInsensitiveContains: Int { get }
@available(OSX, introduced=10.6, deprecated=10.10, message="case matching is defined by attribute schema")
var kODMatchInsensitiveEndsWith: Int { get }
var kODMatchGreaterThan: Int { get }
var kODMatchLessThan: Int { get }
typealias ODMatchType = UInt32
typealias ODRecordType = NSString
typealias ODAttributeType = NSString
typealias ODAuthenticationType = NSString
typealias ODPolicyType = CFStringRef
typealias _ODRecordType = ODRecordType
typealias _ODAttributeType = ODAttributeType
typealias _ODAuthenticationType = ODAuthenticationType

/*!
    @const		kODRecordTypeAttributeTypes
    @abstract   Identifies records that represent each possible attribute type.
    @discussion Identifies records that represent each possible attribute type.
*/
let kODRecordTypeAttributeTypes: String

/*!
    @const		kODRecordTypeAFPServer
    @abstract   Record type of AFP server records.
    @discussion Record type of AFP server records.
*/
let kODRecordTypeAFPServer: String

/*!
    @const		kODRecordTypeAliases
    @abstract   Used to represent alias records.
    @discussion Used to represent alias records.
*/
let kODRecordTypeAliases: String

/*!
    @const		kODRecordTypeAugments
    @abstract   Used to store augmented record data.
    @discussion Used to store augmented record data.
*/
let kODRecordTypeAugments: String

/*!
    @const		kODRecordTypeAutomount
    @abstract   Used to store automount record data.
    @discussion Used to store automount record data.
*/
let kODRecordTypeAutomount: String

/*!
    @const		kODRecordTypeAutomountMap
    @abstract   Used to store automountMap record data.
    @discussion Used to store automountMap record data.
*/
let kODRecordTypeAutomountMap: String

/*!
    @const		kODRecordTypeAutoServerSetup
    @abstract   Used to discover automated server setup information.
    @discussion Used to discover automated server setup information.
*/
let kODRecordTypeAutoServerSetup: String

/*!
    @const		kODRecordTypeBootp
    @abstract   Record in the local node for storing bootp info.
    @discussion Record in the local node for storing bootp info.
*/
let kODRecordTypeBootp: String

/*!
    @const		kODRecordTypeCertificateAuthorities
    @abstract   Record type that contains certificate authority information.
    @discussion Record type that contains certificate authority information.
*/
let kODRecordTypeCertificateAuthorities: String

/*!
    @const		kODRecordTypeComputerLists
    @abstract   Identifies computer list records.
    @discussion Identifies computer list records.
*/
let kODRecordTypeComputerLists: String

/*!
    @const		kODRecordTypeComputerGroups
    @abstract   Identifies computer group records.
    @discussion Identifies computer group records.
*/
let kODRecordTypeComputerGroups: String

/*!
    @const		kODRecordTypeComputers
    @abstract   Identifies computer records.
    @discussion Identifies computer records.
*/
let kODRecordTypeComputers: String

/*!
    @const		kODRecordTypeConfiguration
    @abstract   Identifies configuration records.
    @discussion Identifies configuration records.
*/
let kODRecordTypeConfiguration: String

/*!
    @const		kODRecordTypeEthernets
    @abstract   Record in the node for storing ethernets.
    @discussion Record in the node for storing ethernets.
*/
let kODRecordTypeEthernets: String

/*!
    @const		kODRecordTypeFileMakerServers
	@abstract   FileMaker servers record type. 
	@discussion FileMaker servers record type that describes available FileMaker servers, 
				used for service discovery.
*/
let kODRecordTypeFileMakerServers: String

/*!
    @const		kODRecordTypeFTPServer
    @abstract   Identifies ftp server records.
    @discussion Identifies ftp server records.
*/
let kODRecordTypeFTPServer: String

/*!
    @const		kODRecordTypeGroups
    @abstract   Identifies group records.
    @discussion Identifies group records.
*/
let kODRecordTypeGroups: String

/*!
    @const		kODRecordTypeHostServices
    @abstract   Record in the local node for storing host services.
    @discussion Record in the local node for storing host services.
*/
let kODRecordTypeHostServices: String

/*!
    @const		kODRecordTypeHosts
    @abstract   Identifies host records.
    @discussion Identifies host records.
*/
let kODRecordTypeHosts: String

/*!
    @const		kODRecordTypeLDAPServer
    @abstract   Identifies LDAP server records.
    @discussion Identifies LDAP server records.
*/
let kODRecordTypeLDAPServer: String

/*!
    @const		kODRecordTypeLocations
    @abstract   Location record type.
    @discussion Location record type.
*/
let kODRecordTypeLocations: String

/*!
    @const		kODRecordTypeMounts
    @abstract   Identifies mount records.
    @discussion Identifies mount records.
*/
let kODRecordTypeMounts: String

/*!
    @const		kODRecordTypeNFS
    @abstract   Identifies NFS records.
    @discussion Identifies NFS records.
*/
let kODRecordTypeNFS: String

/*!
    @const		kODRecordTypeNetDomains
    @abstract   Record in the local node for storing net domains.
    @discussion Record in the local node for storing net domains.
*/
let kODRecordTypeNetDomains: String

/*!
    @const		kODRecordTypeNetGroups
    @abstract   Record in the local node for storing net groups.
    @discussion Record in the local node for storing net groups.
*/
let kODRecordTypeNetGroups: String

/*!
    @const		kODRecordTypeNetworks
    @abstract   Identifies network records.
    @discussion Identifies network records.
*/
let kODRecordTypeNetworks: String

/*!
    @const		kODRecordTypePeople
    @abstract   Record type that contains "People" records used for contact information.
    @discussion Record type that contains "People" records used for contact information.
*/
let kODRecordTypePeople: String

/*!
    @const		kODRecordTypePresetComputers
    @abstract   The computer record type used for presets in record creation.
    @discussion The computer record type used for presets in record creation.
*/
let kODRecordTypePresetComputers: String

/*!
    @const		kODRecordTypePresetComputerGroups
    @abstract   The computer group record type used for presets in record creation.
    @discussion The computer group record type used for presets in record creation.
*/
let kODRecordTypePresetComputerGroups: String

/*!
    @const		kODRecordTypePresetComputerLists
    @abstract   The computer list record type used for presets in record creation.
    @discussion The computer list record type used for presets in record creation.
*/
let kODRecordTypePresetComputerLists: String

/*!
    @const		kODRecordTypePresetGroups
    @abstract   The group record type used for presets in record creation.
    @discussion The group record type used for presets in record creation.
*/
let kODRecordTypePresetGroups: String

/*!
    @const		kODRecordTypePresetUsers
    @abstract   The user record type used for presets in record creation.
    @discussion The user record type used for presets in record creation.
*/
let kODRecordTypePresetUsers: String

/*!
    @const		kODRecordTypePrintService
    @abstract   Identifies print service records.
    @discussion Identifies print service records.
*/
let kODRecordTypePrintService: String

/*!
    @const		kODRecordTypePrintServiceUser
    @abstract   Record in the local node for storing quota usage for a user.
    @discussion Record in the local node for storing quota usage for a user.
*/
let kODRecordTypePrintServiceUser: String

/*!
    @const		kODRecordTypePrinters
    @abstract   Identifies printer records.
    @discussion Identifies printer records.
*/
let kODRecordTypePrinters: String

/*!
    @const		kODRecordTypeProtocols
    @abstract   Identifies protocol records.
    @discussion Identifies protocol records.
*/
let kODRecordTypeProtocols: String

/*!
    @const		kODRecordTypeQTSServer
    @abstract   Identifies quicktime streaming server records.
    @discussion Identifies quicktime streaming server records.
*/
let kODRecordTypeQTSServer: String

/*!
    @const		kODRecordTypeQueryInformation
    @abstract   Special query information record
    @discussion Specifically to return query information inline such as skipped nodes
 */
let kODRecordTypeQueryInformation: String

/*!
    @const		kODRecordTypeRecordTypes
    @abstract   Identifies records that represent each possible record type.
    @discussion Identifies records that represent each possible record type.
*/
let kODRecordTypeRecordTypes: String

/*!
    @const		kODRecordTypeResources
    @abstract   Identifies resources used in group services.
    @discussion Identifies resources used in group services.
*/
let kODRecordTypeResources: String

/*!
    @const		kODRecordTypeRPC
    @abstract   Identifies remote procedure call records.
    @discussion Identifies remote procedure call records.
*/
let kODRecordTypeRPC: String

/*!
    @const		kODRecordTypeSMBServer
    @abstract   Identifies SMB server records.
    @discussion Identifies SMB server records.
*/
let kODRecordTypeSMBServer: String

/*!
    @const		kODRecordTypeServer
    @abstract   Identifies generic server records.
    @discussion Identifies generic server records.
*/
let kODRecordTypeServer: String

/*!
    @const		kODRecordTypeServices
    @abstract   Identifies directory based service records.
    @discussion Identifies directory based service records.
*/
let kODRecordTypeServices: String

/*!
    @const		kODRecordTypeSharePoints
    @abstract   Share point record type.
    @discussion Share point record type.
*/
let kODRecordTypeSharePoints: String

/*!
    @const		kODRecordTypeUsers
    @abstract   Identifies user records.
    @discussion Identifies user records.
*/
let kODRecordTypeUsers: String

/*!
    @const		kODRecordTypeWebServer
    @abstract   Identifies web server records.
    @discussion Identifies web server records.
*/
let kODRecordTypeWebServer: String

/*!
    @const		kODAttributeTypeAllAttributes
    @abstract   Used in requesting all attribute types in a search.
    @discussion Used in requesting all attribute types in a search.
*/
let kODAttributeTypeAllAttributes: String

/*!
    @const		kODAttributeTypeStandardOnly
    @abstract   Used in requesting all standard attribute types in a query.
    @discussion Used in requesting all standard attribute types in a query.
*/
let kODAttributeTypeStandardOnly: String

/*!
    @const		kODAttributeTypeNativeOnly
    @abstract   Used in requesting all native attribute types in a search.
    @discussion Used in requesting all native attribute types in a search.
*/
let kODAttributeTypeNativeOnly: String

/*!
    @const		kODAttributeTypeMetaAmbiguousName
    @abstract   Used to disambiguate a provided name.
    @discussion Searches a configured list of attributes; by default: RecordName, FullName, EMailAddress.
*/
let kODAttributeTypeMetaAmbiguousName: String

/*!
    @const		kODAttributeTypeMetaAugmentedAttributes
    @abstract   Attributes that have been augmented.
    @discussion Attributes that have been augmented.
*/
let kODAttributeTypeMetaAugmentedAttributes: String

/*!
    @const		kODAttributeTypeMetaRecordName
    @abstract   Native record name.
    @discussion Native record name, e.g. LDAP DN
*/
let kODAttributeTypeMetaRecordName: String

/*!
    @const		kODAttributeTypeAdminLimits
    @abstract   XML plist indicating what an admin user can edit.
    @discussion XML plist indicating what an admin user can edit. Found in kODRecordTypeUsers records.
*/
let kODAttributeTypeAdminLimits: String

/*!
	@const		kODAttributeTypeAltSecurityIdentities
	@abstract	Used to store alternate identities for the record
	@discussion Used to store alternate identities for the record. Values will have standardized form as
				specified by Microsoft LDAP schema (1.2.840.113556.1.4.867).

 				Kerberos:user\@REALM
 */
@available(OSX 10.6, *)
let kODAttributeTypeAltSecurityIdentities: String

/*!
    @const		kODAttributeTypeAuthenticationHint
    @abstract   Used to identify the authentication hint phrase.
    @discussion Used to identify the authentication hint phrase.
*/
let kODAttributeTypeAuthenticationHint: String

/*!
    @const		kODAttributeTypeAllTypes
    @abstract   Used to indicated recommended attribute types for a record type in the Config node.
    @discussion Used to indicated recommended attribute types for a record type in the Config node.
*/
let kODAttributeTypeAllTypes: String

/*!
    @const		kODAttributeTypeAuthorityRevocationList
    @abstract   Attribute containing the binary of the authority revocation list
	@discussion Attribute containing the binary of the authority revocation list.
				A certificate revocation list that defines certificate authority certificates
				which are no longer trusted.  No user certificates are included in this list.
				Usually found in kODRecordTypeCertificateAuthorities records.
*/
let kODAttributeTypeAuthorityRevocationList: String

/*!
    @const		kODAttributeTypeBirthday
    @abstract   Single-valued attribute that defines the user's birthday.
	@discussion Single-valued attribute that defines the user's birthday.
				Format is x.208 standard YYYYMMDDHHMMSSZ which we will require as GMT time.
*/
let kODAttributeTypeBirthday: String

/*!
    @const		kODAttributeTypeCACertificate
	@abstract   Attribute containing the binary of the certificate of a certificate authority.
	@discussion Attribute containing the binary of the certificate of a certificate authority.
				Its corresponding private key is used to sign certificates.
				Usually found in kODRecordTypeCertificateAuthority records.
*/
let kODAttributeTypeCACertificate: String

/*!
    @const		kODAttributeTypeCapacity
    @abstract   Attribute type for the capacity of a resource. 
	@discussion Attribute type for the capacity of a resource. 
				found in resource records (kODRecordTypeResources). 
					Example: 50
*/
let kODAttributeTypeCapacity: String

/*!
    @const		kODAttributeTypeCertificateRevocationList
    @abstract   Attribute containing the binary of the certificate revocation list.
	@discussion Attribute containing the binary of the certificate revocation list.
				This is a list of certificates which are no longer trusted.
				Usually found in kODRecordTypeCertificateAuthority records.
*/
let kODAttributeTypeCertificateRevocationList: String

/*!
    @const		kODAttributeTypeComment
    @abstract   Attribute used for unformatted comment.
    @discussion Attribute used for unformatted comment.
*/
let kODAttributeTypeComment: String

/*!
    @const		kODAttributeTypeContactGUID
	@abstract   Attribute type for the contact GUID of a group. 
	@discussion Attribute type for the contact GUID of a group. 
				Usually found in group records (kODRecordTypeGroups)
*/
let kODAttributeTypeContactGUID: String

/*!
    @const		kODAttributeTypeContactPerson
	@abstract   Attribute type for the contact person of the machine. 
	@discussion Attribute type for the contact person of the machine. 
				Found in host or machine records.
*/
let kODAttributeTypeContactPerson: String

/*!
    @const		kODAttributeTypeCreationTimestamp
	@abstract   Attribute showing date/time of record creation.
	@discussion Attribute showing date/time of record creation.
				Format is x.208 standard YYYYMMDDHHMMSSZ which should be GMT time.
*/
let kODAttributeTypeCreationTimestamp: String

/*!
    @const		kODAttributeTypeCrossCertificatePair
	@abstract   Attribute containing the binary of a pair of certificates which 
				verify each other.
	@discussion Attribute containing the binary of a pair of certificates which 
				verify each other.  Both certificates have the same level of authority.
				Usually found in kODRecordTypeCertificateAuthority records.
*/
let kODAttributeTypeCrossCertificatePair: String

/*!
    @const		kODAttributeTypeDataStamp
    @abstract   Attribute for checksum/meta data
    @discussion Attribute for checksum/meta data
*/
let kODAttributeTypeDataStamp: String

/*!
    @const		kODAttributeTypeFullName
    @abstract   Full name of a record
    @discussion Full name of a record (e.g., "John Doe", "John Doe's Computer")
*/
let kODAttributeTypeFullName: String

/*!
    @const		kODAttributeTypeDNSDomain
    @abstract   DNS Resolver domain attribute.
    @discussion DNS Resolver domain attribute.
*/
let kODAttributeTypeDNSDomain: String

/*!
    @const		kODAttributeTypeDNSNameServer
    @abstract   DNS Resolver nameserver attribute.
    @discussion DNS Resolver nameserver attribute.
*/
let kODAttributeTypeDNSNameServer: String

/*!
    @const		kODAttributeTypeENetAddress
	@abstract   Attribute for hardware Ethernet address (MAC address).
	@discussion Attribute for hardware Ethernet address (MAC address).
				Found in computer records (kODRecordTypeComputers).
*/
let kODAttributeTypeENetAddress: String

/*!
    @const		kODAttributeTypeExpire
    @abstract   Used for expiration date or time depending on association.
    @discussion Used for expiration date or time depending on association.
*/
let kODAttributeTypeExpire: String

/*!
    @const		kODAttributeTypeFirstName
    @abstract   Used for first name of user or person record.
    @discussion Used for first name of user or person record.
*/
let kODAttributeTypeFirstName: String

/*!
    @const		kODAttributeTypeGUID
	@abstract   Used for 36 character (128 bit) unique ID.
	@discussion Used for 36 character (128 bit) unique ID. An example value is
				"A579E95E-CDFE-4EBC-B7E7-F2158562170F". The standard format contains
				32 uppercase hex characters and four hyphen characters.
*/
let kODAttributeTypeGUID: String

/*!
    @const      kODAttributeTypeHardwareUUID
    @abstract   Used to store hardware UUID in string form
    @discussion Used to store hardware UUID in string form for a record.  Typically found in
                kODRecordTypeComputers.
*/
@available(OSX 10.6, *)
let kODAttributeTypeHardwareUUID: String

/*!
    @const		kODAttributeTypeHomeDirectoryQuota
	@abstract   Represents the allowed usage for a user's home directory in bytes.
	@discussion Represents the allowed usage for a user's home directory in bytes.
				Found in user records (kODRecordTypeUsers).
*/
let kODAttributeTypeHomeDirectoryQuota: String

/*!
    @const		kODAttributeTypeHomeDirectorySoftQuota
	@abstract   Used to define home directory size limit in bytes when user is notified
				that the hard limit is approaching.
	@discussion Used to define home directory size limit in bytes when user is notified
				that the hard limit is approaching.
*/
let kODAttributeTypeHomeDirectorySoftQuota: String

/*!
    @const		kODAttributeTypeHomeLocOwner
	@abstract   Represents the owner of a workgroup's shared home directory.
	@discussion Represents the owner of a workgroup's shared home directory.
				Typically found in kODRecordTypeGroups records.
*/
let kODAttributeTypeHomeLocOwner: String

/*!
    @const		kODAttributeTypeInternetAlias
    @abstract   Used to track internet alias.
    @discussion Used to track internet alias.
*/
let kODAttributeTypeInternetAlias: String

/*!
    @const		kODAttributeTypeKDCConfigData
    @abstract   Contents of the kdc.conf file.
    @discussion Contents of the kdc.conf file.
*/
let kODAttributeTypeKDCConfigData: String

/*!
	@const		kODAttributeTypeKerberosServices
	@abstract	This is used to store the principals in host records (i.e., "host", "vnc", etc.)
	@discussion	This is used to store the principals in host records (i.e., "host", "vnc", etc.)
*/
@available(OSX 10.7, *)
let kODAttributeTypeKerberosServices: String

/*!
    @const		kODAttributeTypeLastName
    @abstract   Used for the last name of user or person record.
    @discussion Used for the last name of user or person record.
*/
let kODAttributeTypeLastName: String

/*!
    @const		kODAttributeTypeLDAPSearchBaseSuffix
    @abstract   Search base suffix for a LDAP server.
    @discussion Search base suffix for a LDAP server.
*/
let kODAttributeTypeLDAPSearchBaseSuffix: String

/*!
    @const		kODAttributeTypeLocation
	@abstract   Represents the location a service is available from (usually domain name)
	@discussion Represents the location a service is available from (usually domain name).
				Typically found in service record types including kODRecordTypeAFPServer,
				kODRecordTypeLDAPServer, and kODRecordTypeWebServer.
*/
let kODAttributeTypeLocation: String

/*!
    @const		kODAttributeTypeMapGUID
    @abstract   Represents the GUID for a record's map
    @discussion Represents the GUID for a record's map.
*/
let kODAttributeTypeMapGUID: String

/*!
    @const		kODAttributeTypeMCXFlags
    @abstract   Used by ManagedClient
    @discussion Used by ManagedClient.
*/
let kODAttributeTypeMCXFlags: String

/*!
    @const		kODAttributeTypeMCXSettings
    @abstract   Used by ManagedClient
    @discussion Used by ManagedClient.
*/
let kODAttributeTypeMCXSettings: String

/*!
    @const		kODAttributeTypeMailAttribute
    @abstract   Holds the mail account config data
    @discussion Holds the mail account config data.
*/
let kODAttributeTypeMailAttribute: String

/*!
    @const		kODAttributeTypeMetaAutomountMap
	@abstract   Used to query for kODRecordTypeAutomount entries
	@discussion Used to query for kODRecordTypeAutomount entries associated with a specific 
				kODRecordTypeAutomountMap.
*/
let kODAttributeTypeMetaAutomountMap: String

/*!
    @const		kODAttributeTypeMiddleName
    @abstract   Used for the middle name of user or person record.
    @discussion Used for the middle name of user or person record.
*/
let kODAttributeTypeMiddleName: String

/*!
    @const		kODAttributeTypeModificationTimestamp
	@abstract   Attribute showing date/time of record modification.
	@discussion Attribute showing date/time of record modification.
				Format is x.208 standard YYYYMMDDHHMMSSZ which is required as GMT time.
*/
let kODAttributeTypeModificationTimestamp: String

/*!
    @const		kODAttributeTypeNFSHomeDirectory
    @abstract   Defines a user's home directory mount point on the local machine.
    @discussion Defines a user's home directory mount point on the local machine.
*/
let kODAttributeTypeNFSHomeDirectory: String

/*!
    @const		kODAttributeTypeNote
    @abstract   Note attribute.
    @discussion Note attribute.
*/
let kODAttributeTypeNote: String

/*!
    @const		kODAttributeTypeOperatingSystem
    @abstract   Returns the operating system type where the daemon is running
    @discussion Returns the operating system type where the daemon is running,
				e.g., Mac OS X or Mac OS X Server
*/
@available(OSX 10.6, *)
let kODAttributeTypeOperatingSystem: String

/*!
	@const		kODAttributeTypeOperatingSystemVersion
	@abstract   Returns the operating system version where the daemon is running
	@discussion Returns the operating system version where the daemon is running,
				e.g., 10.6
 */
@available(OSX 10.6, *)
let kODAttributeTypeOperatingSystemVersion: String

/*!
    @const		kODAttributeTypeOwner
	@abstract   Attribute type for the owner of a record. 
	@discussion Attribute type for the owner of a record. 
				Typically the value is a LDAP distinguished name.
*/
let kODAttributeTypeOwner: String

/*!
    @const		kODAttributeTypeOwnerGUID
	@abstract   Attribute type for the owner GUID of a group. 
	@discussion Attribute type for the owner GUID of a group. 
				Found in group records (kODRecordTypeGroups). 
*/
let kODAttributeTypeOwnerGUID: String

/*!
    @const		kODAttributeTypePassword
    @abstract   Holds the password or credential value.
    @discussion Holds the password or credential value.
*/
let kODAttributeTypePassword: String

/*!
    @const		kODAttributeTypePasswordPlus
    @abstract   Holds marker data to indicate possible authentication redirection.
    @discussion Holds marker data to indicate possible authentication redirection.
*/
let kODAttributeTypePasswordPlus: String

/*!
    @const		kODAttributeTypePasswordPolicyOptions
	@abstract   Collection of password policy options in single attribute.
	@discussion Collection of password policy options in single attribute.
				Used in user presets record.
*/
let kODAttributeTypePasswordPolicyOptions: String

/*!
    @const		kODAttributeTypePasswordServerList
    @abstract   Represents the attribute for storing the password server's replication information.
    @discussion Represents the attribute for storing the password server's replication information.
*/
let kODAttributeTypePasswordServerList: String

/*!
    @const		kODAttributeTypePasswordServerLocation
	@abstract   Specifies the IP address or domain name of the Password Server associated
				with a given directory node.
	@discussion Specifies the IP address or domain name of the Password Server associated
				with a given directory node. Found in a config record named PasswordServer.
*/
let kODAttributeTypePasswordServerLocation: String

/*!
    @const		kODAttributeTypePicture
	@abstract   Represents the path of the picture for each user displayed in the login window.
	@discussion Represents the path of the picture for each user displayed in the login window.
				Found in user records (kODRecordTypeUsers).
*/
let kODAttributeTypePicture: String

/*!
    @const		kODAttributeTypePort
	@abstract   Represents the port number a service is available on.
	@discussion Represents the port number a service is available on.
				Typically found in service record types including kODRecordTypeAFPServer,
				kODRecordTypeLDAPServer, and kODRecordTypeWebServer.
*/
let kODAttributeTypePort: String

/*!
    @const		kODAttributeTypePresetUserIsAdmin
	@abstract   Flag to indicate whether users created from this preset are administrators
				by default.
	@discussion Flag to indicate whether users created from this preset are administrators
				by default. Found in kODRecordTypePresetUsers records.
*/
let kODAttributeTypePresetUserIsAdmin: String

/*!
    @const		kODAttributeTypePrimaryComputerGUID
	@abstract   An attribute that defines a primary computer of the computer group.  
	@discussion An attribute that defines a primary computer of the computer group.  
				Added to computer group record type (kODRecordTypeComputerGroups)
*/
let kODAttributeTypePrimaryComputerGUID: String

/*!
    @const		kODAttributeTypePrimaryComputerList
    @abstract   The GUID of the computer list with which this computer record is associated.
    @discussion The GUID of the computer list with which this computer record is associated.
*/
let kODAttributeTypePrimaryComputerList: String

/*!
    @const		kODAttributeTypePrimaryGroupID
	@abstract   This is the 32 bit unique ID that represents the primary group 
				a user is part of, or the ID of a group.
	@discussion This is the 32 bit unique ID that represents the primary group 
				a user is part of, or the ID of a group. Format is a signed 32 bit integer
				represented as a string.
*/
let kODAttributeTypePrimaryGroupID: String

/*!
    @const		kODAttributeTypePrinter1284DeviceID
	@abstract   Attribute that defines the IEEE 1284 DeviceID of a printer.
	@discussion Attribute that defines the IEEE 1284 DeviceID of a printer.
				This is used when configuring a printer.
*/
let kODAttributeTypePrinter1284DeviceID: String

/*!
    @const		kODAttributeTypePrinterLPRHost
    @abstract   Standard attribute type for kODRecordTypePrinters.
    @discussion Standard attribute type for kODRecordTypePrinters.
*/
let kODAttributeTypePrinterLPRHost: String

/*!
    @const		kODAttributeTypePrinterLPRQueue
    @abstract   Standard attribute type for kODRecordTypePrinters.
    @discussion Standard attribute type for kODRecordTypePrinters.
*/
let kODAttributeTypePrinterLPRQueue: String

/*!
    @const		kODAttributeTypePrinterMakeAndModel
	@abstract   Attribute for definition of the Printer Make and Model.
	@discussion Attribute for definition of the Printer Make and Model.  An example
				value would be "HP LaserJet 2200".  This would be used to determine the proper PPD
				file to be used when configuring a printer from the Directory.  This attribute
				is based on the IPP Printing Specification RFC and IETF IPP-LDAP Printer Record.
*/
let kODAttributeTypePrinterMakeAndModel: String

/*!
    @const		kODAttributeTypePrinterType
    @abstract   Standard attribute type for kODRecordTypePrinters.
    @discussion Standard attribute type for kODRecordTypePrinters.
*/
let kODAttributeTypePrinterType: String

/*!
    @const		kODAttributeTypePrinterURI
	@abstract   Attribute that defines the URI of a printer "ipp://address" or
				"smb://server/queue".
	@discussion Attribute that defines the URI of a printer "ipp://address" or
				"smb://server/queue".  This is used when configuring a printer. This attribute
				is based on the IPP Printing Specification RFC and IETF IPP-LDAP Printer Record.
*/
let kODAttributeTypePrinterURI: String

/*!
    @const		kODAttributeTypePrinterXRISupported
	@abstract   Attribute that defines additional URIs supported by a printer.
	@discussion attribute that defines additional URIs supported by a printer.
				This is used when configuring a printer. This attribute is based on the IPP 
				Printing Specification RFC and IETF IPP-LDAP Printer Record.
*/
let kODAttributeTypePrinterXRISupported: String

/*!
    @const		kODAttributeTypePrintServiceInfoText
    @abstract   Standard attribute type for kODRecordTypePrinters.
    @discussion Standard attribute type for kODRecordTypePrinters.
*/
let kODAttributeTypePrintServiceInfoText: String

/*!
    @const		kODAttributeTypePrintServiceInfoXML
    @abstract   Standard attribute type for kODRecordTypePrinters.
    @discussion Standard attribute type for kODRecordTypePrinters.
*/
let kODAttributeTypePrintServiceInfoXML: String

/*!
    @const		kODAttributeTypePrintServiceUserData
	@abstract   Attribute for print quota configuration or statistics (XML data).
	@discussion Attribute for print quota configuration or statistics (XML data).
				Found in user records (kODRecordTypeUsers) or print service
				statistics records (kODRecordTypePrintServiceUser).
*/
let kODAttributeTypePrintServiceUserData: String

/*!
    @const		kODAttributeTypeRealUserID
    @abstract   Used by Managed Client.
    @discussion Used by Managed Client
*/
let kODAttributeTypeRealUserID: String

/*!
    @const		kODAttributeTypeRelativeDNPrefix
	@abstract   Used to map the first native LDAP attribute type required in the building of the
				Relative Distinguished Name for LDAP record creation.
	@discussion Used to map the first native LDAP attribute type required in the building of the
				Relative Distinguished Name for LDAP record creation.
*/
let kODAttributeTypeRelativeDNPrefix: String

/*!
    @const		kODAttributeTypeSMBAcctFlags
    @abstract   Account control flag.
    @discussion Account control flag.
*/
let kODAttributeTypeSMBAcctFlags: String

/*!
    @const		kODAttributeTypeSMBGroupRID
    @abstract   Constant for supporting PDC SMB interaction with DirectoryService.
    @discussion Constant for supporting PDC SMB interaction with DirectoryService.
*/
let kODAttributeTypeSMBGroupRID: String

/*!
    @const		kODAttributeTypeSMBHome
    @abstract   UNC address of Windows homedirectory mount point (\\server\\sharepoint).
    @discussion UNC address of Windows homedirectory mount point (\\server\\sharepoint).
*/
let kODAttributeTypeSMBHome: String

/*!
    @const		kODAttributeTypeSMBHomeDrive
    @abstract   Drive letter for homedirectory mount point.
    @discussion Drive letter for homedirectory mount point.
*/
let kODAttributeTypeSMBHomeDrive: String

/*!
    @const		kODAttributeTypeSMBKickoffTime
    @abstract   Attribute in support of SMB interaction.
    @discussion Attribute in support of SMB interaction.
*/
let kODAttributeTypeSMBKickoffTime: String

/*!
    @const		kODAttributeTypeSMBLogoffTime
    @abstract   Attribute in support of SMB interaction.
    @discussion Attribute in support of SMB interaction.
*/
let kODAttributeTypeSMBLogoffTime: String

/*!
    @const		kODAttributeTypeSMBLogonTime
    @abstract   Attribute in support of SMB interaction.
    @discussion Attribute in support of SMB interaction.
*/
let kODAttributeTypeSMBLogonTime: String

/*!
    @const		kODAttributeTypeSMBPrimaryGroupSID
	@abstract   SMB Primary Group Security ID, stored as a string attribute of
				up to 64 bytes.
	@discussion SMB Primary Group Security ID, stored as a string attribute of
				up to 64 bytes. Found in user, group, and computer records
				(kODRecordTypeUsers, kODRecordTypeGroups, kODRecordTypeComputers).
*/
let kODAttributeTypeSMBPrimaryGroupSID: String

/*!
    @const		kODAttributeTypeSMBPWDLastSet
    @abstract   Attribute in support of SMB interaction.
    @discussion Attribute in support of SMB interaction.
*/
let kODAttributeTypeSMBPWDLastSet: String

/*!
    @const		kODAttributeTypeSMBProfilePath
    @abstract   Desktop management info (dock, desktop links, etc).
    @discussion Desktop management info (dock, desktop links, etc).
*/
let kODAttributeTypeSMBProfilePath: String

/*!
    @const		kODAttributeTypeSMBRID
    @abstract   Attribute in support of SMB interaction.
    @discussion Attribute in support of SMB interaction.
*/
let kODAttributeTypeSMBRID: String

/*!
    @const		kODAttributeTypeSMBScriptPath
    @abstract   Login script path.
    @discussion Login script path.
*/
let kODAttributeTypeSMBScriptPath: String

/*!
    @const		kODAttributeTypeSMBSID
	@abstract   SMB Security ID, stored as a string attribute of up to 64 bytes.
	@discussion SMB Security ID, stored as a string attribute of up to 64 bytes.
				Found in user, group, and computer records (kODRecordTypeUsers, 
				kODRecordTypeGroups, kODRecordTypeComputers).
*/
let kODAttributeTypeSMBSID: String

/*!
    @const		kODAttributeTypeSMBUserWorkstations
    @abstract   List of workstations user can login from (machine account names).
    @discussion List of workstations user can login from (machine account names).
*/
let kODAttributeTypeSMBUserWorkstations: String

/*!
    @const		kODAttributeTypeServiceType
	@abstract   Represents the service type for the service.  This is the raw service type of the
				service.
	@discussion Represents the service type for the service.  This is the raw service type of the
				service.  For example a service record type of kODRecordTypeWebServer 
				might have a service type of "http" or "https".
*/
let kODAttributeTypeServiceType: String

/*!
    @const		kODAttributeTypeSetupAdvertising
    @abstract   Used for Setup Assistant automatic population.
    @discussion Used for Setup Assistant automatic population.
*/
let kODAttributeTypeSetupAdvertising: String

/*!
    @const		kODAttributeTypeSetupAutoRegister
    @abstract   Used for Setup Assistant automatic population.
    @discussion Used for Setup Assistant automatic population.
*/
let kODAttributeTypeSetupAutoRegister: String

/*!
    @const		kODAttributeTypeSetupLocation
    @abstract   Used for Setup Assistant automatic population.
    @discussion Used for Setup Assistant automatic population.
*/
let kODAttributeTypeSetupLocation: String

/*!
    @const		kODAttributeTypeSetupOccupation
    @abstract   Used for Setup Assistant automatic population.
    @discussion Used for Setup Assistant automatic population.
*/
let kODAttributeTypeSetupOccupation: String

/*!
    @const		kODAttributeTypeTimeToLive
	@abstract   Attribute recommending how long to cache the record's attribute values.
	@discussion Attribute recommending how long to cache the record's attribute values.
				Format is an unsigned 32 bit representing seconds. ie. 300 is 5 minutes.
*/
let kODAttributeTypeTimeToLive: String

/*!
	@const		kODAttributeTypeTrustInformation
	@abstract	Used to describe a node's trust information.
	@discussion	Used to describe a node's trust information.
*/
let kODAttributeTypeTrustInformation: String

/*!
    @const		kODAttributeTypeUniqueID
	@abstract   This is the 32 bit unique ID that represents the user in the legacy manner.
	@discussion This is the 32 bit unique ID that represents the user in the legacy manner.
				Format is a signed integer represented as a string.
*/
let kODAttributeTypeUniqueID: String

/*!
    @const		kODAttributeTypeUserCertificate
	@abstract   Attribute containing the binary of the user's certificate.
	@discussion Attribute containing the binary of the user's certificate.
				Usually found in user records. The certificate is data which identifies a user.
				This data is attested to by a known party, and can be independently verified 
				by a third party.
*/
let kODAttributeTypeUserCertificate: String

/*!
    @const		kODAttributeTypeUserPKCS12Data
	@abstract   Attribute containing binary data in PKCS #12 format. 
	@discussion Attribute containing binary data in PKCS #12 format. 
				Usually found in user records. The value can contain keys, certificates,
				and other related information and is encrypted with a passphrase.
*/
let kODAttributeTypeUserPKCS12Data: String

/*!
    @const		kODAttributeTypeUserShell
    @abstract   Used to represent the user's shell setting.
    @discussion Used to represent the user's shell setting.
*/
let kODAttributeTypeUserShell: String

/*!
    @const		kODAttributeTypeUserSMIMECertificate
	@abstract   Attribute containing the binary of the user's SMIME certificate.
	@discussion Attribute containing the binary of the user's SMIME certificate.
				Usually found in user records. The certificate is data which identifies a user.
				This data is attested to by a known party, and can be independently verified 
				by a third party. SMIME certificates are often used for signed or encrypted
				emails.
*/
let kODAttributeTypeUserSMIMECertificate: String

/*!
    @const		kODAttributeTypeVFSDumpFreq
    @abstract   Attribute used to support mount records.
    @discussion Attribute used to support mount records.
*/
let kODAttributeTypeVFSDumpFreq: String

/*!
    @const		kODAttributeTypeVFSLinkDir
    @abstract   Attribute used to support mount records.
    @discussion Attribute used to support mount records.
*/
let kODAttributeTypeVFSLinkDir: String

/*!
    @const		kODAttributeTypeVFSPassNo
    @abstract   Attribute used to support mount records.
    @discussion Attribute used to support mount records.
*/
let kODAttributeTypeVFSPassNo: String

/*!
    @const		kODAttributeTypeVFSType
    @abstract   Attribute used to support mount records.
    @discussion Attribute used to support mount records.
*/
let kODAttributeTypeVFSType: String

/*!
    @const		kODAttributeTypeWeblogURI
	@abstract   attribute that defines the URI of a user's weblog.
	@discussion attribute that defines the URI of a user's weblog.
				Usually found in user records (kODRecordTypeUsers). 
				Example: http://example.com/blog/jsmith
*/
let kODAttributeTypeWeblogURI: String

/*!
    @const		kODAttributeTypeXMLPlist
    @abstract   XML plist used.
    @discussion XML plist used.
*/
let kODAttributeTypeXMLPlist: String

/*!
    @const		kODAttributeTypeProtocolNumber
	@abstract   Attribute that defines a protocol number.
	@discussion Attribute that defines a protocol number.  Usually found
				in protocol records (kODRecordTypeProtocols)
*/
let kODAttributeTypeProtocolNumber: String

/*!
    @const		kODAttributeTypeRPCNumber
	@abstract   Attribute that defines an RPC number.
	@discussion Attribute that defines an RPC number.  Usually found
				in RPC records (kODRecordTypeRPC)
*/
let kODAttributeTypeRPCNumber: String

/*!
    @const		kODAttributeTypeNetworkNumber
	@abstract   Attribute that defines a network number.
	@discussion Attribute that defines a network number.  Usually found
				in network records (kODRecordTypeNetworks)
*/
let kODAttributeTypeNetworkNumber: String

/*!
    @const		kODAttributeTypeAccessControlEntry
    @abstract   Attribute type which stores directory access control directives.
    @discussion Attribute type which stores directory access control directives.
*/
let kODAttributeTypeAccessControlEntry: String

/*!
    @const		kODAttributeTypeAddressLine1
    @abstract   Line one of multiple lines of address data for a user.
    @discussion Line one of multiple lines of address data for a user.
*/
let kODAttributeTypeAddressLine1: String

/*!
    @const		kODAttributeTypeAddressLine2
    @abstract   Line two of multiple lines of address data for a user.
    @discussion Line two of multiple lines of address data for a user.
*/
let kODAttributeTypeAddressLine2: String

/*!
    @const		kODAttributeTypeAddressLine3
    @abstract   Line three of multiple lines of address data for a user.
    @discussion Line three of multiple lines of address data for a user.
*/
let kODAttributeTypeAddressLine3: String

/*!
    @const		kODAttributeTypeAreaCode
    @abstract   Area code of a user's phone number.
    @discussion Area code of a user's phone number.
*/
let kODAttributeTypeAreaCode: String

/*!
    @const		kODAttributeTypeAuthenticationAuthority
	@abstract   Determines what mechanism is used to verify or set a user's password.
	@discussion Determines what mechanism is used to verify or set a user's password.
				If multiple values are present, the first attributes returned take precedence.
				Typically found in User records (kODRecordTypeUsers).
 
				Authentication authorities are a multi-part string separated by semi-colons.
				One component is the "type" of authority, such as those listed below:
 
					"basic"					- is a crypt password
					"ShadowHash"			- is a hashed password stored in a secure location
					"ApplePasswordServer"	- is a password server-based account
					"Kerberosv5"			- is a Kerberosv5 based
					"LocalCachedUser"		- is a cached account based on an account from another node, using a ShadowHash password
					"DisabledUser"			- is an account that has been disabled
*/
let kODAttributeTypeAuthenticationAuthority: String

/*!
    @const		kODAttributeTypeAutomountInformation
	@abstract   Determines what mechanism is used to verify or set a user's password.
	@discussion Determines what mechanism is used to verify or set a user's password.
				If multiple values are present, the first attributes returned take precedence.
				Typically found in User records (kODRecordTypeUsers).
*/
let kODAttributeTypeAutomountInformation: String

/*!
    @const		kODAttributeTypeBootParams
    @abstract   Attribute type in host or machine records for storing boot params.
    @discussion Attribute type in host or machine records for storing boot params.
*/
let kODAttributeTypeBootParams: String

/*!
    @const		kODAttributeTypeBuilding
	@abstract   Represents the building name for a user or person record.
	@discussion Represents the building name for a user or person record.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeBuilding: String

/*!
    @const		kODAttributeTypeServicesLocator
    @abstract   the URI for a record's calendar
    @discussion the URI for a record's calendar
*/
let kODAttributeTypeServicesLocator: String

/*!
    @const		kODAttributeTypeCity
	@abstract   Usually, city for a user or person record.
	@discussion Usually, city for a user or person record.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeCity: String

/*!
    @const		kODAttributeTypeCompany
	@abstract   attribute that defines the user's company.
	@discussion attribute that defines the user's company.
				Example: Apple Inc.
*/
let kODAttributeTypeCompany: String

/*!
    @const		kODAttributeTypeComputers
    @abstract   List of computers.
    @discussion List of computers.
*/
let kODAttributeTypeComputers: String

/*!
    @const		kODAttributeTypeCountry
	@abstract   Represents country of a record entry.
	@discussion Represents country of a record entry.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeCountry: String

/*!
    @const		kODAttributeTypeDepartment
	@abstract   Represents the department name of a user or person.
	@discussion Represents the department name of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeDepartment: String

/*!
    @const		kODAttributeTypeDNSName
    @abstract   DNS Resolver nameserver attribute.
    @discussion DNS Resolver nameserver attribute.
*/
let kODAttributeTypeDNSName: String

/*!
    @const		kODAttributeTypeEMailAddress
    @abstract   Email address of usually a user record.
    @discussion Email address of usually a user record.
*/
let kODAttributeTypeEMailAddress: String

/*!
    @const		kODAttributeTypeEMailContacts
	@abstract   Attribute that defines a record's custom email addresses.
	@discussion Attribute that defines a record's custom email addresses.
				found in user records (kODRecordTypeUsers). 
				Example: home:johndoe\@mymail.com
*/
let kODAttributeTypeEMailContacts: String

/*!
    @const		kODAttributeTypeFaxNumber
	@abstract   Represents the FAX numbers of a user or person.
	@discussion Represents the FAX numbers of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeFaxNumber: String

/*!
    @const		kODAttributeTypeGroup
    @abstract   List of groups.
    @discussion List of groups.
*/
let kODAttributeTypeGroup: String

/*!
    @const		kODAttributeTypeGroupMembers
    @abstract   Attribute type in group records containing lists of GUID values for members other than groups.
    @discussion Attribute type in group records containing lists of GUID values for members other than groups.
*/
let kODAttributeTypeGroupMembers: String

/*!
    @const		kODAttributeTypeGroupMembership
    @abstract   Usually a list of users that below to a given group record.
    @discussion Usually a list of users that below to a given group record.
*/
let kODAttributeTypeGroupMembership: String

/*!
    @const		kODAttributeTypeGroupServices
	@abstract   xml-plist attribute that defines a group's services.
	@discussion xml-plist attribute that defines a group's services.
				Found in group records (kODRecordTypeGroups). 
*/
let kODAttributeTypeGroupServices: String

/*!
    @const		kODAttributeTypeHomePhoneNumber
    @abstract   Home telephone number of a user or person.
    @discussion Home telephone number of a user or person.
*/
let kODAttributeTypeHomePhoneNumber: String

/*!
    @const		kODAttributeTypeHTML
    @abstract   HTML location.
    @discussion HTML location.
*/
let kODAttributeTypeHTML: String

/*!
    @const		kODAttributeTypeHomeDirectory
    @abstract   Network home directory URL.
    @discussion Network home directory URL.
*/
let kODAttributeTypeHomeDirectory: String

/*!
    @const		kODAttributeTypeIMHandle
	@abstract   Represents the Instant Messaging handles of a user.
	@discussion Represents the Instant Messaging handles of a user.
				Values should be prefixed with the appropriate IM type
				(i.e., AIM:, Jabber:, MSN:, Yahoo:, or ICQ:).
				Usually found in user records (kODRecordTypeUsers).
*/
let kODAttributeTypeIMHandle: String

/*!
    @const		kODAttributeTypeIPAddress
    @abstract   IP address expressed either as domain or IP notation.
    @discussion IP address expressed either as domain or IP notation.
*/
let kODAttributeTypeIPAddress: String

/*!
    @const		kODAttributeTypeIPAddressAndENetAddress
	@abstract   A pairing of IPv4 or IPv6 addresses with Ethernet addresses 
	@discussion A pairing of IPv4 or IPv6 addresses with Ethernet addresses 
				(e.g., "10.1.1.1/00:16:cb:92:56:41").  Usually found on kODRecordTypeComputers for use by 
				services that need specific pairing of the two values.  This should be in addition to 
				kODAttributeTypeIPAddress, kODAttributeTypeIPv6Address and kODAttributeTypeENetAddress. This is
				necessary because not all directories return attribute values in a guaranteed order.
*/
let kODAttributeTypeIPAddressAndENetAddress: String

/*!
    @const		kODAttributeTypeIPv6Address
	@abstract   IPv6 address expressed in the standard notation
	@discussion IPv6 address expressed in the standard notation (e.g., "fe80::236:caff:fcc2:5641")
				Usually found on kODRecordTypeComputers and kODRecordTypeHosts.
*/
let kODAttributeTypeIPv6Address: String

/*!
    @const		kODAttributeTypeJPEGPhoto
	@abstract   Used to store binary picture data in JPEG format. 
	@discussion Used to store binary picture data in JPEG format. 
				Usually found in user, people or group records (kODRecordTypeUsers, 
				kODRecordTypePeople, kODRecordTypeGroups).
*/
let kODAttributeTypeJPEGPhoto: String

/*!
    @const		kODAttributeTypeJobTitle
	@abstract   Represents the job title of a user.
	@discussion Represents the job title of a user.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeJobTitle: String

/*!
    @const		kODAttributeTypeKDCAuthKey
    @abstract   KDC master key RSA encrypted with realm public key.
    @discussion KDC master key RSA encrypted with realm public key.
*/
let kODAttributeTypeKDCAuthKey: String

/*!
    @const		kODAttributeTypeKeywords
    @abstract   Keywords using for searching capability.
    @discussion Keywords using for searching capability.
*/
let kODAttributeTypeKeywords: String

/*!
    @const		kODAttributeTypeLDAPReadReplicas
    @abstract   List of LDAP server URLs which can each be used to read directory data.
    @discussion List of LDAP server URLs which can each be used to read directory data.
*/
let kODAttributeTypeLDAPReadReplicas: String

/*!
    @const		kODAttributeTypeLDAPWriteReplicas
    @abstract   List of LDAP server URLs which can each be used to write directory data.
    @discussion List of LDAP server URLs which can each be used to write directory data.
*/
let kODAttributeTypeLDAPWriteReplicas: String

/*!
    @const		kODAttributeTypeMapCoordinates
	@abstract   attribute that defines coordinates for a user's location.
	@discussion attribute that defines coordinates for a user's location .
				found in user records (kODRecordTypeUsers) and resource records (kODRecordTypeResources).
				Example: 7.7,10.6
*/
let kODAttributeTypeMapCoordinates: String

/*!
    @const		kODAttributeTypeMapURI
	@abstract   attribute that defines the URI of a user's location.
	@discussion attribute that defines the URI of a user's location.
				Usually found in user records (kODRecordTypeUsers). 
				Example: http://example.com/bldg1
*/
let kODAttributeTypeMapURI: String

/*!
    @const		kODAttributeTypeMIME
    @abstract   Data contained in this attribute type is a fully qualified MIME Type. 
    @discussion Data contained in this attribute type is a fully qualified MIME Type. 
*/
let kODAttributeTypeMIME: String

/*!
    @const		kODAttributeTypeMobileNumber
	@abstract   Represents the mobile numbers of a user or person.
	@discussion Represents the mobile numbers of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeMobileNumber: String

/*!
    @const		kODAttributeTypeNestedGroups
    @abstract   Attribute type in group records for the list of GUID values for nested groups.
    @discussion Attribute type in group records for the list of GUID values for nested groups.
*/
let kODAttributeTypeNestedGroups: String

/*!
    @const		kODAttributeTypeNetGroups
	@abstract   Attribute type that indicates which netgroups its record is a member of.
	@discussion Attribute type that indicates which netgroups its record is a member of.
				Found in user and host records.
*/
let kODAttributeTypeNetGroups: String

/*!
    @const		kODAttributeTypeNickName
	@abstract   Represents the nickname of a user or person.
	@discussion Represents the nickname of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeNickName: String

/*!
    @const		kODAttributeTypeOrganizationInfo
    @abstract   Usually the organization info of a user.
    @discussion Usually the organization info of a user.
*/
let kODAttributeTypeOrganizationInfo: String

/*!
    @const		kODAttributeTypeOrganizationName
    @abstract   Usually the organization of a user.
    @discussion Usually the organization of a user.
*/
let kODAttributeTypeOrganizationName: String

/*!
    @const		kODAttributeTypePagerNumber
	@abstract   Represents the pager numbers of a user or person.
	@discussion Represents the pager numbers of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypePagerNumber: String

/*!
    @const		kODAttributeTypePhoneContacts
	@abstract   attribute that defines a record's custom phone numbers.
	@discussion attribute that defines a record's custom phone numbers.
				found in user or people records.
					Example: home fax:408-555-4444
*/
let kODAttributeTypePhoneContacts: String

/*!
    @const		kODAttributeTypePhoneNumber
    @abstract   Telephone number of a user.
    @discussion Telephone number of a user.
*/
let kODAttributeTypePhoneNumber: String

/*!
    @const		kODAttributeTypePGPPublicKey
    @abstract   Pretty Good Privacy public encryption key.
    @discussion Pretty Good Privacy public encryption key.
*/
let kODAttributeTypePGPPublicKey: String

/*!
    @const		kODAttributeTypePostalAddress
    @abstract   The postal address usually excluding postal code.
    @discussion The postal address usually excluding postal code.
*/
let kODAttributeTypePostalAddress: String

/*!
    @const		kODAttributeTypePostalAddressContacts
	@abstract   attribute that defines a record's alternate postal addresses.
	@discussion attribute that defines a record's alternate postal addresses.
				Found in user records (kODRecordTypeUsers) and resource records (kODRecordTypeResources).
*/
let kODAttributeTypePostalAddressContacts: String

/*!
    @const		kODAttributeTypePostalCode
    @abstract   The postal code such as zip code in the USA.
    @discussion The postal code such as zip code in the USA.
*/
let kODAttributeTypePostalCode: String

/*!
    @const		kODAttributeTypeNamePrefix
	@abstract   Represents the title prefix of a user or person.
	@discussion Represents the title prefix of a user or person.
				ie. Mr., Ms., Mrs., Dr., etc.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeNamePrefix: String

/*!
    @const      kODAttributeTypeProfiles
    @abstract   Profiles associated with the record.
 */
@available(OSX 10.9, *)
let kODAttributeTypeProfiles: String

/*!
    @const      kODAttributeTypeProfilesTimestamp
    @abstract   Timestamp for the profiles associated with the record.
 */
@available(OSX 10.9, *)
let kODAttributeTypeProfilesTimestamp: String

/*!
    @const		kODAttributeTypeProtocols
    @abstract   List of protocols.
    @discussion List of protocols.
*/
let kODAttributeTypeProtocols: String

/*!
    @const		kODAttributeTypeRecordName
    @abstract   List of names/keys for this record.
    @discussion List of names/keys for this record.
*/
let kODAttributeTypeRecordName: String

/*!
    @const		kODAttributeTypeRelationships
	@abstract   attribute that defines the relationship to the record type.
	@discussion attribute that defines the relationship to the record type.
				found in user records (kODRecordTypeUsers). 
					Example: brother:John
*/
let kODAttributeTypeRelationships: String

/*!
    @const		kODAttributeTypeResourceInfo
    @abstract   attribute that defines a resource record's info.
    @discussion attribute that defines a resource record's info.
*/
let kODAttributeTypeResourceInfo: String

/*!
    @const		kODAttributeTypeResourceType
	@abstract   Attribute type for the kind of resource. 
	@discussion Attribute type for the kind of resource. 
				found in resource records (kODRecordTypeResources). 
					Example: ConferenceRoom
*/
let kODAttributeTypeResourceType: String

/*!
    @const		kODAttributeTypeState
    @abstract   The state or province of a country.
    @discussion The state or province of a country.
*/
let kODAttributeTypeState: String

/*!
    @const		kODAttributeTypeStreet
	@abstract   Represents the street address of a user or person.
	@discussion Represents the street address of a user or person.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeStreet: String

/*!
    @const		kODAttributeTypeNameSuffix
	@abstract   Represents the name suffix of a user or person.
	@discussion Represents the name suffix of a user or person.
				i.e., Jr., Sr., etc.
				Usually found in user or people records (kODRecordTypeUsers or 
				kODRecordTypePeople).
*/
let kODAttributeTypeNameSuffix: String

/*!
    @const		kODAttributeTypeURL
    @abstract   List of URLs.
    @discussion List of URLs.
*/
let kODAttributeTypeURL: String

/*!
    @const		kODAttributeTypeVFSOpts
    @abstract   Used in support of mount records.
    @discussion Used in support of mount records.
*/
let kODAttributeTypeVFSOpts: String

/*!
    @const		kODAttributeTypeAlias
    @abstract   Alias attribute, contain pointer to another node/record/attribute.
    @discussion Alias attribute, contain pointer to another node/record/attribute.
*/
let kODAttributeTypeAlias: String

/*!
    @const		kODAttributeTypeAuthCredential
    @abstract   An authentication credential, to be used to authenticate to a Directory.
    @discussion An authentication credential, to be used to authenticate to a Directory.
*/
let kODAttributeTypeAuthCredential: String

/*!
    @const		kODAttributeTypeCopyTimestamp
    @abstract   Timestamp used in local account caching.
    @discussion Timestamp used in local account caching.
*/
let kODAttributeTypeCopyTimestamp: String

/*!
    @const		kODAttributeTypeDateRecordCreated
    @abstract   Date of record creation.
    @discussion Date of record creation.
*/
let kODAttributeTypeDateRecordCreated: String

/*!
    @const		kODAttributeTypeKerberosRealm
    @abstract   Supports Kerberized SMB Server services.
    @discussion Supports Kerberized SMB Server services.
*/
let kODAttributeTypeKerberosRealm: String

/*!
    @const		kODAttributeTypeNTDomainComputerAccount
    @abstract   Supports Kerberized SMB Server services.
    @discussion Supports Kerberized SMB Server services.
*/
let kODAttributeTypeNTDomainComputerAccount: String

/*!
    @const		kODAttributeTypeOriginalHomeDirectory
    @abstract   Home directory URL used in local account caching.
    @discussion Home directory URL used in local account caching.
*/
let kODAttributeTypeOriginalHomeDirectory: String

/*!
    @const		kODAttributeTypeOriginalNFSHomeDirectory
    @abstract   NFS home directory used in local account caching.
    @discussion NFS home directory used in local account caching.
*/
let kODAttributeTypeOriginalNFSHomeDirectory: String

/*!
    @const		kODAttributeTypeOriginalNodeName
    @abstract   Nodename used in local account caching.
    @discussion Nodename used in local account caching.
*/
let kODAttributeTypeOriginalNodeName: String

/*!
    @const		kODAttributeTypePrimaryNTDomain
    @abstract   Supports Kerberized SMB Server services.
    @discussion Supports Kerberized SMB Server services.
*/
let kODAttributeTypePrimaryNTDomain: String

/*!
    @const		kODAttributeTypePwdAgingPolicy
    @abstract   Contains the password aging policy data for an authentication capable record.
    @discussion Contains the password aging policy data for an authentication capable record.
*/
let kODAttributeTypePwdAgingPolicy: String

/*!
    @const		kODAttributeTypeReadOnlyNode
	@abstract   Can be found using dsGetDirNodeInfo and will return one of
				ReadOnly, ReadWrite, or WriteOnly strings.
	@discussion Can be found using dsGetDirNodeInfo and will return one of
				ReadOnly, ReadWrite, or WriteOnly strings.
				Note that ReadWrite does not imply fully readable or writable
*/
let kODAttributeTypeReadOnlyNode: String

/*!
    @const		kODAttributeTypeTimePackage
    @abstract   Data of Create, Modify, Backup time in UTC.
    @discussion Data of Create, Modify, Backup time in UTC.
*/
let kODAttributeTypeTimePackage: String

/*!
    @const		kODAttributeTypeTotalSize
    @abstract   checksum/meta data.
    @discussion checksum/meta data.
*/
let kODAttributeTypeTotalSize: String

/*!
    @const		kODAttributeTypeAuthMethod
    @abstract   Authentication method for an authentication capable record.
    @discussion Authentication method for an authentication capable record.
*/
let kODAttributeTypeAuthMethod: String

/*!
    @const		kODAttributeTypeMetaNodeLocation
    @abstract   Meta attribute returning registered node name by directory node plugin.
    @discussion Meta attribute returning registered node name by directory node plugin.
*/
let kODAttributeTypeMetaNodeLocation: String

/*!
    @const		kODAttributeTypeNodePath
	@abstract   Attribute type in Neighborhood records describing the DS Node to search while
				looking up aliases in this neighborhood.
	@discussion Attribute type in Neighborhood records describing the DS Node to search while
				looking up aliases in this neighborhood.
*/
let kODAttributeTypeNodePath: String

/*!
    @const		kODAttributeTypePlugInInfo
	@abstract   Information (version, signature, about, credits, etc.) about the plug-in
				that is actually servicing a particular directory node.
	@discussion Information (version, signature, about, credits, etc.) about the plug-in
				that is actually servicing a particular directory node.
				Has never been supported.
*/
let kODAttributeTypePlugInInfo: String

/*!
    @const		kODAttributeTypeRecordType
    @abstract   Attribute for a Record or a Directory Node.
    @discussion Attribute for a Record or a Directory Node.
*/
let kODAttributeTypeRecordType: String

/*!
    @const		kODAttributeTypeSchema
    @abstract   List of attribute types.
    @discussion List of attribute types.
*/
let kODAttributeTypeSchema: String

/*!
    @const		kODAttributeTypeSubNodes
	@abstract   Attribute of a node which lists the available subnodes
				of that node.
	@discussion Attribute of a node which lists the available subnodes
				of that node.
*/
let kODAttributeTypeSubNodes: String

/*!
    @const		kODAttributeTypeNetGroupTriplet
	@abstract   Attribute that defines the host, user and domain triplet combinations
				to support NetGroups.  Each attribute value is comma separated string to maintain the
				triplet (e.g., host,user,domain).
	@discussion Attribute that defines the host, user and domain triplet combinations
				to support NetGroups.  Each attribute value is comma separated string to maintain the
				triplet (e.g., host,user,domain).
*/
let kODAttributeTypeNetGroupTriplet: String

/*!
    @const		kODAttributeTypeSearchPath
    @abstract   Search path used by the search node.
    @discussion Search path used by the search node.
*/
let kODAttributeTypeSearchPath: String

/*!
    @const		kODAttributeTypeSearchPolicy
    @abstract   Search policy for the search node.
    @discussion Search policy for the search node.
*/
let kODAttributeTypeSearchPolicy: String

/*!
    @const		kODAttributeTypeAutomaticSearchPath
    @abstract   Automatic search path defined by the search node.
    @discussion Automatic search path defined by the search node.
*/
let kODAttributeTypeAutomaticSearchPath: String

/*!
    @const		kODAttributeTypeLocalOnlySearchPath
    @abstract   Local only search path defined by the search node.
    @discussion Local only search path defined by the search node.
*/
let kODAttributeTypeLocalOnlySearchPath: String

/*!
    @const		kODAttributeTypeCustomSearchPath
    @abstract   Admin user configured custom search path defined by the search node.
    @discussion Admin user configured custom search path defined by the search node.
*/
let kODAttributeTypeCustomSearchPath: String

/*!
    @const      kODAttributeTypeNodeOptions
    @abstract   Any extended options supported by the node during creation
    @discussion Any extended options supported by the node during creation
 */
@available(OSX 10.7, *)
let kODAttributeTypeNodeOptions: String

/*!
    @const      kODAttributeTypeNodeSASLRealm
    @abstract   Contains the SASL realm associated with this node (if any)
    @discussion Contains the SASL realm associated with this node (if any)
 */
@available(OSX 10.9, *)
let kODAttributeTypeNodeSASLRealm: String

/*!
	@const		kODAttributeTypeAdvertisedServices
*/
@available(OSX 10.7, *)
let kODAttributeTypeAdvertisedServices: String

/*!
	@const		kODAttributeTypeLocaleRelay
*/
@available(OSX 10.7, *)
let kODAttributeTypeLocaleRelay: String

/*!
	@const		kODAttributeTypeLocaleSubnets
*/
@available(OSX 10.7, *)
let kODAttributeTypeLocaleSubnets: String

/*!
	@const		kODAttributeTypeNetworkInterfaces
*/
@available(OSX 10.7, *)
let kODAttributeTypeNetworkInterfaces: String

/*!
	@const		kODAttributeTypeParentLocales
*/
@available(OSX 10.7, *)
let kODAttributeTypeParentLocales: String

/*!
	@const		kODAttributeTypePrimaryLocale
*/
@available(OSX 10.7, *)
let kODAttributeTypePrimaryLocale: String

/*!
    @const		kODAttributeTypeBuildVersion
    @abstract   Build version for reference.
    @discussion Build version for reference.
*/
let kODAttributeTypeBuildVersion: String

/*!
    @const		kODAttributeTypeConfigAvail
    @abstract   Config avail tag.
    @discussion Config avail tag.
*/
let kODAttributeTypeConfigAvailable: String

/*!
    @const		kODAttributeTypeConfigFile
    @abstract   Config file name.
    @discussion Config file name.
*/
let kODAttributeTypeConfigFile: String

/*!
    @const		kODAttributeTypeCoreFWVersion
    @abstract   Core FW version for reference.
    @discussion Core FW version for reference.
*/
let kODAttributeTypeCoreFWVersion: String

/*!
    @const		kODAttributeTypeFunctionalState
    @abstract   Functional state of plugin for example.
    @discussion Functional state of plugin for example.
*/
let kODAttributeTypeFunctionalState: String

/*!
    @const		kODAttributeTypeFWVersion
    @abstract   Framework version for reference.
    @discussion Framework version for reference.
*/
let kODAttributeTypeFWVersion: String

/*!
    @const		kODAttributeTypePluginIndex
    @abstract   Plugin index for reference.
    @discussion Plugin index for reference.
*/
let kODAttributeTypePluginIndex: String

/*!
    @const		kODAttributeTypeNumTableList
    @abstract   Summary of the reference table entries presented as attribute values 
				from the Configure node.
    @discussion Summary of the reference table entries presented as attribute values
				from the Configure node.
*/
let kODAttributeTypeNumTableList: String

/*!
    @const		kODAttributeTypeVersion
    @abstract   Version label.
    @discussion Version label.
*/
let kODAttributeTypeVersion: String

/*!
    @const		kODAttributeTypePIDValue
    @abstract   PID value.
    @discussion PID value.
*/
let kODAttributeTypePIDValue: String

/*!
    @const		kODAttributeTypeProcessName
    @abstract   Process Name.
    @discussion Process Name.
*/
let kODAttributeTypeProcessName: String

/*!
    @const		kODAttributeTypeTotalRefCount
    @abstract   Total count of references for a process.
    @discussion Total count of references for a process.
*/
let kODAttributeTypeTotalRefCount: String

/*!
    @const		kODAttributeTypeDirRefCount
    @abstract   Directory reference count for a process.
    @discussion Directory reference count for a process.
*/
let kODAttributeTypeDirRefCount: String

/*!
    @const		kODAttributeTypeNodeRefCount
    @abstract   Node reference count for a process.
    @discussion Node reference count for a process.
*/
let kODAttributeTypeNodeRefCount: String

/*!
    @const		kODAttributeTypeRecRefCount
    @abstract   Record reference count for a process.
    @discussion Record reference count for a process.
*/
let kODAttributeTypeRecRefCount: String

/*!
    @const		kODAttributeTypeAttrListRefCount
    @abstract   Attribute List reference count for a process.
    @discussion Attribute List reference count for a process.
*/
let kODAttributeTypeAttrListRefCount: String

/*!
    @const		kODAttributeTypeAttrListValueRefCount
    @abstract   Attr List Value reference count for a process.
    @discussion Attr List Value reference count for a process.
*/
let kODAttributeTypeAttrListValueRefCount: String

/*!
    @const		kODAttributeTypeDirRefs
    @abstract   All the directory references for a process.
    @discussion All the directory references for a process.
*/
let kODAttributeTypeDirRefs: String

/*!
    @const		kODAttributeTypeNodeRefs
    @abstract   All the node references for a process.
    @discussion All the node references for a process.
*/
let kODAttributeTypeNodeRefs: String

/*!
    @const		kODAttributeTypeRecRefs
    @abstract   All the record references for a process.
    @discussion All the record references for a process.
*/
let kODAttributeTypeRecRefs: String

/*!
    @const		kODAttributeTypeAttrListRefs
    @abstract   All the attribute list references for a process.
    @discussion All the attribute list references for a process.
*/
let kODAttributeTypeAttrListRefs: String

/*!
    @const		kODAttributeTypeAttrListValueRefs
    @abstract   All the attribute list value references for a process.
    @discussion All the attribute list value references for a process.
*/
let kODAttributeTypeAttrListValueRefs: String

/*!
    @const		kODAuthenticationType2WayRandom
	@abstract   Two way random authentication method.
	@discussion Two way random authentication method. This method uses two passes to
				complete the authentication.

				First pass authentication array has items:
					user name in UTF8 encoding

				Second pass authentication array has items:
					8 byte DES digest,
					8 bytes of random
*/
let kODAuthenticationType2WayRandom: String

/*!
    @const		kODAuthenticationType2WayRandomChangePasswd
	@abstract   Change the password for a user using the two-way random method.
	@discussion Change the password for a user using the two-way random method.
				Does not require prior authentication.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					old password encrypted with new (should be 8 chars),
					new password encrypted with old (should be 8 chars)
*/
let kODAuthenticationType2WayRandomChangePasswd: String

/*!
    @const		kODAuthenticationTypeAPOP
	@abstract   APOP authentication method.
	@discussion APOP authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					server challenge in UTF8 encoding,
					client response in UTF8 encoding
*/
let kODAuthenticationTypeAPOP: String

/*!
    @const		kODAuthenticationTypeCRAM_MD5
	@abstract   CRAM MD5 authentication method.
	@discussion CRAM MD5 authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					server challenge in UTF8 encoding,
					client response data
*/
let kODAuthenticationTypeCRAM_MD5: String

/*!
    @const		kODAuthenticationTypeChangePasswd
	@abstract   Change the password for a user.
	@discussion Change the password for a user. Does not require prior authentication.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					old password in UTF8 encoding,
					new password in UTF8 encoding
*/
let kODAuthenticationTypeChangePasswd: String

/*!
    @const		kODAuthenticationTypeClearText
	@abstract   Clear text authentication method.
	@discussion Clear text authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					password in UTF8 encoding
*/
let kODAuthenticationTypeClearText: String

/*!
    @const		kODAuthenticationTypeCrypt
	@abstract   Use a crypt password stored in the user record if available to
				do the authentication.
	@discussion Use a crypt password stored in the user record if available to
				do the authentication.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					password in UTF8 encoding

				This method may not be supported by all plug-ins or for all users.
*/
let kODAuthenticationTypeCrypt: String

/*!
    @const		kODAuthenticationTypeDIGEST_MD5
	@abstract   Digest MD5 authentication method.
	@discussion Digest MD5 authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					server challenge in UTF8 encoding,
					client response data,
					HTTP method in UTF8 encoding
*/
let kODAuthenticationTypeDIGEST_MD5: String

/*!
    @const		kODAuthenticationTypeDeleteUser
	@abstract   Used for Apple password server user deletion.
	@discussion Used for Apple password server user deletion.
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					Password Server ID in UTF8 encoding,
					authenticator password in UTF8 encoding,
					user's Password Server ID in UTF8 encoding
*/
let kODAuthenticationTypeDeleteUser: String

/*!
    @const		kODAuthenticationTypeGetEffectivePolicy
	@abstract   Used to extract, from a password server, the actual policies that will be applied
				to a user; a combination of global and user policies.
	@discussion Used to extract, from a password server, the actual policies that will be applied
				to a user; a combination of global and user policies.

				Authentication array has following items in order:
					user name or Password Server ID in UTF8 encoding
*/
let kODAuthenticationTypeGetEffectivePolicy: String

/*!
    @const		kODAuthenticationTypeGetGlobalPolicy
	@abstract   Used for extraction of global authentication policy.
	@discussion Used for extraction of global authentication policy. Authentication
				is not required to get policies. The authenticator name and password
				fields are optional.

				Authentication array has following items in order:
					user name in UTF8 encoding
					password in UTF8 encoding
*/
let kODAuthenticationTypeGetGlobalPolicy: String

/*!
    @const		kODAuthenticationTypeGetKerberosPrincipal
	@abstract   Retrieves Kerberos Principal name.
	@discussion Retrieves Kerberos Principal name.

				Authentication array has following items in order:
					user name in UTF8 encoding
*/
let kODAuthenticationTypeGetKerberosPrincipal: String

/*!
    @const		kODAuthenticationTypeGetPolicy
	@abstract   The plug-in should determine which specific authentication method to use.
	@discussion The plug-in should determine which specific authentication method to use.
				Authentication is not required to get policies. The authenticator name and password
				fields may be left blank by using a length of 1 and a zero-byte for the data.

				Authentication array has following items in order:
					authenticator's name or Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding
					account's name or Password Server ID

				The Password Server does not require authentication for this authentication method.
				The first two fields are to cover us for future policy changes and to keep the buffer
				format as standardized as possible.
*/
let kODAuthenticationTypeGetPolicy: String

/*!
    @const		kODAuthenticationTypeGetUserData
	@abstract   Used with Apple password server.
	@discussion Used with Apple password server. The password server maintains a space
				for a small amount of miscellaneous data.
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding
					Password Server ID in UTF8 encoding
*/
let kODAuthenticationTypeGetUserData: String

/*!
    @const		kODAuthenticationTypeGetUserName
	@abstract   Used with Apple password server.
	@discussion Used with Apple password server. This name is the same as the primary
				short name for the user.
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					user's Password Server ID in UTF8 encoding
*/
let kODAuthenticationTypeGetUserName: String

/*!
    @const		kODAuthenticationTypeKerberosTickets
	@abstract   Provides write-access to LDAP with an existing Kerberos ticket.
	@discussion Provides write-access to LDAP with an existing Kerberos ticket

				Authentication array has following items in order:
					user name in UTF8 encoding,
					krb5_data containing a service ticket
*/
let kODAuthenticationTypeKerberosTickets: String

/*!
    @const		kODAuthenticationTypeMPPEMasterKeys
	@abstract   Generated 40-bit or 128-bit master keys from MS-CHAPv2 credentials (RFC 3079).
	@discussion Generated 40-bit or 128-bit master keys from MS-CHAPv2 credentials (RFC 3079).

				Authentication array has following items in order:
					user name in UTF8 encoding,
					MS-CHAPv2 digest (P24),
					key size, 8 or 16 (packed as a byte, not a string)
*/
let kODAuthenticationTypeMPPEMasterKeys: String

/*!
    @const		kODAuthenticationTypeMSCHAP2
	@abstract	MS-CHAP2 is a mutual authentication method.
	@discussion	MS-CHAP2 is a mutual authentication method. The plug-in will generate the data to
				send back to the client and put it in the continue items array.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					server challenge,
					peer challenge,
					client's digest,
					client's user name (the name used for MS-CHAPv2, usually the first short name)

				Continue items array contains:
					digest for the client's challenge
*/
let kODAuthenticationTypeMSCHAP2: String

/*!
    @const		kODAuthenticationTypeNTLMv2
	@abstract   Verifies an NTLMv2 challenge and response.
	@discussion Verifies an NTLMv2 challenge and response. The session keys
				(if any) must be retrieved separately with a trusted authentication.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					SMB server challenge,
					the client "blob" which includes 16 bytes of client digest prefixed
						to the the blob data,
					the user name used to calculate the digest in UTF8 encoding,
					the SMB domain in UTF8 encoding
*/
let kODAuthenticationTypeNTLMv2: String

/*!
    @const		kODAuthenticationTypeNTLMv2WithSessionKey
	@abstract   An optimized method that checks the user's challenge and response
				and retrieves session keys in a single call.
	@discussion An optimized method that checks the user's challenge and response
				and retrieves session keys in a single call. If the NTLMv2 session key is
				supported, it is returned in the step buffer.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					SMB server challenge,
					the client "blob" which includes 16 bytes of client digest prefixed
						to the the blob data,
					the user name used to calculate the digest  in UTF8 encoding,
					the SMB domain in UTF8 encoding,
					user name in UTF8 encoding,
					authenticator password in UTF8 encoding
*/
let kODAuthenticationTypeNTLMv2WithSessionKey: String

/*!
    @const		kODAuthenticationTypeNewUser
	@abstract	Create a new user record with the authentication authority.
	@discussion	Create a new user record with the authentication authority
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					user's short-name,
					user's password
*/
let kODAuthenticationTypeNewUser: String

/*!
    @const		kODAuthenticationTypeNewUserWithPolicy
	@abstract	Create a new user record with the authentication authority and initial policy settings.
	@discussion	Create a new user record with the authentication authority and initial policy settings
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					user's short-name,
					user's password,
					policy string in UTF8 encoding
*/
let kODAuthenticationTypeNewUserWithPolicy: String

/*!
    @const		kODAuthenticationTypeNodeNativeClearTextOK
	@abstract   The plug-in should determine which specific authentication method to use.
	@discussion The plug-in should determine which specific authentication method to use.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					password in UTF8 encoding

				The plug-in may choose to use a cleartext authentication method if necessary.
*/
let kODAuthenticationTypeNodeNativeClearTextOK: String

/*!
    @const		kODAuthenticationTypeNodeNativeNoClearText
	@abstract   The plug-in should determine which specific authentication method to use.
	@discussion The plug-in should determine which specific authentication method to use.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					password in UTF8 encoding

				The plug-in must not use an authentication method that sends the password in cleartext.
*/
let kODAuthenticationTypeNodeNativeNoClearText: String

/*!
    @const		kODAuthenticationTypeReadSecureHash
	@abstract   Returns the SHA1 or Seeded SHA1 hash for a local user.
	@discussion Returns the SHA1 or Seeded SHA1 hash for a local user
				Only accessible by root processes. Only implemented by the local node.

				Authentication array has following items in order:
					user's name in UTF8 encoding

				Continue items array contains:
					value, either the old 20-byte SHA1 or the new seeded 24-byte SHA1.
*/
let kODAuthenticationTypeReadSecureHash: String

/*!
    @const		kODAuthenticationTypeSMBNTv2UserSessionKey
	@abstract   Generate the ntlm-v2 user session key.
	@discussion Generate the ntlm-v2 user session key. Requires prior authentication with a trusted
				authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					8 byte server challenge
					client response buffer
*/
let kODAuthenticationTypeSMBNTv2UserSessionKey: String

/*!
    @const		kODAuthenticationTypeSMBWorkstationCredentialSessionKey
    @abstract   Generates an SMB workstation credential session key.
    @discussion Generates an SMB workstation credential session key.
 
				Authentication array has following items in order:
					user name in UTF8 encoding,
					8 byte server challenge + 8 byte client challenge
*/
let kODAuthenticationTypeSMBWorkstationCredentialSessionKey: String

/*!
    @const		kODAuthenticationTypeSMB_LM_Key
	@abstract   SMB Lan Manager authentication method.
	@discussion SMB Lan Manager authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					8 byte server challenge,
					24 byte client response
*/
let kODAuthenticationTypeSMB_LM_Key: String

/*!
    @const		kODAuthenticationTypeSMB_NT_Key
	@abstract   SMB NT authentication method.
	@discussion SMB NT authentication method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					8 byte server challenge,
					24 byte client response
*/
let kODAuthenticationTypeSMB_NT_Key: String

/*!
    @const		kODAuthenticationTypeSMB_NT_UserSessionKey
	@abstract   Used by SMB to get session keys.
	@discussion Used by SMB to get session keys
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					Password Server ID in UTF8 encoding

				Continue items array contains:
					MD4( ntHash )
*/
let kODAuthenticationTypeSMB_NT_UserSessionKey: String

/*!
    @const		kODAuthenticationTypeSMB_NT_WithUserSessionKey
	@abstract   Used by SMB to authenticate and get session keys.
	@discussion Used by SMB to authenticate and get session keys

				Authentication array has following items in order:
					user name in UTF8 encoding,
					8 byte server challenge,
					24 byte client response,
					authenticator name in UTF8 encoding,
					authenticator password in UTF8 encoding

				Continue items array contains:
					MD4( ntHash )
*/
let kODAuthenticationTypeSMB_NT_WithUserSessionKey: String

/*!
	@const		kODAuthenticationTypeSetCertificateHashAsCurrent
	@abstract	Set certificate using the authenticated user's credentials.
	@discussion	Set certificate using the authenticated user's credentials.

				Authentication array has the following items in order:
					user name in UTF8 encoding
					hashed certificate data (40 hex characters)
*/
@available(OSX 10.7, *)
let kODAuthenticationTypeSetCertificateHashAsCurrent: String

/*!
    @const		kODAuthenticationTypeSetGlobalPolicy
	@abstract   Used to set the global policy.
	@discussion Used to set the global policy.

				Authentication array has following items in order:
					user name or Password Server ID in UTF8 encoding,
					password in UTF8 encoding,
					policy string in UTF8 encoding
*/
let kODAuthenticationTypeSetGlobalPolicy: String

/*!
    @const		kODAuthenticationTypeSetLMHash
	@abstract   Set the LAN Manager hash for an account.
	@discussion Set the LAN Manager hash for an account. This method requires prior authentication.
				Setting the LM hash for an account instead of the plain text password can cause the Windows
				password to get out-of-sync with the password for other services. Therefore, this
				authentication method should only be used when there is no other choice.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					LAN Manager hash buffer
*/
let kODAuthenticationTypeSetLMHash: String

/*!
    @const		kODAuthenticationTypeSetNTHash
	@abstract   Set the NT hash for a user.
	@discussion Set the NT hash for a user. This method requires prior authentication.
				Setting the NT hash for an account instead of the plain text password can cause the Windows
				password to get out-of-sync with the password for other services. Therefore, this
				authentication method should only be used when there is no other choice.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					NT hash buffer
*/
let kODAuthenticationTypeSetNTHash: String

/*!
    @const		kODAuthenticationTypeSetPassword
	@abstract   Set password method.
	@discussion Set password method.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					new password in UTF8 encoding,
					authenticator's name in UTF8 encoding,
					authenticator's password in UTF8 encoding
*/
let kODAuthenticationTypeSetPassword: String

/*!
    @const		kODAuthenticationTypeSetPasswordAsCurrent
	@abstract   Set password using the current credentials.
	@discussion Set password using the current credentials.
 
				Authentication array has following items in order:
					user name in UTF8 encoding,
					new password in UTF8 encoding
*/
let kODAuthenticationTypeSetPasswordAsCurrent: String

/*!
    @const		kODAuthenticationTypeSetPolicy
	@abstract   The plug-in should determine which specific authentication method to use.
	@discussion The plug-in should determine which specific authentication method to use.

				Authentication array has following items in order:
					authenticator's name or Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					name or Password Server ID of the target account in UTF8 encoding,
					policy data
*/
let kODAuthenticationTypeSetPolicy: String

/*!
    @const		kODAuthenticationTypeSetPolicyAsCurrent
	@abstract   A set policy for the password server.
	@discussion A set policy for the password server.

				Authentication array has following items in order:
					user name or Password Server ID of the target account in UTF8 encoding,
					policy data
*/
let kODAuthenticationTypeSetPolicyAsCurrent: String

/*!
    @const		kODAuthenticationTypeSetUserData
	@abstract   Used for Apple password server.
	@discussion Used for Apple password server.
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					Password Server ID in UTF8 encoding,
					user data
*/
let kODAuthenticationTypeSetUserData: String

/*!
    @const		kODAuthenticationTypeSetUserName
	@abstract   Used for Apple password server.
	@discussion Used for Apple password server.
				This authentication method is only implemented by the PasswordServer node.

				Authentication array has following items in order:
					authenticator's Password Server ID in UTF8 encoding,
					authenticator's password in UTF8 encoding,
					Password Server ID in UTF8 encoding,
					user's short name in UTF8 encoding
*/
let kODAuthenticationTypeSetUserName: String

/*!
    @const		kODAuthenticationTypeSetWorkstationPassword
	@abstract   Supports PDC SMB interaction with DS.
	@discussion Supports PDC SMB interaction with DS.
 
				Authentication array has following items in order:
					workstation's Password Server ID in UTF8 encoding,
					NT hash
*/
let kODAuthenticationTypeSetWorkstationPassword: String

/*!
    @const		kODAuthenticationTypeWithAuthorizationRef
	@abstract	Allows access to local directories as root with a valid AuthorizationRef.
	@discussion	Allows access to local directories as root with a valid AuthorizationRef.

				Authentication array has following items in order:
					externalized AuthorizationRef
*/
let kODAuthenticationTypeWithAuthorizationRef: String

/*!
    @const		kODAuthenticationTypeWriteSecureHash
	@abstract	Supports ONLY a root process to be able to directly write the secure hash of a user record.
	@discussion	Supports ONLY a root process to be able to directly write the secure hash of a user record.

				Authentication array has following items in order:
					user name in UTF8 encoding,
					salted SHA1 hash
*/
let kODAuthenticationTypeWriteSecureHash: String

/*!
    @const      kODPolicyTypePasswordCannotBeAccountName
    @abstract   Boolean signifying the password must not contain the name of the account.
    @discussion Boolean signifying the password must not contain the name of the account.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordCannotBeAccountName: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordChangeRequired
    @abstract   Boolean stating the password should be changed on next logon.
    @discussion Should be set to a CFBooleanRef/NSNumber accordingly to signify the password should be changed at next logon.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordChangeRequired: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordHistory
    @abstract   The number of previous passwords that will be remembered.
    @discussion Should be set with a CFNumber/NSNumber accordingly with a range of 1 to 15 passwords.  Remove this policy or
                set to 0 if no history is tracked.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordHistory: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordMinimumNumberOfCharacters
    @abstract   The minimum number of characters a password must contain.
    @discussion A CFNumber/NSNumber signifying the minimum number of characters a password must contain.
 */
@available(OSX 10.9, *)
let kODPolicyTypePasswordMinimumNumberOfCharacters: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordMaximumNumberOfCharacters
    @abstract   The maximum number of characters a password can contain.
    @discussion A CFNumber/NSNumber signifying the maximum number of characters a password can contain.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordMaximumNumberOfCharacters: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordMaximumAgeInMinutes
    @abstract   Number of minutes before password must be changed.
    @discussion The value for the policy should be a CFNumberRef/NSNumber accordingly.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordMaximumAgeInMinutes: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordRequiresAlpha
    @abstract   Sets the number of alpha characters that must present in the password.
    @discussion A CFNumber/NSNumber signifying the number of alpha characters [A-Z][a-z] that must be present in the password.
                Note, not all modules will support this capability.  If you exceed the module's capabilities, it will reset to
                the maximum supported by that module.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordRequiresAlpha: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordRequiresMixedCase
    @abstract   Boolean signifying if password requires mixed case characters both upper and lower characters.
    @discussion Boolean signifying if password requires mixed case characters both upper and lower characters.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordRequiresMixedCase: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordRequiresNumeric
    @abstract   Sets the number of numeric characters that must present in the password.
    @discussion A CFNumber/NSNumber signifying the number of numeric characters [0-9] that must be present in the password.
                Note, not all modules will support this capability.  If you exceed the module's capabilities, it will reset to
                the maximum supported by that module.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordRequiresNumeric: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordRequiresSymbol
    @abstract   Sets the number of symbol characters that must present in the password.
    @discussion A CFNumber/NSNumber signifying the number of symbol characters that must be present in the password.
                Note, not all modules will support this capability.  If you exceed the module's capabilities, it will reset to
                the maximum supported by that module.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordRequiresSymbol: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordSelfModification
    @abstract   Boolean stating if the account is allowed to change their own password.
    @discussion Should be set to a CFBooleanRef/NSNumber accordingly to signify the if the account holder is allowed to change
                their own password.
*/
@available(OSX 10.9, *)
let kODPolicyTypePasswordSelfModification: ODPolicyType!

/*!
    @const      kODPolicyTypeAccountExpiresOnDate
    @abstract   Date when an account expires and becomes deactivated.
    @discussion A CFDate/NSDate signifying when an account expires will be deactivated.
*/
@available(OSX 10.9, *)
let kODPolicyTypeAccountExpiresOnDate: ODPolicyType!

/*!
    @const      kODPolicyTypeAccountMaximumFailedLogins
    @abstract   Sets the number of maximum failed logins allowed for the account.
    @discussion A CFNumber/NSNumber signifying the number of times a bad password can be entered before the account is locked out.
*/
@available(OSX 10.9, *)
let kODPolicyTypeAccountMaximumFailedLogins: ODPolicyType!

/*!
    @const      kODPolicyTypeAccountMaximumMinutesUntilDisabled
    @abstract   Sets the number of maximum number of minutes before this account is disabled automatically from password set.
    @discussion A CFNumber/NSNumber signifying the number of minutes before the account should be auto-disabled.  Note,
                calculation of this is based on timestamp of the password, therefore also preventing the password from
                being changed is required.
 */
@available(OSX 10.9, *)
let kODPolicyTypeAccountMaximumMinutesUntilDisabled: ODPolicyType!

/*!
    @const      kODPolicyTypePasswordMinutesUntilFailedLoginReset
    @abstract   Number of minutes before an account locked out by bad passwords is automatically re-activated.
    @discussion The value for the policy should be a CFNumberRef/NSNumber accordingly.
*/
@available(OSX 10.9, *)
let kODPolicyTypeAccountMinutesUntilFailedLoginReset: ODPolicyType!

/*!
    @const      kODPolicyTypeMaximumMinutesOfNonUse
    @abstract   Maximum number of minutes that an account has not been used before it is deactivated.
    @discussion A CFNumber/NSNumber signifying the number of minutes before an account has not been used before it is deactivated.
*/
@available(OSX 10.9, *)
let kODPolicyTypeAccountMaximumMinutesOfNonUse: ODPolicyType!
var kODExpirationTimeExpired: Int { get }
var kODExpirationTimeNeverExpires: Int { get }
typealias ODPolicyKeyType = NSString

/*!
    @const      kODPolicyKeyIdentifier
    @abstract   Key for the policy identifier in a policy dictionary.
    @discussion Key for the policy identifier in a policy dictionary.  Required
                key in a policy dictionary.  The value of this key is a string
                that uniquely identifies the policy.  It can be anything from a
                GUID to a string that describes the policy (e.g. "max num chars"). 
 */
@available(OSX 10.10, *)
let kODPolicyKeyIdentifier: String

/*!
    @const      kODPolicyKeyParameters
    @abstract   Key for the policy parameters, if any, in a policy dictionary.
    @discussion Key for the policy parameters, if any, in a policy dictionary.
                Optional key in a policy dictionary.  The value of this key is a
                dictionary containing any parameters that are relevant to the
                policy.  Parameters may be used for information purposes or to
                provide additional data to be used in the policy format string.
 */
@available(OSX 10.10, *)
let kODPolicyKeyParameters: String

/*!
    @const      kODPolicyKeyContent
    @abstract   Key for the policy format string in a policy dictionary.
    @discussion Key for the policy format string in a policy dictionary.
                Required key in a policy dictionary.  The value of this key is a
                string containing the policy itself, from which a predicate will
                be created.  The predicate will be applied during policy
                evaluation. 
 */
@available(OSX 10.10, *)
let kODPolicyKeyContent: String

/*!
    @const      kODPolicyKeyContentDescription
    @abstract   Key for the policy content description.
    @discussion Key for the policy content description.  Used in either a policy
                dictionary or in kODPolicyKeyEvaluationDetails dictionary.  It
                is an optional key in either dictionary.

                When used in a policy dictionary, the value of this key is a
                dictionary containing key/value pairs consisting of locale
                identifiers and localized descriptions of the policy content.

                When used in kODPolicyKeyEvaluationDetails dictionary, the value
                is a string containing the localized description of the policy
                content.
 */
@available(OSX 10.11, *)
let kODPolicyKeyContentDescription: String

/*!
    @const      kODPolicyKeyEvaluationDetails
    @abstract   Key containing details of the policy evaluation results.
    @discussion Key containing details of the policy evaluation results.  This
                key may be used in the userInfo portion of a CFErrorRef/NSError.
                The value of this key is an array of dictionaries, with each
                dictionary containing the results of an individual policy
                evaluation.  The keys in the details dictionaries are:
                   kODPolicyKeyIdentifier
                   kODPolicyKeyContentDescription
                   kODPolicyKeyPolicySatisfied
*/
@available(OSX 10.11, *)
let kODPolicyKeyEvaluationDetails: String

/*!
    @const      kODPolicyKeyPolicySatisfied
    @abstract   Key denoting if a specific policy was satisfied during evaluation.
    @discussion Key denoting if a specific policy was satisfied during evaluation.
                This key is used in the dictionaries in kODPolicyKeyEvaluationDetails.
                The value of this key will be true if the specific policy was
                satisfied and false if not.
*/
@available(OSX 10.11, *)
let kODPolicyKeyPolicySatisfied: String
typealias ODPolicyCategoryType = NSString

/*!
    @const      kODPolicyCategoryAuthentication
    @abstract   Category for policies controlling when authentications are allowed.
    @discussion Category for policies controlling when authentications are allowed.  
                Policies in this category are evaluated when determining if an
                authentication should be allowed or when authentications will
                expire.  This constant is also used as a key in a policy set
                dictionary with a value containing an array of policy
                dictionaries. 
 */
@available(OSX 10.10, *)
let kODPolicyCategoryAuthentication: String

/*!
    @const      kODPolicyCategoryPasswordContent
    @abstract   Category for policies controlling content of passwords.
    @discussion Category for policies controlling content of passwords.
                Policies in this category are evaluated when determining if a
                password contains the required content, which is typically done
                during password changes.  This constant is also used as a key in
                a policy set dictionary with a value containing an array of
                policy dictionaries.
 */
@available(OSX 10.10, *)
let kODPolicyCategoryPasswordContent: String

/*!
    @const      kODPolicyCategoryPasswordChange
    @abstract   Category for policies controlling when password require changing.
    @discussion Category for policies controlling when password require changing.
 */
@available(OSX 10.10, *)
let kODPolicyCategoryPasswordChange: String
typealias ODPolicyAttributeType = NSString

/*!
    @const      kODPolicyAttributeRecordName
    @abstract   Policy attribute for the record name.
    @discussion Policy attribute for the record name.  May be used in policies
                to compare against other record attributes.  For example, this
                Password Content policy string prevents the password from being
                the same as the record name:
                    [NSString stringWithFormat:@"%@ != %@", kODPolicyAttributeRecordName, kODPolicyAttributePassword];
 */
@available(OSX 10.10, *)
let kODPolicyAttributeRecordName: String

/*!
    @const      kODPolicyAttributeRecordType
    @abstract   Policy attribute for the record type.
    @discussion Policy attribute for the record type.  Could be used in policies
                to tailor behavior for a particular record type.  For example,
                this Password Content policy string would require computer
                passwords to be a minimum of 24 characters long:
                    [NSString stringWithFormat:@"%@ == %@ and %@ matches '.{24,}+'",
                              kODPolicyAttributeRecordType, kODRecordTypeComputer,
                              kODPolicyAttributePassword]; 
 */
@available(OSX 10.10, *)
let kODPolicyAttributeRecordType: String

/*!
    @const      kODPolicyAttributePassword
    @abstract   Policy attribute for the password.
    @discussion Policy attribute for the password in plain text.  May be used in
		policies to compare against other attributes or for evaluation
		against regular expressions.  Primarily useful in the Password
		Content policies.  For example, this policy string checks
		whether the password length is at least 8 characters: 
                    [NSString stringWithFormat:@"%@ matches '.{8,}+'", kODPolicyAttributePassword];
*/
@available(OSX 10.10, *)
let kODPolicyAttributePassword: String

/*!
    @const      kODPolicyAttributePasswordHashes
    @abstract   Policy attribute for the password hashes
    @discussion Policy attribute for the password hashes.  The value should be a
		CFArray containing one or more CFData values representing a
		password hash.

		Used in Password Content policy strings to compare the new
		password against the password history, for example:
                    [NSString stringWithFormat:@"none %@ in %@", kODPolicyAttributePasswordHashes, kODPolicyAttributePasswordHistory];
*/
@available(OSX 10.10, *)
let kODPolicyAttributePasswordHashes: String

/*!
    @const      kODPolicyAttributePasswordHistory
    @abstract   Policy attribute for the list of previous password hashes
    @discussion Policy attribute for the list of previous password hashes.  The
		value of this attribute is a CFArray containing one or more
		CFData elements representing a hash of a previous password.
		Hash types may be mixed.

		Used in Password Content policy strings to compare the new
		password against the password history, for example:
                    [NSString stringWithFormat:@"none %@ in %@", kODPolicyAttributePasswordHashes, kODPolicyAttributePasswordHistory];
*/
@available(OSX 10.10, *)
let kODPolicyAttributePasswordHistory: String

/*!
    @const      kODPolicyAttributePasswordHistoryDepth
    @abstract   Policy attribute for the number of previous hashed passwords to keep.
    @discussion Policy attribute for the number of previous hashed passwords to
                keep.  Should used as a key in the policy parameter dictionary,
                with a CFNumber value, specifying the number of password to keep.
                Should not be used in a policy string. 
*/
@available(OSX 10.10, *)
let kODPolicyAttributePasswordHistoryDepth: String

/*!
    @const      kODPolicyAttributeCurrentDate
    @abstract   Policy attribute for the current date and time as a CFDate.
    @discussion Policy attribute for the current date and time as a CFDate used
                in policy strings to compare the current date against another
                date.  The following policy string would allow authentications
                until the expiration date: 
                    [NSString stringWithFormat:@"%@ < %@", kODPolicyAttributeCurrentDate, kODPolicyAttributeExpiresOnDate];

                Do not use kODPolicyAttributeCurrentDate in policies where date
                arithmetic is needed; for those policies use
                kODPolicyAttributeCurrentTime instead.
*/
@available(OSX 10.10, *)
let kODPolicyAttributeCurrentDate: String

/*!
    @const      kODPolicyAttributeCurrentTime
    @abstract   Policy attribute for the current date and time in seconds.
    @discussion Policy attribute for the current date and time in seconds since
                the Unix epoch.  Used in policy strings to compare the
                current time against other times.  Suitable for use in policies
                where "date arithmetic" is needed (i.e. adding/subtracting
                values to/from the current time or another time in seconds).
                Ensure all times and date arithmetic in the policy are specified
                in seconds.

                Note that kODPolicyAttributeExpiresEveryNDays needs to be
                converted to seconds to match the units of the other times.  The
                special keyword DAYS_TO_SECONDS can be used to accomplish this.

                In the policy below, password changes are required every 90 days
                (kODPolicyAttributeExpiresEveryNDays = 90).

                    [NSString stringWithFormat:@"%@ < %@ + (%@ * DAYS_TO_SECONDS)",
                              kODPolicyAttributeCurrentTime,
                              kODPolicyAttributeLastPasswordChangeTime,
                              kODPolicyAttributeExpiresEveryNDays];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeCurrentTime: String

/*!
    @const      kODPolicyAttributeCurrentTimeOfDay
    @abstract   Policy attribute for the current time of day as a CFNumber.
    @discussion Policy attribute for the current time of day as a CFNumber, in
                24 hour time, i.e. the range is 0000 through 2359.  Does not
                contain any date information.

                This attribute is used in policies to compare the current time
                of day against another time of day.  For example, to allow
                authentications between the hours of 8:00 AM and 5:00 PM, the
                policy string would be (kODPolicyAttributeEnableAtTimeOfDay is
                set to 0800 and  kODPolicyAttributeExpiresAtTimeOfDay is 1700):
                    [NSString stringWithFormat:@"%@ > %@ and %@ < %@",
                              kODPolicyAttributeCurrentTimeOfDay,
                              kODPolicyAttributeEnableAtTimeOfDay,
                              kODPolicyAttributeCurrentTimeOfDay,
                              kODPolicyAttributeExpiresAtTimeOfDay];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeCurrentTimeOfDay: String

/*!
    @const      kODPolicyAttributeCurrentDayOfWeek
    @abstract   Policy attribute for the current day of the week, as a CFNumber.
    @discussion Policy attribute for the current day of the week, as a CFNumber.  
                Specified in units appropriate for the local calendar.  The
                range is 1 through 7, with 1 representing the first day of the
                week in the local calendar, and 7 representing the last day of
                the week.

                This attribute is used in policies to compare the current day of
                the week against another day of the week.  For example, to
                enable authentications on Monday through Friday, the policy
                would be (kODPolicyAttributeEnableOnDayOfWeek is set to the
                number for Monday and kODPolicyAttributeExpiresOnDayOfWeek is
                set to the number for Friday):
                    [NSString stringWithFormat:@"%@ > %@ and %@ < %@",
                              kODPolicyAttributeCurrentDayOfWeek,
                              kODPolicyAttributeEnableOnDayOfWeek,
                              kODPolicyAttributeCurrentDayOfWeek,
                              kODPolicyAttributeExpiresOnDayOfWeek];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeCurrentDayOfWeek: String

/*!
    @const      kODPolicyAttributeFailedAuthentications
    @abstract   Policy attribute for the number of failed authentications.
    @discussion Policy attribute for the number of failed authentications for
                the record.  Used in policies to compare against the maximum
                failed authentications.  The following policy would deny further
                authentications after 3 failed attempts (assumes
                kODPolicyAttributeMaximumFailedAuthentications is 3):
                    [NSString stringWithFormat:@"%@ < %@",
                              kODPolicyAttributeFailedAuthentications,
                              kODPolicyAttributeMaximumFailedAuthentications];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeFailedAuthentications: String

/*!
    @const      kODPolicyAttributeMaximumFailedAuthentications
    @abstract   Policy attribute for the maximum failed authentication attempts.
    @discussion Policy attribute for the maximum failed authentication attempts.  
                Used as a key in policy parameter dictionary to specify the
                maximum allowable failed authentication attempts with a CFNumber
                value.  Also used in the policy string to compare against the
                number of failed authentication attempts.  This policy would
                disallow authentications after 3 failed attempts:
                    @{ kODPolicyKeyIdentifier  : @"maximum failed authentications",
                       kODPolicyKeyParameters  : @{ kODPolicyAttributeMaximumFailedAuthentications : @3 },
                       kODPolicyKeyContent     : [NSString stringWithFormat:@"%@ < %@",
                                                           kODPolicyAttributeFailedAuthentications,
                                                           kODPolicyAttributeMaximumFailedAuthentications] };
*/
@available(OSX 10.10, *)
let kODPolicyAttributeMaximumFailedAuthentications: String

/*!
    @const      kODPolicyAttributeLastFailedAuthenticationTime
    @abstract   Policy attribute for the time of the last failed auth attempt.
    @discussion Policy attribute for the time of the last failed auth attempt.
                CFNumber with a value representing the the number of seconds
                since the Unix epoch.  Used in policies to compare against other
                times.  As an example, this policy string would prevent another
                authentication within 10 seconds of a failed authentication:  
                    [NSString stringWithFormat:@"%@ > %@ + 10",
                              kODPolicyAttributeCurrentTime,
                              kODPolicyAttributeLastFailedAuthenticationTime];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeLastFailedAuthenticationTime: String

/*!
    @const      kODPolicyAttributeLastAuthenticationTime
    @abstract   Policy attribute for the time of the last successful auth attempt.
    @discussion Policy attribute for the time of the last successful auth attempt.
                CFNumber with a value representing the number of seconds since
                the Unix epoch.  Used in policies to compare against another
                time.  

                The sample policy string below would deny authentications if
                there have been no authentications in the last 90 days.

                Note that the number of days needs to be converted to seconds to
                match the units of kODPolicyAttributeCurrentTime.  The special
                keyword DAYS_TO_SECONDS can be used for the conversion.

                    [NSString stringWithFormat:@"%@ < %@ + 90 * DAYS_TO_SECONDS",
                              kODPolicyAttributeCurrentTime,
                              kODPolicyAttributeLastAuthenticationTime];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeLastAuthenticationTime: String

/*!
    @const      kODPolicyAttributeLastPasswordChangeTime
    @abstract   Policy attribute for time of the last password change.
    @discussion Policy attribute for time of the last password change.  The time
                is specified as the number of seconds since the Unix epoch.
                Used in policies to compare against other times.  Typically
                would be used in Password Change policies to expire a password
                at a certain time or interval.

                The policy string below requires a password change every 90 days
                (kODPolicyAttributeExpiresEveryNDays is set to 90).

                Note that kODPolicyAttributeExpiresEveryNDays needs to be
                converted to seconds to match the units of the other times.  The
                special keyword DAYS_TO_SECONDS can be used for the conversion.

                    [NSString stringWithFormat:@"%@ < %@ + %@ * DAYS_TO_SECONDS",
                              kODPolicyAttributeCurrentTime,
                              kODPolicyAttributeLastPasswordChangeTime,
                              kODPolicyAttributeExpiresEveryNDays];
*/
@available(OSX 10.10, *)
let kODPolicyAttributeLastPasswordChangeTime: String

/*!
    @const      kODPolicyAttributeNewPasswordRequiredTime
    @abstract   Policy attribute for the time when "new password required" was set.
    @discussion Policy attribute for the time when "new password required" was set.
                The time is specified as the number of seconds since the
                Unix epoch.

                This attribute may be used in the policy string.  Whenever it's
                used in the policy string, it must also be specified in the
                policy's parameter dictionary.

                This attribute is used to capture the time when the system
                administrator wants to force all users to change their
                passwords.  This would be a "one-time" change, i.e. once the
                user changed the password, the policy would apply.  The policy
                would have to be updated with a new time for
                kODPolicyAttributeNewPasswordRequiredTime in order to force a
                new round of password changes.

                For example:
                    @{ kODPolicyKeyIdentifier : @"change on next auth",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeNewPasswordRequiredTime : @(<time>) },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ < %@",
                                                          kODPolicyAttributeLastPasswordChangeTime,
                                                          kODPolicyAttributeNewPasswordRequiredTime]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeNewPasswordRequiredTime: String

/*!
    @const      kODPolicyAttributeCreationTime
    @abstract   Policy attribute for the record creation time.
    @discussion Policy attribute for the record creation time.  The time is
                specified as the number of seconds since the "reference date".
                Could be used to disable "temporary" accounts after a specific
                period of time.  

                The example below disables authentications after 10
                days after the account was created.

                Note that kODPolicyAttributeDaysUntilExpiration must be
                converted to seconds to match the units of the other times.  The
                special keyword DAYS_TO_SECONDS can be used for the conversion.

                    @{ kODPolicyKeyIdentifier : @"expires after 10 days",
                       kODPolicyKeyParameters : @{kODPolicyAttributeDaysUntilExpiration : @10 },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ < %@ + (%@ * DAYS_TO_SECONDS)",
                                                          kODPolicyAttributeCurrentTime,
                                                          kODPolicyAttributeCreationTime,
                                                          kODPolicyAttributeDaysUntilExpiration]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeCreationTime: String

/*!
    @const      kODPolicyAttributeExpiresEveryNDays
    @abstract   Policy attribute for expires every N days.
    @discussion Policy attribute for expires every N days.  This attribute is
                used as a key in the policy parameter dictionary, with CFNumber
                value.  Also used in the policy strings. Typically would be used
                in Password Change policies to expire a password at a certain
                time or interval. 

                The example policy below would require a password change every
                90 days.

                Note that kODPolicyAttributeExpiresEveryNDays needs to be
                converted to seconds to match the units of the other times used
                in the policy.  The special keyword DAYS_TO_SECONDS can be used
                for the conversion.

                    @{ kODPolicyKeyIdentifier : @"expires every 90 days",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeExpiresEveryNDays : @90 },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ < %@ + %@ * DAYS_TO_SECONDS",
                                                          kODPolicyAttributeCurrentTime,
                                                          kODPolicyAttributeLastPasswordChangeTime,
                                                          kODPolicyAttributeExpiresEveryNDays]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeExpiresEveryNDays: String

/*!
    @const      kODPolicyAttributeEnableOnDate
    @abstract   Policy attribute for the "enable on" date.
    @discussion Policy attribute for the "enable on" date.  Used as a key in the
                policy parameter dictionary, with a CFDate value.   Also used in
                policy strings. The date is specified as a CFDate representing a
                fixed date, appropriate for the locale.  Use in policies when
                comparing other date-based attributes.

                This attribute is typically used Authentication policies to
                control when authentications are allowed. This policy would
                enable authentications on Jan 1, 2014 (assumes the date
                formatter is properly configured for the locale): 
                    @{ kODPolicyKeyIdentifier : @"enable on Jan 1",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeEnableOnDate : [localFormatter dateWithString:@"01/01/2014"] },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ >= %@",
                                                          kODPolicyAttributeCurrentDate,
                                                          kODPolicyAttributeEnableOnDate]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeEnableOnDate: String

/*!
    @const      kODPolicyAttributeExpiresOnDate
    @abstract   Policy attribute for the "expires on" date.
    @discussion Policy attribute for the "expires on" date.  Used as a key in the
                policy parameter dictionary, with a CFDate value.   Also used in
                policy strings. The date is specified as a CFDate representing a
                fixed date, appropriate for the locale.  Use in policies when
                comparing other date-based attributes.

                This attribute is typically used in Authentication policies to
                control when authentications are allowed. This policy would
                disallow authentications on Jan 1, 2014 (assumes the date
                formatter is properly configured for the locale): 
                    @{ kODPolicyKeyIdentifier : @"expires on Jan 1",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeExpiresOnDate : [localFormatter dateWithString:@"01/01/2014"] },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ < %@",
                                                          kODPolicyAttributeCurrentDate,
                                                          kODPolicyAttributeExpiresOnDate]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeExpiresOnDate: String

/*!
    @const      kODPolicyAttributeEnableOnDayOfWeek
    @abstract   Policy attribute for enable on a day of the week.
    @discussion Policy attribute for enable on a day of the week.  Specified as a
                in units appropriate for the local calendar.  The range is 1
                through 7, with 1 representing the first day of the week in the
                local calendar, and 7 representing the last day of the week. 

                This attribute is used as a key in the policy parameter
                dictionary, with a CFNumber value, and in policy strings.
                Typically used i policy strings to compare against the another
                day of the week.  For example, to allow authentications only on
                Monday through Friday, the policy would be (assumes Monday = 2
                and Friday = 6 in the local calendar): 
                    @{ kODPolicyKeyIdentifier : @"mon-fri only",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeEnableOnDayOfWeek : @2,
                                                   kODPolicyAttributeExpiresOnDayOfWeek : @6 },
                       kOPolicyKeyPolicy      : [NSString stringWithFormat:@"%@ > %@ and %@ < %@",
                                                          kODPolicyAttributeCurrentDayOfWeek,
                                                          kODPolicyAttributeEnableOnDayOfWeek,
                                                          kODPolicyAttributeCurrentDayOfWeek,
                                                          kODPolicyAttributeExpiresOnDayOfWeek]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeEnableOnDayOfWeek: String

/*!
    @const      kODPolicyAttributeExpiresOnDayOfWeek
    @abstract   Policy attribute for expires on a day of the week.
    @discussion Policy attribute for expires on a day of the week.  Specified as a
                in units appropriate for the local calendar.  The range is 1
                through 7, with 1 representing the first day of the week in the
                local calendar, and 7 representing the last day of the week. 

                This attribute is used as a key in the policy parameter
                dictionary, with a CFNumber value, and in policy strings.
                Typically used i policy strings to compare against the another
                day of the week.  See the example above for kODPolicyAttributeEnableOnDayOfWeek.
*/
@available(OSX 10.10, *)
let kODPolicyAttributeExpiresOnDayOfWeek: String

/*!
    @const      kODPolicyAttributeEnableAtTimeOfDay
    @abstract   Policy attribute for enable at a specific time of day.
    @discussion Policy attribute for enable at a specific time of day.
                The time is specified in 24-hour time, with a range of 0000
                through 2359.  This attribute can be used as a key in the policy
                parameter dictionary, with a CFNumber value, and in the policy
                strings. 

                Typically used in authentication policies to control specific
                times of when when authentications are allowed.  For example, to
                enable authentications between the hours of 8:00 AM and 5:00 PM,
                the policy would be: 
                    @{ kODPolicyKeyIdentifier : @"school hours",
                       kODPolicyKeyParameters : @{ kODPolicyAttributeEnableAtTimeOfDay  : @800,
                                                   kODPolicyAttributeExpiresAtTimeOfDay : @1700 },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ > %@ and %@ < %@",
                                                          kODPolicyAttributeCurrentTimeOfDay,
                                                          kODPolicyAttributeEnableAtTimeOfDay,
                                                          kODPolicyAttributeCurrentTimeOfDay,
                                                          kODPolicyAttributeExpiresAtTimeOfDay]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeEnableAtTimeOfDay: String

/*!
    @const      kODPolicyAttributeExpiresAtTimeOfDay
    @abstract   Policy attribute for expires at a specific time of day.
    @discussion Policy attribute for expires at a specific time of day.
                The time is specified in 24-hour time, with a range of 0000
                through 2359.  This attribute can be used as a key in the policy
                parameter dictionary, with a CFNumber value, and in the policy
                strings. 

                Typically used in authentication policies to control specific
                times of when when authentications are allowed.  See the example
                above for kODPolicyAttributeEnableAtTimeOfDay.
*/
@available(OSX 10.10, *)
let kODPolicyAttributeExpiresAtTimeOfDay: String

/*!
    @const      kODPolicyAttributeDaysUntilExpiration
    @abstract   Policy attribute for the number of days until expiration.
    @discussion Policy attribute for the number of days until expiration.
                This attribute can be used as a key in the policy parameter
                dictionary with a CFNumber value representing some number of
                days.  It can also be used in the policy strings. 

                May be used in Authentication policies to expire authentications
                after some number of days or in Password Change policies to
                expire passwords.

                The example below disables authentications after 10
                days after the account was created.

                Note that kODPolicyAttributeDaysUntilExpiration must be
                converted to seconds to match the units of the other times.  The
                special keyword DAYS_TO_SECONDS can be used for the conversion.

                    @{ kODPolicyKeyIdentifier : @"expires after 10 days",
                       kODPolicyKeyParameters : @{kODPolicyAttributeDaysUntilExpiration : @10 },
                       kODPolicyKeyContent    : [NSString stringWithFormat:@"%@ < %@ + (%@ * DAYS_TO_SECONDS)",
                                                          kODPolicyAttributeCurrentTime,
                                                          kODPolicyAttributeCreationTime,
                                                          kODPolicyAttributeDaysUntilExpiration]};
*/
@available(OSX 10.10, *)
let kODPolicyAttributeDaysUntilExpiration: String

/*!
 @enum   	ODFrameworkErrors
 @abstract   Errors specific to the framework and to underlying calls
 @discussion Errors specific to the framework and to underlying calls
 @constant kODErrorSuccess is when operation was successful (if appropriate)
 @constant kODErrorSessionLocalOnlyDaemonInUse is when a Local Only session was initiated and is still active
 @constant kODErrorSessionNormalDaemonInUse is when the Normal daemon is still in use but request was issued for Local only
 @constant kODErrorSessionDaemonNotRunning is when the daemon is not running
 @constant kODErrorSessionDaemonRefused is when the daemon refused the session
 @constant kODErrorSessionProxyCommunicationError is when there was a communication error with the remote daemon
 @constant kODErrorSessionProxyVersionMismatch is when versions mismatch between the remote daemon and local framework
 @constant kODErrorSessionProxyIPUnreachable is when the provided kODSessionProxyAddress did not respond
 @constant kODErrorSessionProxyUnknownHost is when the provided kODSessionProxyAddress cannot be resolved
 @constant kODErrorNodeUnknownName is when the node name provided does not exist and cannot be opened
 @constant kODErrorNodeUnknownType is when the node type provided is not a known value
 @constant kODErrorNodeConnectionFailed is when a node connection failed (commonly server closed connection, etc.)
 @constant kODErrorNodeUnknownHost is when an invalid host is provided
 @constant kODErrorQuerySynchronize is an error code that is returned when a synchronize has been initiated
 @constant kODErrorQueryInvalidMatchType is when an invalid match type is provided in a query
 @constant kODErrorQueryUnsupportedMatchType is when plugin does not support the requirested match type
 @constant kODErrorQueryTimeout is when a query timed out during request
 @constant kODErrorRecordReadOnlyNode is when a record cannot be modified
 @constant kODErrorRecordPermissionError is when the changes requested were denied due to insufficient permissions
 @constant kODErrorRecordParameterError is when an invalid parameter was provided
 @constant kODErrorRecordInvalidType is when an invalid record type was provided
 @constant kODErrorRecordAlreadyExists is when a record create failed because the record already exists
 @constant kODErrorRecordTypeDisabled is when a particular record type is disabled by policy for a plugin
 @constant kODErrorRecordAttributeUnknownType is when an unknown attribute type is provided
 @constant kODErrorRecordAttributeNotFound is when an attribute requested is not found in the record
 @constant kODErrorRecordAttributeValueSchemaError is when an attribute value does not meet schema requirements
 @constant kODErrorRecordAttributeValueNotFound is when an attribute value is not found in a record
 @constant kODErrorCredentialsInvalid is when credentials provided are invalid with the current node
 @constant kODErrorCredentialsMethodNotSupported is when a particular extended method is not supported by the node
 @constant kODErrorCredentialsNotAuthorized is when an operation such as changing a password is not authorized with current privileges
 @constant kODErrorCredentialsParameterError is when a parameter provided is invalid
 @constant kODErrorCredentialsOperationFailed is when the requested operation failed (usually due to some unrecoverable error)
 @constant kODErrorCredentialsServerUnreachable is when the authententication server is not reachabable
 @constant kODErrorCredentialsServerNotFound is when the authentication server could not be found for the operation requested
 @constant kODErrorCredentialsServerError is when the authentication server encountered an error
 @constant kODErrorCredentialsServerTimeout is when the authentication server timed out
 @constant kODErrorCredentialsContactMaster is when the authentication server is not the master and the operation requires the master
 @constant kODErrorCredentialsServerCommunicationError is when the authentication server had a communications error
 @constant kODErrorCredentialsAccountNotFound is when the authentication server could not find the account provided
 @constant kODErrorCredentialsAccountDisabled is when the account is disabled
 @constant kODErrorCredentialsAccountExpired is when the account is expired
 @constant kODErrorCredentialsAccountInactive is when the account is inactive
 @constant kODErrorCredentialsPasswordExpired is when the password has expired and must be changed
 @constant kODErrorCredentialsPasswordChangeRequired is when a password change is required
 @constant kODErrorCredentialsPasswordQualityFailed is when a password provided for change did not meet quality minimum requirements
 @constant kODErrorCredentialsPasswordTooShort is when a password provided is too short
 @constant kODErrorCredentialsPasswordTooLong is when a password provided is too long
 @constant kODErrorCredentialsPasswordNeedsLetter is when a password needs a letter
 @constant kODErrorCredentialsPasswordNeedsDigit is when a password needs a digit
 @constant kODErrorCredentialsPasswordChangeTooSoon is when a an attempt to change a password too soon before last change
 @constant kODErrorCredentialsPasswordUnrecoverable is when password was not recoverable from the authentication database
 @constant kODErrorCredentialsInvalidLogonHours is when an account attempts to login outside of set logon hours
 @constant kODErrorCredentialsInvalidComputer is when an account attempts to login to a computer they are not authorized
 @constant kODErrorPolicyUnsupported all requested policies were not supported
 @constant kODErrorPolicyOutOfRange policy value was beyond the allowed range
 @constant kODErrorPluginOperationNotSupported is when a plugin does not support the requested operation
 @constant kODErrorPluginError is when a plugin has encountered some undefined error
 @constant kODErrorDaemonError is when some error occurred inside the daemon
 @constant kODErrorPluginOperationTimeout is when an operation exceeds an imposed timeout
*/
struct ODFrameworkErrors : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kODErrorSuccess: ODFrameworkErrors { get }
var kODErrorSessionLocalOnlyDaemonInUse: ODFrameworkErrors { get }
var kODErrorSessionNormalDaemonInUse: ODFrameworkErrors { get }
var kODErrorSessionDaemonNotRunning: ODFrameworkErrors { get }
var kODErrorSessionDaemonRefused: ODFrameworkErrors { get }
var kODErrorSessionProxyCommunicationError: ODFrameworkErrors { get }
var kODErrorSessionProxyVersionMismatch: ODFrameworkErrors { get }
var kODErrorSessionProxyIPUnreachable: ODFrameworkErrors { get }
var kODErrorSessionProxyUnknownHost: ODFrameworkErrors { get }
var kODErrorNodeUnknownName: ODFrameworkErrors { get }
var kODErrorNodeUnknownType: ODFrameworkErrors { get }
var kODErrorNodeDisabled: ODFrameworkErrors { get }
var kODErrorNodeConnectionFailed: ODFrameworkErrors { get }
var kODErrorNodeUnknownHost: ODFrameworkErrors { get }
var kODErrorQuerySynchronize: ODFrameworkErrors { get }
var kODErrorQueryInvalidMatchType: ODFrameworkErrors { get }
var kODErrorQueryUnsupportedMatchType: ODFrameworkErrors { get }
var kODErrorQueryTimeout: ODFrameworkErrors { get }
var kODErrorRecordReadOnlyNode: ODFrameworkErrors { get }
var kODErrorRecordPermissionError: ODFrameworkErrors { get }
var kODErrorRecordParameterError: ODFrameworkErrors { get }
var kODErrorRecordInvalidType: ODFrameworkErrors { get }
var kODErrorRecordAlreadyExists: ODFrameworkErrors { get }
var kODErrorRecordTypeDisabled: ODFrameworkErrors { get }
var kODErrorRecordNoLongerExists: ODFrameworkErrors { get }
var kODErrorRecordAttributeUnknownType: ODFrameworkErrors { get }
var kODErrorRecordAttributeNotFound: ODFrameworkErrors { get }
var kODErrorRecordAttributeValueSchemaError: ODFrameworkErrors { get }
var kODErrorRecordAttributeValueNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsInvalid: ODFrameworkErrors { get }
var kODErrorCredentialsMethodNotSupported: ODFrameworkErrors { get }
var kODErrorCredentialsNotAuthorized: ODFrameworkErrors { get }
var kODErrorCredentialsParameterError: ODFrameworkErrors { get }
var kODErrorCredentialsOperationFailed: ODFrameworkErrors { get }
var kODErrorCredentialsServerUnreachable: ODFrameworkErrors { get }
var kODErrorCredentialsServerNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsServerError: ODFrameworkErrors { get }
var kODErrorCredentialsServerTimeout: ODFrameworkErrors { get }
var kODErrorCredentialsContactMaster: ODFrameworkErrors { get }
var kODErrorCredentialsServerCommunicationError: ODFrameworkErrors { get }
var kODErrorCredentialsAccountNotFound: ODFrameworkErrors { get }
var kODErrorCredentialsAccountDisabled: ODFrameworkErrors { get }
var kODErrorCredentialsAccountExpired: ODFrameworkErrors { get }
var kODErrorCredentialsAccountInactive: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordExpired: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordChangeRequired: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordQualityFailed: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordTooShort: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordTooLong: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordNeedsLetter: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordNeedsDigit: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordChangeTooSoon: ODFrameworkErrors { get }
var kODErrorCredentialsPasswordUnrecoverable: ODFrameworkErrors { get }
var kODErrorCredentialsInvalidLogonHours: ODFrameworkErrors { get }
var kODErrorCredentialsInvalidComputer: ODFrameworkErrors { get }
var kODErrorPolicyUnsupported: ODFrameworkErrors { get }
var kODErrorPolicyOutOfRange: ODFrameworkErrors { get }
var kODErrorPluginOperationNotSupported: ODFrameworkErrors { get }
var kODErrorPluginError: ODFrameworkErrors { get }
var kODErrorDaemonError: ODFrameworkErrors { get }
var kODErrorPluginOperationTimeout: ODFrameworkErrors { get }
@available(OSX 10.9, *)
class ODAttributeMap : NSObject {
  @available(OSX 10.9, *)
  var customQueryFunction: String!
  @available(OSX 10.9, *)
  var customTranslationFunction: String!
  @available(OSX 10.9, *)
  var customAttributes: [AnyObject]!
  @available(OSX 10.9, *)
  var value: String!

  /*!
   * @method attributeMapWithValue:
   *
   * @abstract
   * Returns an initialized and autoreleased ODAttributeMap object with the given value mapped.
   *
   * @discussion
   * Returns an initialized and autoreleased ODAttributeMap object with the given value mapped.
   */
  convenience init!(value: String!)

  /*!
   * @method attributeMapWithStaticValue:
   *
   * @abstract
   * Returns an initialized and autoreleased ODAttributeMap object with the given static value.
   *
   * @discussion
   * Returns an initialized and autoreleased ODAttributeMap object with the given static value.
   */
  convenience init!(staticValue: String!)

  /*!
   * @method setStaticValue:
   *
   * @abstract
   * Sets a static value that will always be returned for this mapping.
   *
   * @discussion
   * Sets a static value that will always be returned for this mapping, i.e., "20".
   */
  @available(OSX 10.9, *)
  func setStaticValue(staticValue: String!)

  /*!
   * @method setVariableSubstitution:
   *
   * @abstract
   * Sets a variable substitution-based value.
   *
   * @discussion
   * Value should be using the syntax '$native$' for all substited values.  For example,
   * to form a home directory using the "cn" of an LDAP record, substitution could be done
   * with "/home/$cn$".
   */
  @available(OSX 10.9, *)
  func setVariableSubstitution(variableSubstitution: String!)
  init()
}
var ODPacketSigningDisabled: Int { get }
var ODPacketSigningAllow: Int { get }
var ODPacketSigningRequired: Int { get }
var ODPacketEncryptionDisabled: Int { get }
var ODPacketEncryptionAllow: Int { get }
var ODPacketEncryptionRequired: Int { get }
var ODPacketEncryptionSSL: Int { get }
@available(OSX 10.9, *)
let ODTrustTypeJoined: String
@available(OSX 10.9, *)
let ODTrustTypeUsingCredentials: String
@available(OSX 10.9, *)
let ODTrustTypeAnonymous: String
@available(OSX 10.9, *)
class ODConfiguration : NSObject {
  @available(OSX 10.9, *)
  var nodeName: String!
  @available(OSX 10.9, *)
  var comment: String!
  @available(OSX 10.9, *)
  var defaultMappings: ODMappings!
  @available(OSX 10.9, *)
  var templateName: String!
  @available(OSX 10.9, *)
  var virtualSubnodes: [AnyObject]!
  @available(OSX 10.9, *)
  var hideRegistration: Bool
  @available(OSX 10.9, *)
  var preferredDestinationHostName: String!
  @available(OSX 10.9, *)
  var preferredDestinationHostPort: UInt16
  @available(OSX 10.9, *)
  var trustAccount: String! { get }
  @available(OSX 10.9, *)
  var trustMetaAccount: String! { get }
  @available(OSX 10.9, *)
  var trustKerberosPrincipal: String! { get }
  @available(OSX 10.9, *)
  var trustType: String! { get }
  @available(OSX 10.9, *)
  var trustUsesMutualAuthentication: Bool { get }
  @available(OSX 10.9, *)
  var trustUsesKerberosKeytab: Bool { get }
  @available(OSX 10.9, *)
  var trustUsesSystemKeychain: Bool { get }
  @available(OSX 10.9, *)
  var packetSigning: Int
  @available(OSX 10.9, *)
  var packetEncryption: Int
  @available(OSX 10.9, *)
  var manInTheMiddleProtection: Bool
  @available(OSX 10.9, *)
  var queryTimeoutInSeconds: Int
  @available(OSX 10.9, *)
  var connectionSetupTimeoutInSeconds: Int
  @available(OSX 10.9, *)
  var connectionIdleTimeoutInSeconds: Int
  @available(OSX 10.9, *)
  var defaultModuleEntries: [AnyObject]!
  @available(OSX 10.9, *)
  var authenticationModuleEntries: [AnyObject]!
  @available(OSX 10.9, *)
  var discoveryModuleEntries: [AnyObject]!
  @available(OSX 10.9, *)
  var generalModuleEntries: [AnyObject]!

  /*!
   * @method suggestedTrustAccount:
   *
   * @abstract
   * Returns a suggested name to use for the trust account.
   *
   * @discussion
   * Returns a suggested name to use for a trust account.  This name will be derived from the hostname
   * (if provided), otherwise it will be derived from the local hostname removing special characters
   * that may not be allowed by many systems.
   */
  @available(OSX 10.9, *)
  class func suggestedTrustAccount(hostname: String!) -> String!

  /*!
   * @method suggestedTrustPassword:
   *
   * @abstract
   * Returns a suggested password to be used for trust account with the requested length.
   *
   * @discussion
   * Returns a suggested password to be used for trust account with the requested length.
   */
  @available(OSX 10.9, *)
  class func suggestedTrustPassword(length: Int) -> String!

  /*!
   * @method addTrustType:trustAccount:trustPassword:username:password:joinExisting:error:
   *
   * @abstract
   * Adds a trust account with the provided name and password using the credentials provided by the user.
   *
   * @discussion
   * Adds a trust account with the provided name and password using the credentials provided by the user.  User can
   * request that the trust be forcibly created (replacing existing trust if found in directory).  A trust should be
   * established only after enough configuration is available and the configuration been saved.  If the trust is
   * required, then the configuration can be deleted if necessary upon failure.
   */
  @available(OSX 10.9, *)
  func addTrustType(trustType: String!, trustAccount account: String!, trustPassword accountPassword: String!, username: String!, password: String!, joinExisting join: Bool) throws

  /*!
   * @method removeTrustUsingUsername:password:deleteTrustAccount:error:
   *
   * @abstract
   * Removes trust using the provided username and password.
   *
   * @discussion
   * Removes trust using the provided username and password.  The trust account will be removed from the directory only if requested.
   */
  @available(OSX 10.9, *)
  func removeTrustUsingUsername(username: String!, password: String!, deleteTrustAccount deleteAccount: Bool) throws
  init()
}
@available(OSX 10.9, *)
class ODMappings : NSObject {
  @available(OSX 10.9, *)
  var comment: String!
  @available(OSX 10.9, *)
  var templateName: String!
  @available(OSX 10.9, *)
  var identifier: String!
  @available(OSX 10.9, *)
  var recordTypes: [AnyObject]! { get }
  @available(OSX 10.9, *)
  var function: String!
  @available(OSX 10.9, *)
  var functionAttributes: [AnyObject]!

  /*!
   * @method recordType:
   *
   * @abstract
   * Returns an ODRecordMap associated with the provided recordtype.
   *
   * @discussion
   * Returns an ODRecordMap associated with the provided recordtype.
   */
  @available(OSX 10.9, *)
  func recordMapForStandardRecordType(stdType: String!) -> ODRecordMap!

  /*!
   * @method setRecordMap:forRecordType:
   *
   * @abstract
   * Sets a particular ODRecordMap for a given standard record type.
   *
   * @discussion
   * Sets a particular ODRecordMap for a given standard record type.
   */
  @available(OSX 10.9, *)
  func setRecordMap(map: ODRecordMap!, forStandardRecordType stdType: String!)
  init()
}
@available(OSX 10.9, *)
class ODModuleEntry : NSObject {
  @available(OSX 10.9, *)
  var mappings: ODMappings!
  @available(OSX 10.9, *)
  var supportedOptions: [AnyObject]! { get }
  @available(OSX 10.9, *)
  var name: String!
  @available(OSX 10.9, *)
  var xpcServiceName: String!
  @available(OSX 10.9, *)
  var uuidString: String!

  /*!
   * @method moduleEntryWithName:xpcServiceName:
   *
   * @abstract
   * Creates a new module entry with a given name and service.
   *
   * @discussion
   * Creates a new module entry with a given name and service.
   */
  @available(OSX 10.9, *)
  convenience init!(name: String!, xpcServiceName: String!)

  /*!
   * @method setOption:value:
   *
   * @abstract
   * Assigns a particular option for this module.
   *
   * @discussion
   * Options are dictated by the module and can be queried via [module supportedOptions].
   */
  @available(OSX 10.9, *)
  func setOption(optionName: String!, value: AnyObject!)

  /*!
   * @method option:
   *
   * @abstract
   * Fetches the current setting for the requested option.
   *
   * @discussion
   * Fetches the current setting for the requested option.
   */
  @available(OSX 10.9, *)
  func option(optionName: String!) -> AnyObject!
  init()
}

/*!
    @class       ODNode
    @abstract    This class is used to work with OpenDirectory nodes.
    @discussion  OpenDirectory uses nodes to represent different sources of directory information, via the local disk, LDAP, etc.
*/
class ODNode : NSObject {

  /*!
      @method     initWithSession:type:error:
      @abstract   Initialize an ODNode instance of the given type, optionally in a specific session.
      @discussion initialize instance of an ODNode with a provided ODSession and ODNodeType.  outError is 
                  optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  init(session inSession: ODSession!, type inType: ODNodeType) throws

  /*!
      @method     initWithSession:name:error:
      @abstract   Initialize an ODNode instance with the given name, optionally in a specific session.
      @discussion initialize instance of an ODNode with a provided ODSession and node name.  outError is optional
                  parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  init(session inSession: ODSession!, name inName: String!) throws

  /*!
      @method     subnodeNamesAndReturnError:
      @abstract   Returns NSArray of node names for this node, which may contain sub-nodes or search policy nodes
      @discussion Returns NSArray of node names for this node, which may contain sub-nodes or search policy nodes.
                  Commonly used with Search policy nodes.  outError is optional parameter, nil can be passed if error
                  details are not needed.
  */
  @available(OSX 10.6, *)
  func subnodeNames() throws -> [AnyObject]

  /*!
      @method     unreachableSubnodeNamesAndReturnError:
      @abstract   Will return NSArray of names of subnodes that are not currently reachable.
      @discussion Will return NSArray of names of subnodes that are not currently reachable.  Commonly used with Search policy 
                  nodes to determine if any nodes are currently unreachable, but may also return other subnodes if the
                  OpenDirectory plugin supports.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func unreachableSubnodeNames() throws -> [AnyObject]

  /*!
      @property   nodeName
      @abstract   The node name.
      @discussion The node name, corresponding to its path in OpenDirectory.
  */
  @available(OSX 10.6, *)
  var nodeName: String! { get }

  /*!
      @method     nodeDetails:error:
      @abstract   Returns a dictionary of information about the instance of ODNode
      @discussion Returns a dictionary of information about the instance of ODNode.  Details such as Trust information
                  (kODAttributeTypeTrustInformation) or other Node details can be retrieved.  outError is optional parameter,
                  nil can be passed if error details are not needed.
                  
  */
  @available(OSX 10.6, *)
  func nodeDetailsForKeys(inKeys: [AnyObject]!) throws -> [NSObject : AnyObject]

  /*!
      @method     supportedRecordTypesAndReturnError:
      @abstract   Returns a NSArray of the record types supported by this node.
      @discussion Returns a NSArray of the record types supported by this node.  If node does not support the check
                  then all possible types will be returned.  outError is optional parameter, nil can be passed if error details
                  are not needed.
  */
  @available(OSX 10.6, *)
  func supportedRecordTypes() throws -> [AnyObject]

  /*!
      @method     supportedAttributesForRecordType:error:
      @abstract   Will return a list of attribute types supported for that attribute if possible
      @discussion Will return a list of attribute types supported for that attribute if possible.  If no specific
                  types are available, then all possible values will be returned instead.  outError is optional parameter,
                  nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func supportedAttributesForRecordType(inRecordType: String!) throws -> [AnyObject]

  /*!
      @method     setCredentialsWithRecordType:recordName:password:error:
      @abstract   Sets the credentials for interaction with the ODNode
      @discussion Sets the credentials for interaction with the ODNode.  Record references, etc. will use these credentials
                  to query or change data.  Setting the credentials on a node referenced by other OD object types will
                  change the credentials for all for all references.  outError is optional parameter, nil can be passed if error
                  details are not needed.
  */
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(inRecordType: String!, recordName inRecordName: String!, password inPassword: String!) throws

  /*!
      @method     setCredentialsWithRecordType:authType:authItems:outAuthItems:context:error:
      @abstract   Allows use of other OpenDirectory types of authentications to set the credentials for an ODNode
      @discussion Allows the caller to use other types of authentications that are available in OpenDirectory, that may
                  require response-request loops, etc.  Not all OD plugins will support this call, look for 
                  kODErrorCredentialsMethodNotSupported in outError.  outError is optional parameter, nil can be passed if 
  				error details is not needed.
  */
  @available(OSX 10.6, *)
  func setCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws

  /*!
      @method     setCredentialsUsingKerberosCache:error:
      @abstract   Unsupported method.
      @discussion Unsupported method.
  */
  @available(OSX 10.6, *)
  func setCredentialsUsingKerberosCache(inCacheName: String!) throws

  /*!
      @method     createRecordWithRecordType:name:attributes:error:
      @abstract   Creates a record in this node, using the given name and attributes.
      @discussion Takes all the provided attributes and type to create an entire record.  The function will assign a
                  UUID to the record automatically.  This UUID can be overwritten by the client by passing with the
                  other attributes.  inAttributes is optional, nil can be passed if no other attributes are to be set.
  */
  @available(OSX 10.6, *)
  func createRecordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: [NSObject : AnyObject]! = [:]) throws -> ODRecord

  /*!
      @method     recordWithRecordType:name:attributes:error:
      @abstract   Returns an ODRecord object that references the requested type and name
      @discussion Returns an ODRecord object that references the requested type and name.  The record will have cached the
                  attributes requested.  Further attributes can be requested via ODRecord APIs.  For performance it is best
                  to ask for as many attributes that are needed as possible up front.
  */
  @available(OSX 10.6, *)
  func recordWithRecordType(inRecordType: String!, name inRecordName: String!, attributes inAttributes: AnyObject!) throws -> ODRecord

  /*!
      @method     customCall:sendData:error:
      @abstract   Sends a custom code to the node; input and output data formats are specific to the call.
      @discussion Sends a custom code to the node; input and output data formats are specific to the call.  outError is 
                  optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func customCall(inCustomCode: Int, send inSendData: NSData!) throws -> NSData

  /*!
      @method     customFunction:payload:error:
      @abstract   Sends a custom function call to the node; data is a type specific to the call.
      @discussion Sends a custom function call to the node; data is a type specific to the call.  'error' is an
                  optional parameter therefore nil can be passed if error details are not needed.  Return type is
  				defined by the custom function requested.
  */
  @available(OSX 10.9, *)
  func customFunction(function: String!, payload: AnyObject!) throws -> AnyObject

  /*!
   * @method configuration
   *
   * @abstract
   * Returns an ODConfiguration object for the node.
   *
   * @discussion
   * Returns an ODConfiguration object for the node.
   */
  var configuration: ODConfiguration! { get }

  /*!
      @method     policiesAndReturnError:
      @abstract   This will copy any policies configured for the node.
      @discussion This will copy any policies configured for the node.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use accountPoliciesAndReturnError:")
  func policies() throws -> [NSObject : AnyObject]

  /*!
      @function   supportedPoliciesAndReturnError:
      @abstract   This will return a dictionary of supported policies.
      @discussion This will return a dictionary of supported policies, if appropriate, the value will be the maximum value allowed
                  for the policy in question.  For example, if password history is available, it will state how much history is
                  supported.
  */
  @available(OSX, introduced=10.9, deprecated=10.10)
  func supportedPolicies() throws -> [NSObject : AnyObject]

  /*!
      @function   setPolicies:error:
      @abstract   This will set the policy for the node.
      @discussion This will set the policy for the node.  Policies are evaluated in combination with record-level policies.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use setAccountPolicies:error:")
  func setPolicies(policies: [NSObject : AnyObject]!) throws

  /*!
      @function   setPolicy:value:error:
      @abstract   This will set a specific policy setting for the node.
      @discussion This will set a specific policy setting for the node.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use addAccountPolicy:toCategory:error:")
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws

  /*!
      @function   removePolicy:value:error:
      @abstract   This will remove a specific policy setting from the node.
      @discussion This will remove a specific policy setting from the node.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use removeAccountPolicy:fromCategory:error:")
  func remove(policy: ODPolicyType!) throws

  /*!
      @method     addAccountPolicy:toCategory:error:
      @abstract   This will add an account policy to the node for the specified category.
      @discussion This will add an account policy to the node for the specified category.
                  The specified policy will be applied to all users in the
                  specified node when policies are evaluated.
      @param      policy a dictionary containing the specific policy to be added.
                  The dictionary may contain the following keys:
                      kODPolicyKeyIdentifier a required key identifying the policy.
                      kODPolicyKeyParameters an optional key containing a dictionary of
                          parameters that can be used for informational purposes or in
                          the policy format string.
                      kODPolicyKeyContent a required key specifying the policy,
                          from which a predicate will be created for evaluating
                          the policy.
      @param      category a valid ODPolicyCategoryType to which the specified policy will be added.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy addition succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws

  /*!
      @method     removeAccountPolicy:fromCategory:error:
      @abstract   This will remove an account policy from the node for the specified category.
      @discussion This will remove an account policy from the node for the specified category.
      @param      policy a dictionary containing the specific policy to be
                  removed, with the same format as described in addAccountPolicy.
      @param      category a valid ODPolicyCategoryType from which the specified policy will be removed.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy removal succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws

  /*!
      @method     setAccountPolicies:error:
      @abstract   This will set the policies for the node.
      @discussion This will set the policies for the node, replacing any existing
                  policies.  All of the policies in the set will be applied to all
                  users in the specified node when policies are evaluated.
      @param      policies a dictionary containing all of the policies to be set
                  for the node.  The dictionary may contain the following keys:
                      kODPolicyCategoryAuthentication an optional key with a value
                          of an array of policy dictionaries that specify when
                          authentications should be allowed.
                      kODPolicyCategoryPasswordContent an optional key with a
                          value of an array of policy dictionaries the specify the
                          required content of passwords. 
                      kODPolicyCategoryPasswordChange an optional key with a value
                      of an array of policy dictionaries that specify when
                      passwords are required to be changed.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy set succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws

  /*!
      @method     accountPoliciesAndReturnError:
      @abstract   Returns a dictionary containing any policies configured for the node.
      @discussion Returns a dictionary containing any policies configured for the node.
      @param      error an optional NSError reference for error details.
      @result     an NSDictionary containing all currently set policies.  The
                  format of the dictionary is the same as described in
                  setAccountPolicies.
  */
  @available(OSX 10.10, *)
  func accountPolicies() throws -> [NSObject : AnyObject]

  /*!
      @method     passwordContentCheck:forRecordName:error:
      @abstract   Validates a password against the node's password content policies.
      @discussion Validates a password against the node's password content policies.
                  The node's password content policies will be evaluated to
                  determine if the password is acceptable.  May be used prior to
                  creating the record.
  
                  This check is only definitive at the time it was requested. The
                  policy or the environment could change before the password change
                  is actually requested.  Errors from the password change request
                  should be consulted.
  
      @param      password the password to be evaluated against the content policies.
      @param      recordName the name of the record.
      @param      error an optional NSError reference for error details.
      @result     a bool which signifies if the password passes all content policies, otherwise error is set.
   */
  @available(OSX 10.10, *)
  func passwordContentCheck(password: String!, forRecordName recordName: String!) throws
  init()
}

/*!
    @protocol    ODQueryDelegate
    @abstract    The delegate method for receiving query results from the NSRunLoop-based queries
    @discussion  The delegate method called as results are returned from an NSRunLoop-based query.  These results are only partial
                 and delegate is called repeatedly as results are available.  The incoming result must be retained or copied.  The 
                 array will be released by the NSRunLoop upon return.  Incoming results do not include previous results,
                 only the most resent results are returned.  inResults can be nil if an error occurs or the query is complete.  If 
                 inResults and inError are nil then the query has completed.
*/
protocol ODQueryDelegate : NSObjectProtocol {
  @available(OSX 10.6, *)
  func query(inQuery: ODQuery!, foundResults inResults: [AnyObject]!, error inError: NSError!)
}

/*!
    @class       ODQuery
    @abstract    Class used for querying OpenDirectory.
    @discussion  OpenDirectory queries may be used to search for different types of records, e.g. users, groups.
*/
class ODQuery : NSObject, NSCopying {

  /*!
      @method     initWithNode:forRecordTypes:attribute:matchType:queryValues:returnAttributes:maximumResults:error:
      @abstract   Creates a query with the node using the parameters provided
      @discussion Creates a query with the node using the supplied query parameters.  Some parameters
                  can either be NSString or NSData or an NSArray of either NSString or NSData.  Passing nil for 
                  returnAttributes is equivalent to passing kODAttributeTypeStandardOnly. outError is optional parameter,
                  nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  init(node inNode: ODNode!, forRecordTypes inRecordTypeOrList: AnyObject!, attribute inAttribute: String!, matchType inMatchType: ODMatchType, queryValues inQueryValueOrList: AnyObject!, returnAttributes inReturnAttributeOrList: AnyObject!, maximumResults inMaximumResults: Int) throws

  /*!
      @method     resultsAllowingPartial:error:
      @abstract   Returns results from a provided ODQuery synchronously
      @discussion Returns results from a provided ODQuery synchronously.  Passing NO to inAllowPartialResults
                  will block the call until all results are returned or an error occurs.  YES can be passed at any time
                  even if previous calls were made with NO.  outError is optional parameter, nil can be passed if error 
                  details are not needed.
  */
  @available(OSX 10.6, *)
  func resultsAllowingPartial(inAllowPartialResults: Bool) throws -> [AnyObject]

  /*!
      @property   delegate
      @abstract   The currently set delegate
      @discussion The query delegate which will receive asynchronous query results.
  */
  @available(OSX 10.6, *)
  unowned(unsafe) var delegate: @sil_unmanaged ODQueryDelegate!

  /*!
      @method     scheduleInRunLoop:forMode:
      @abstract   Adds the query object to the specified NSRunLoop to receive asynchronous results
      @discussion Adds the query object to the specified NSRunLoop to receive asynchronous results.  A delegate must be set
                  in advance otherwise results may be lost due to the lack of a receiver.
  */
  @available(OSX 10.6, *)
  func scheduleIn(inRunLoop: NSRunLoop!, forMode inMode: String!)

  /*!
      @method     removeFromRunLoop:forMode:
      @abstract   Removes the query object from the specified NSRunLoop
      @discussion Removes the query object from the specified NSRunLoop.
  */
  @available(OSX 10.6, *)
  func removeFrom(inRunLoop: NSRunLoop!, forMode inMode: String!)

  /*!
      @method     synchronize
      @abstract   Will dispose of any results and restart the query.
      @discussion Will dispose of any results and restart the query for subsequent resultsAllowingPartial: calls.  If the query
                  is currently scheduled on a RunLoop, then the delegate will be called with inResults == nil and
                  [inError code] == kODErrorQuerySynchronize and [inError domain] == ODFrameworkErrorDomain, signifying that
                  all existing results should be thrown away in preparation for new results.
  */
  @available(OSX 10.6, *)
  func synchronize()

  /*!
      @property   operationQueue
      @abstract   The NSOperationQueue on which asynchronous results are delivered to the delegate.
      @discussion The NSOperationQueue on which asynchronous results are delivered to the delegate.
   */
  @available(OSX 10.6, *)
  var operationQueue: NSOperationQueue!
  init()
  func copy(zone zone: NSZone = nil) -> AnyObject
}

/*!
    @class       ODRecord
    @abstract    This class is used to read, update and modify records within the directory
    @discussion  This class is used to read, update and modify records within the directory.  outError is optional parameter,
                 nil can be passed if error details are not needed.
*/
class ODRecord : NSObject {

  /*!
      @method     setNodeCredentials:password:error:
      @abstract   Similar to calling -[ODNode setCredentials:] except credentials are only set for this particular
                  record's node
      @discussion Sets the credentials if necessary on the ODNode referenced by this ODRecord.  Very similar to
                  calling -[ODNode setCredentials:] except other records referencing the underlying node will not get
                  authenticated, therefore inadvertant changes cannot occur.  If all records referencing a particular 
                  node need to be updated, then use -[ODNode setCredentials:] on the original node instead.  If the
                  node is already authenticated with the same name and password, it will be a NOOP call.  The original
                  ODNode held by an ODRecord will be released when the credentials are changed for the connection
                  associated with the record.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func setNodeCredentials(inUsername: String!, password inPassword: String!) throws

  /*!
      @method     setNodeCredentialsWithRecordType:authenticationType:authenticationItems:continueItems:context:error:
      @abstract   Similar to calling -[ODNode setCredentialsWithRecordType:] except credentials are only set for this particular record's
                  node
      @discussion Allows the caller to use other types of authentications that are available in OpenDirectory, that may
                  require response-request loops, etc.  Not all OD plugins will support this call, look for 
                  kODErrorCredentialsMethodNotSupported in outError.  Same behavior as ODRecordSetNodeCredentials.  outError 
  				is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func setNodeCredentialsWithRecordType(inRecordType: String!, authenticationType inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws

  /*!
      @method     verifyPassword:error:
      @abstract   Verifies the password provided is valid for the record
      @discussion Verifies the password provided is valid for the record.  outError is optional parameter, nil can be passed if 
                  error details are not needed.
  */
  @available(OSX 10.6, *)
  func verifyPassword(inPassword: String!) throws

  /*!
      @method     verifyExtendedWithAuthenticationType:authenticationItems:continueItems:context:error:
      @abstract   Allows use of other OpenDirectory types of authentications
      @discussion Allows the caller to use other types of authentications that are available in OpenDirectory, that may 
                  require response-request loops, etc.  A bool with the result of the operation.  
                  If it fails, outError can be checked for more specific error.  Some ODNodes may not support the call
                  so an error code of kODErrorCredentialsMethodNotSupported may be returned.  outError is optional 
                  parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func verifyExtendedWithAuthenticationType(inType: String!, authenticationItems inItems: [AnyObject]!, continueItems outItems: AutoreleasingUnsafeMutablePointer<NSArray?>, context outContext: AutoreleasingUnsafeMutablePointer<AnyObject?>) throws

  /*!
      @method     changePassword:toPassword:error:
      @abstract   Changes the password for a record
      @discussion Changes the password for a record.  The oldPassword can be nil if password is being set assuming the appropriate
                  privileges are in place.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func changePassword(oldPassword: String!, toPassword newPassword: String!) throws

  /*!
      @method     synchronizeAndReturnError:
      @abstract   Synchronizes the record from the Directory in order to get current data and/or commit pending changes
      @discussion Synchronizes the record from the Directory in order to get current data.  Any previously fetched attributes
                  will be re-fetch from the Directory.  This will not re-fetch the entire record, unless the entire record
                  has been accessed.  Additionally, any changes made to the record will be committed to the directory,
                  if the node does not do immediate commits.  outError is optional parameter, nil can be passed if error details
                  are not needed.
  */
  @available(OSX 10.6, *)
  func synchronize() throws

  /*!
      @property   recordType
      @abstract   Type of the record.
      @discussion The record type.
  */
  @available(OSX 10.6, *)
  var recordType: String! { get }

  /*!
      @property   recordName
      @abstract   Name of the record.
      @discussion This is the official record name.
  */
  @available(OSX 10.6, *)
  var recordName: String! { get }

  /*!
      @method     recordDetailsForAttributes:error:
      @abstract   Returns the attributes and values in the form of a key-value pair set.
      @discussion Returns the attributes and values in the form of a key-value pair set for this record.  The key is a 
                  NSString of the attribute name (e.g., kODAttributeTypeRecordName, etc.) and the value is an NSArray
                  of either NSData or NSString depending on the type of data.  Binary data will be returned as NSData.
                  If nil is passed, then all currently retrieved attributes will be returned.  outError is optional parameter, 
                  nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func recordDetailsForAttributes(inAttributes: [AnyObject]!) throws -> [NSObject : AnyObject]

  /*!
      @method     valuesForAttribute:error:
      @abstract   Returns an NSArray of NSString or NSData values of the attribute
      @discussion Returns an NSArray of NSString or NSData depending on the type of data.  Binary data will be 
                  returned as NSData.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func valuesForAttribute(inAttribute: String!) throws -> [AnyObject]

  /*!
  	@method     setValue:forAttribute:error:
  	@abstract   Will take a mixture of NSData or NSString or an NSArray of either type when setting the values of an attribute
  	@discussion Will take a mixture of NSData or NSString or an NSArray of either type when setting the values of an attribute.
  				outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func setValue(inValueOrValues: AnyObject!, forAttribute inAttribute: String!) throws

  /*!
      @method     removeValuesForAttribute:error:
      @abstract   Removes all the values for an attribute.
      @discussion Removes all the values for an attribute.  outError is optional parameter, nil can be passed if 
                  error details are not needed.
  */
  @available(OSX 10.6, *)
  func removeValuesForAttribute(inAttribute: String!) throws

  /*!
      @method     addValue:toAttribute:error:
      @abstract   Will add a value to an attribute
      @discussion Will add a value to an attribute.  Should be either NSData or NSString type.  outError is optional 
                  parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func addValue(inValue: AnyObject!, toAttribute inAttribute: String!) throws

  /*!
      @method     removeValue:fromAttribute:error:
      @abstract   Will remove a value from an attribute
      @discussion Will remove a value from an attribute.  Should be either NSData or NSString type.  outError is optional 
                  parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func removeValue(inValue: AnyObject!, fromAttribute inAttribute: String!) throws

  /*!
      @method     deleteRecordAndReturnError:
      @abstract   Deletes the record from the node and invalidates the record.
      @discussion Deletes the record from the node and invalidates the record.  The ODRecord should be
                  released after deletion.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func deleteRecord() throws

  /*!
      @method     policiesAndReturnError:
      @abstract   This will copy any policies configured for the record.
      @discussion This will copy any policies configured for the record.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use accountPoliciesAndReturnError:")
  func policies() throws -> [NSObject : AnyObject]

  /*!
      @method     effectivePoliciesAndReturnError:
      @abstract   This will copy any policies configured for the record.
      @discussion This will copy any policies configured for the record.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use authenticationAllowedAndReturnError: and similar methods")
  func effectivePolicies() throws -> [NSObject : AnyObject]

  /*!
      @function   supportedPoliciesAndReturnError:
      @abstract   This will return a dictionary of supported policies.
      @discussion This will return a dictionary of supported policies, if appropriate, the value will be the maximum value allowed
                  for the policy in question.  For example, if password history is available, it will state how much history is
                  supported.
  */
  @available(OSX, introduced=10.9, deprecated=10.10)
  func supportedPolicies() throws -> [NSObject : AnyObject]

  /*!
      @function   setPolicies:error:
      @abstract   This will set the policy for the record.
      @discussion This will set the policy for the record.  Policies are evaluated in combination with node-level policies.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use setAccountPolicies:error:")
  func setPolicies(policies: [NSObject : AnyObject]!) throws

  /*!
      @function   setPolicy:value:error:
      @abstract   This will set a specific policy setting for the record.
      @discussion This will set a specific policy setting for the record.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use addAccountPolicy:toCategory:error:")
  func setPolicy(policy: ODPolicyType!, value: AnyObject!) throws

  /*!
      @function   removePolicy:error:
      @abstract   This will remove a specific policy setting from the record.
      @discussion This will remove a specific policy setting from the record.
  */
  @available(OSX, introduced=10.9, deprecated=10.10, message="use removeAccountPolicy:fromCategory:error:")
  func remove(policy: ODPolicyType!) throws

  /*!
      @method     addAccountPolicy:toCategory:error:
      @abstract   This will add a specific policy to the specific category for the record.
      @discussion This will add a specific policy to the specific category for the record.
                  The specified policy will be applied, in combination with any
                  node policies, to the specified record when policies are evaluated.
      @param      policy a dictionary containing the specific policy to be added.
                  The dictionary may contain the following keys:
                      kODPolicyKeyIdentifier a required key identifying the policy.
                      kODPolicyKeyParameters an optional key containing a dictionary of
                          parameters that can be used for informational purposes or in
                          the policy format string.
                      kODPolicyKeyContent a required key specifying the policy,
                          from which a predicate will be created for evaluating
                          the policy.
      @param      category a valid ODPolicyCategoryType to which the policy will be added.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy addition succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func addAccountPolicy(policy: [NSObject : AnyObject]!, toCategory category: String!) throws

  /*!
      @method     removeAccountPolicy:fromCategory:error:
      @abstract   This will remove a specific policy from the specific category for the record.
      @discussion This will remove a specific policy from the specific category for the record.
      @param      policy a dictionary containing the specific policy to be
                  removed, with the same format as described in addAccountPolicy.
      @param      category a valid ODPolicyCategoryType from which the policy will be removed.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy removal succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func removeAccountPolicy(policy: [NSObject : AnyObject]!, fromCategory category: String!) throws

  /*!
      @method     setAccountPolicies:error:
      @abstract   This will set the policies for the record.
      @discussion This will set the policies for the record, replacing any
                  existing policies.  All of the policies in the set will be
                  applied to the record when policies are evaluated.
      @param      policies a dictionary containing all of the policies to be set
                  for the node.  The dictionary may contain the following keys:
                      kODPolicyCategoryAuthentication an optional key with a value
                          of an array of policy dictionaries that specify when
                          authentications should be allowed.
                      kODPolicyCategoryPasswordContent an optional key with a
                          value of an array of policy dictionaries the specify the
                          required content of passwords. 
                      kODPolicyCategoryPasswordChange an optional key with a value
                          of an array of policy dictionaries that specify when
                          passwords are required to be changed.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the policy set succeeded, otherwise error is set.
  */
  @available(OSX 10.10, *)
  func setAccountPolicies(policies: [NSObject : AnyObject]!) throws

  /*!
      @method     accountPoliciesAndReturnError:
      @abstract   Returns a dictionary containing any policies configured for the record.
      @discussion Returns a dictionary containing any policies configured for the record.
                  Does not include any policies set for the node.
      @discussion Returns a dictionary containing any policies configured for the record.
      @param      error an optional NSError reference for error details.
      @result     a NSDictionary containing all currently set policies.  The
                  format of the dictionary is the same as described in
                  setAccountPolicies. 
  */
  @available(OSX 10.10, *)
  func accountPolicies() throws -> [NSObject : AnyObject]

  /*!
      @function   authenticationAllowedAndReturnError:
      @abstract   Determines if policies allow the account to authenticate.
      @discussion Determines if policies allow the account to authenticate.
                  Authentication and password change policies are evaluated.
                  Record-level and node-level policies are evaluated in
                  combination, with record-level taking precedence over node-level
                  policies.  The failure of any single policy will deny the
                  authentication.
   
                  This check is only definitive at the time it was requested. The
                  policy or the environment could change before the authentication
                  is actually requested.  Errors from the authentication request
                  should be consulted.
  
                  It is not necessary to call this function when calling
                  verifyPassword or verifyPasswordExtended since those methods
                  perform the same policy evaluation.
  
      @param      error an optional NSError reference for error details.
      @result     a bool which signifies if the authentication is allowed, otherwise error is set.
   */
  @available(OSX 10.10, *)
  func authenticationAllowed() throws

  /*!
      @method     passwordChangeAllowed:error:
      @abstract   Determines if policies allow the password change.
      @discussion Determines if policies allow the password change.  Password
                  content policies are evaluated. Record-level and node-level
                  policies are evaluated in combination, with record-level taking
                  precedence over node-level policies.  The failure of any single
                  policy will deny the password change.
  
                  This check is only definitive at the time it was requested. The
                  policy or the environment could change before the password change
                  is actually requested.  Errors from the password change request
                  should be consulted.
  
      @param      newPassword contains the password to be evaluated.
      @param      error an optional NSError reference for error details.
      @result     a BOOL which signifies if the password change is allowed, otherwise error is set.
   */
  @available(OSX 10.10, *)
  func passwordChangeAllowed(newPassword: String!) throws

  /*!
      @method     willPasswordExpire:
      @abstract   Determines if the password will expire within the specified time.
      @discussion Determines if the password will expire (i.e. need to be changed)
                  between now and the specified number of seconds in the future. 
                  Password change policies are evaluated.  Record-level and
                  node-level policies are evaluated in combination, with
                  record-level taking precedence over node-level policies.
      @param      willExpireIn the number of seconds from the current time to be
                  used as the upper-bound for the password expiration period.
      @result     a BOOL which signifies if the password will expire within the
                  specified time.
   */
  @available(OSX 10.10, *)
  func willPasswordExpire(willExpireIn: UInt64) -> Bool

  /*!
      @method     willAuthenticationsExpire:
      @abstract   Determines if authentications will expire within the specified time.
      @discussion Determines if authentications will expire (i.e. session and/or
                  account expires) between now and the specified number of seconds
                  in the future.  Authentication policies are evaluated.
                  Record-level and node-level policies are evaluated in
                  combination, with record-level taking precedence over node-level
                  policies. 
      @param      willExpireIn the number of seconds from the current time to be
                  used as the upper-bound for the authentication expiration period.
      @result     a BOOL which signifies if authentications will expire within the
                  specified time.
   */
  @available(OSX 10.10, *)
  func willAuthenticationsExpire(willExpireIn: UInt64) -> Bool

  /*!
      @method     secondsUntilPasswordExpires
      @abstract   Determines how many seconds until the password expires.
      @discussion Determines how many seconds until the password expires (i.e.
                  needs changing).  Password change policies are evaluated.
                  Record-level and node-level policies are evaluated in
                  combination, with record-level taking precedence over node-level
                  policies. 
      @result     the number of seconds until the password expires.  If multiple
                  policies will cause the password to expire, the soonest
                  expiration time is returned.  If already expired,
                  kODExpirationTimeExpired is returned.  If there are no password
                  change policies, kODExpirationTimeNeverExpires is returned. 
   */
  @available(OSX 10.10, *)
  var secondsUntilPasswordExpires: Int64 { get }

  /*!
      @method     secondsUntilAuthenticationsExpire
      @abstract   Determines how many seconds until authentications expire.
      @discussion Determines how many seconds until authentications expire (i.e.
                  session and/or account expires). Authentication policies are
                  evaluated.   Record-level and node-level policies are evaluated
                  in combination, with record-level taking precedence over
                  node-level policies.
      @result     the number of seconds until authentications expire.  If multiple
                  policies will cause authentications to expire, the soonest
                  expiration time is returned. If already expired,
                  kODExpirationTimeExpired is returned.  If there are no
                  authentication policies controlling expiration,
                  kODExpirationTimeNeverExpires is returned.  
   */
  @available(OSX 10.10, *)
  var secondsUntilAuthenticationsExpire: Int64 { get }
  init()
}

/*!
    @category    ODRecord (ODRecordGroupExtensions)
    @discussion  Record extensions for checking and modifying group membership.
*/
extension ODRecord {

  /*!
      @method     addMemberRecord:error:
      @abstract   Will add the record as a member of the group record
      @discussion Will add the record as a member of the group record.  An error will be returned if the record is not
                  a group record.  Additionally, if the member record is not an appropriate type allowed as part of a group
                  an error will be returned.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func addMemberRecord(inRecord: ODRecord!) throws

  /*!
      @method     removeMemberRecord:error:
      @abstract   Will remove the record as a member from the group record
      @discussion Will remove the record as a member from the group record. An error will be returned if the record is not
                  a group record.  Additionally, if the member record is not an appropriate type allowed as part of a group
                  an error will be returned.  outError is optional parameter, nil can be passed if error details are not needed.
  */
  @available(OSX 10.6, *)
  func removeMemberRecord(inRecord: ODRecord!) throws

  /*!
      @method     isMemberRecord:error:
      @abstract   Will use membership APIs to determine if inRecord is a member of the group
      @discussion Will use membership APIs to determine if inRecord is a member of the group.  If the receiving
                  object is not a group then NO will still be returned.  outError is optional parameter, nil can be passed if 
                  error details are not needed.
  */
  @available(OSX 10.6, *)
  func isMemberRecord(inRecord: ODRecord!) throws
}
@available(OSX 10.9, *)
class ODRecordMap : NSObject {
  @available(OSX 10.9, *)
  var native: String!
  @available(OSX 10.9, *)
  var odPredicate: [NSObject : AnyObject]!
  @available(OSX 10.9, *)
  var attributes: [NSObject : AnyObject]! { get }
  @available(OSX 10.9, *)
  var standardAttributeTypes: [AnyObject]! { get }

  /*!
   * @method attributeMapForStandardAttribute:
   *
   * @abstract
   * Returns an ODAttributeMap object for the given OD standard attribute.
   *
   * @discussion
   * Returns an ODAttributeMap object for the given OD standard attribute.
   */
  @available(OSX 10.9, *)
  func attributeMapForStandardAttribute(standardAttribute: String!) -> ODAttributeMap!

  /*!
   * @method setAttributeMap:forStandardAttribute:
   *
   * @abstract
   * Sets an ODAttributeMap object for a given OD standard attribute.
   *
   * @discussion
   * Sets an ODAttributeMap object for a given OD standard attribute.
   */
  @available(OSX 10.9, *)
  func setAttributeMap(attributeMap: ODAttributeMap!, forStandardAttribute standardAttribute: String!)
  init()
}

/*!
    @const      ODSessionProxyAddress
    @abstract   the address to connect to via proxy, used when making the options dictionary
    @discussion the address to connect to via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let ODSessionProxyAddress: String

/*!
    @const      ODSessionProxyPort
    @abstract   the port to connect to via proxy, used when making the options dictionary
    @discussion the port to connect to via proxy, used when making the options dictionary.  This parameter
                is optional and should not be passed normally.
*/
@available(OSX 10.6, *)
let ODSessionProxyPort: String

/*!
    @const      ODSessionProxyUsername
    @abstract   the username to connect with via proxy, used when making the options dictionary
    @discussion the username to connect with via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let ODSessionProxyUsername: String

/*!
    @const      ODSessionProxyPassword
    @abstract   the password to connect with via proxy, used when making the options dictionary
    @discussion the password to connect with via proxy, used when making the options dictionary
*/
@available(OSX 10.6, *)
let ODSessionProxyPassword: String

/*!
    @class       ODSession
    @abstract    Class for working with OpenDirectory sessions.
    @discussion  Class for working with OpenDirectory sessions.
*/
class ODSession : NSObject {

  /*!
      @method     defaultSession
      @abstract   Returns a shared instance of a local ODSession
      @discussion Returns a shared instance of a local ODSession.  This can be used for most situations unless
                  more control is needed over the session.
  */
  @available(OSX 10.6, *)
  class func defaultSession() -> ODSession!

  /*!
      @method     initWithOptions:error:
      @abstract   Creates an instance of ODSession directed over Proxy to another host
      @discussion Creates an instance of ODSession directed over Proxy to another host.  nil can be
                  passed for no options. outError is optional parameter, nil can be passed if error
                  details are not needed. Options include:
       
                  If proxy is required then a dictionary with keys should be:
                              Key                             Value
                      ODSessionProxyAddress        NSString(hostname or IP)
                      ODSessionProxyPort           NSNumber(IP port, should not be set as it will default)
                      ODSessionProxyUsername       NSString(username)
                      ODSessionProxyPassword       NSString(password)
  */
  @available(OSX 10.6, *)
  init(options inOptions: [NSObject : AnyObject]! = [:]) throws

  /*!
      @method     nodeNamesAndReturnError:
      @abstract   Returns the node names that are registered on this ODSession
      @discussion Returns the node names that are registered on this ODSession.  outError can be nil if
                  error details are not needed.
  */
  @available(OSX 10.6, *)
  func nodeNames() throws -> [AnyObject]

  /*!
   * @method configurationTemplateNames
   *
   * @abstract
   * Returns a list of names as NSStrings for all available configuration templates.
   *
   * @discussion
   * Returns a list of names as NSStrings for all available configuration templates.  Configuration templates
   * have pre-configured modules and/or mappings.  Useful for re-using existing configurations
   * that may change with operating system without changing the actual configuration.
   */
  @available(OSX 10.9, *)
  var configurationTemplateNames: [AnyObject]! { get }

  /*!
   * @method mappingTemplateNames
   *
   * @abstract
   * Returns a list names as NSStrings for all available mapping templates.
   *
   * @discussion
   * Returns a list names as NSStrings for all available mapping templates.  Mapping templates have pre-configured
   * record/attribute mappings.  Useful if a configuration uses a common layout of mappings for a type of server.
   */
  @available(OSX 10.9, *)
  var mappingTemplateNames: [AnyObject]! { get }

  /*!
   * @method configurationForNodename:
   *
   * @abstract
   * Reads the configuration for a given nodename.
   *
   * @discussion
   * Reads the configuration for a given nodename.
   */
  @available(OSX 10.9, *)
  func configurationForNodename(nodename: String!) -> ODConfiguration!
  init()
}
