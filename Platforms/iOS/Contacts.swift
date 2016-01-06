
@available(iOS 9.0, *)
enum CNContactType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Person
  case Organization
}

/*!
 * @abstract Sort order for contacts.
 *
 * @discussion CNContactSortOrderUserDefault is the user's preferred sort order.
 */
@available(iOS 9.0, *)
enum CNContactSortOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case UserDefault
  case GivenName
  case FamilyName
}

/*! This protocol is reserved for Contacts framework usage. */
protocol CNKeyDescriptor : NSObjectProtocol, NSSecureCoding, NSCopying {
}

/*! Allows contact property keys to be used with keysToFetch. */
extension NSString : CNKeyDescriptor {
}

/*!
 * @abstract An immutable value object representing a contact.
 *
 * @discussion CNContact is thread safe. 
 *
 * If using a CNContact instance where you are not certain of the keys that were fetched, use isKeyAvailable: or areKeysAvailable:. If these return NO you need to refetch the contact by the contact identifier with the keys you want to fetch. Accessing a property that was not fetched will throw CNContactPropertyNotFetchedExceptionName.
 */
@available(iOS 9.0, *)
class CNContact : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

  /*! The identifier is unique among contacts on the device. It can be saved and used for fetching contacts next application launch. */
  var identifier: String { get }
  var contactType: CNContactType { get }
  var namePrefix: String { get }
  var givenName: String { get }
  var middleName: String { get }
  var familyName: String { get }
  var previousFamilyName: String { get }
  var nameSuffix: String { get }
  var nickname: String { get }
  var phoneticGivenName: String { get }
  var phoneticMiddleName: String { get }
  var phoneticFamilyName: String { get }
  var organizationName: String { get }
  var departmentName: String { get }
  var jobTitle: String { get }
  var note: String { get }
  @NSCopying var imageData: NSData? { get }
  @NSCopying var thumbnailImageData: NSData? { get }
  @available(iOS 9.0, *)
  var imageDataAvailable: Bool { get }
  var phoneNumbers: [CNLabeledValue] { get }
  var emailAddresses: [CNLabeledValue] { get }
  var postalAddresses: [CNLabeledValue] { get }
  var urlAddresses: [CNLabeledValue] { get }
  var contactRelations: [CNLabeledValue] { get }
  var socialProfiles: [CNLabeledValue] { get }
  var instantMessageAddresses: [CNLabeledValue] { get }

  /*! The Gregorian birthday. */
  @NSCopying var birthday: NSDateComponents? { get }

  /*! The alternate birthday (Lunisolar). */
  @NSCopying var nonGregorianBirthday: NSDateComponents? { get }

  /*! Other Gregorian dates (anniversaries, etc). */
  var dates: [CNLabeledValue] { get }

  /*! Returns YES if the value for the specified key was fetched. */
  func isKeyAvailable(key: String) -> Bool

  /*! Returns YES if the values for the keys specified by all the descriptors were fetched. */
  func areKeysAvailable(keyDescriptors: [CNKeyDescriptor]) -> Bool

  /*! Returns a user displayable property name. */
  class func localizedStringForKey(key: String) -> String

  /*! The contact comparator for a given sort order. */
  class func comparatorForNameSortOrder(sortOrder: CNContactSortOrder) -> NSComparator

  /*! Use to fetch all contact keys required for the contact sort comparator. */
  class func descriptorForAllComparatorKeys() -> CNKeyDescriptor

  /*! Returns YES if the receiver was fetched as a unified contact and includes the contact having contactIdentifier in its unification */
  func isUnifiedWithContactWithIdentifier(contactIdentifier: String) -> Bool
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyNotFetchedExceptionName: String
@available(iOS 9.0, *)
let CNContactIdentifierKey: String
@available(iOS 9.0, *)
let CNContactNamePrefixKey: String
@available(iOS 9.0, *)
let CNContactGivenNameKey: String
@available(iOS 9.0, *)
let CNContactMiddleNameKey: String
@available(iOS 9.0, *)
let CNContactFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactPreviousFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactNameSuffixKey: String
@available(iOS 9.0, *)
let CNContactNicknameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticGivenNameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticMiddleNameKey: String
@available(iOS 9.0, *)
let CNContactPhoneticFamilyNameKey: String
@available(iOS 9.0, *)
let CNContactOrganizationNameKey: String
@available(iOS 9.0, *)
let CNContactDepartmentNameKey: String
@available(iOS 9.0, *)
let CNContactJobTitleKey: String
@available(iOS 9.0, *)
let CNContactBirthdayKey: String
@available(iOS 9.0, *)
let CNContactNonGregorianBirthdayKey: String
@available(iOS 9.0, *)
let CNContactNoteKey: String
@available(iOS 9.0, *)
let CNContactImageDataKey: String
@available(iOS 9.0, *)
let CNContactThumbnailImageDataKey: String
@available(iOS 9.0, *)
let CNContactImageDataAvailableKey: String
@available(iOS 9.0, *)
let CNContactTypeKey: String
@available(iOS 9.0, *)
let CNContactPhoneNumbersKey: String
@available(iOS 9.0, *)
let CNContactEmailAddressesKey: String
@available(iOS 9.0, *)
let CNContactPostalAddressesKey: String
@available(iOS 9.0, *)
let CNContactDatesKey: String
@available(iOS 9.0, *)
let CNContactUrlAddressesKey: String
@available(iOS 9.0, *)
let CNContactRelationsKey: String
@available(iOS 9.0, *)
let CNContactSocialProfilesKey: String
@available(iOS 9.0, *)
let CNContactInstantMessageAddressesKey: String

/*!
 * @abstract Specifies the search criteria to fetch contacts.
 *
 * @discussion Used with [CNContactStore enumerateContactsWithFetchRequest:error:usingBlock:]. Can combine any of these options to create a contact fetch request.
 */
@available(iOS 9.0, *)
class CNContactFetchRequest : NSObject {

  /*!
   *  @abstract Use this initiliazer, using init raises an exception. Pass in the properties to fetch for the returned contacts.
   *
   *  @discussion Should only fetch the properties that will be used.
   */
  init(keysToFetch: [CNKeyDescriptor])

  /*!
   * @abstract The predicate to match contacts against.
   *
   * @discussion Use only predicates from CNContact+Predicates.h. Compound predicates are not supported. Set to nil to match all contacts.
   */
  @NSCopying var predicate: NSPredicate?

  /*!
   * @abstract The properties to fetch in the returned contacts.
   *
   * @discussion Should only fetch the properties that will be used. Can combine contact keys and contact key descriptors.
   */
  var keysToFetch: [CNKeyDescriptor]

  /*!
   * @abstract To return mutable contacts.
   *
   * @discussion If YES returns CNMutableContact objects, otherwise returns CNContact objects. Default is NO.
   */
  var mutableObjects: Bool

  /*!
   * @abstract To return linked contacts as unified contacts.
   *
   * @discussion If YES returns unified contacts, otherwise returns individual contacts. Default is YES.
   *
   * @note A unified contact is the aggregation of properties from a set of linked individual contacts. If an individual contact is not linked then the unified contact is simply that individual contact.
   */
  var unifyResults: Bool

  /*!
   * @abstract To return contacts in a specific sort order.
   *
   * @discussion Default is CNContactSortOrderNone.
   */
  var sortOrder: CNContactSortOrder
  convenience init()
}

/*!
 * @abstract The formatting styles for contact names.
 */
@available(iOS 9.0, *)
enum CNContactFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! Combine the contact name components into a displayable full name. */
  case FullName

  /*! Combine the contact phonetic name components into a displayable phonetic full name.*/
  case PhoneticFullName
}

/*!
 * @abstract The formatting order of the contact name components.
 */
@available(iOS 9.0, *)
enum CNContactDisplayNameOrder : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case UserDefault
  case GivenNameFirst
  case FamilyNameFirst
}

/*!
 * @abstract Formats a contact name.
 *
 * @discussion This formatter handles international ordering and delimiting of the contact name components. This includes applying the user defaults when appropriate.
 */
@available(iOS 9.0, *)
class CNContactFormatter : NSFormatter {

  /*!
   * @abstract The contact key descriptor required for the formatter.
   *
   * @discussion Use to fetch all contact keys required for the formatter style. Can combine key descriptors for different formatter styles in the fetch.
   *
   * @param style The formatting style to be used for the contact name.
   * @return The contact key descriptor for the formatting style.
   */
  class func descriptorForRequiredKeysFor(style: CNContactFormatterStyle) -> CNKeyDescriptor

  /*!
   * @abstract Formats the contact name.
   *
   * @param contact The contact whose name is to be formatted.
   * @param style The formatting style to be used for the contact name.
   * @return The formatted contact name.
   */
  class func stringFrom(contact: CNContact, style: CNContactFormatterStyle) -> String?

  /*!
   * @abstract Formats the contact name returning an attributed string.
   *
   * @discussion This behaves like +stringFromContact:style: except it returns an attributed string. Includes the attribute key CNContactPropertyAttribute.
   *
   * @param contact The contact whose name is to be formatted.
   * @param style The formatting style to be used for the contact name.
   * @param attributes The default attributes to use. See NSFormatter for details.
   * @return The formatted contact name as an attributed string.
   */
  class func attributedStringFrom(contact: CNContact, style: CNContactFormatterStyle, defaultAttributes attributes: [NSObject : AnyObject]? = [:]) -> NSAttributedString?

  /*!
   * @abstract The recommended name order for a given contact.
   */
  class func nameOrderFor(contact: CNContact) -> CNContactDisplayNameOrder

  /*!
   * @abstract The recommended delimiter to use between name components for a given contact.
   */
  class func delimiterFor(contact: CNContact) -> String

  /*!
   * @abstract The style for a contact formatter instance.
   *
   * @discussion The default value is CNContactFormatterStyleFullName.
   */
  var style: CNContactFormatterStyle

  /*!
   * @abstract Formats the contact name.
   *
   * @param contact The contact whose name is to be formatted.
   * @return The formatted contact name.
   */
  func stringFrom(contact: CNContact) -> String?

  /*!
   * @abstract Formats the contact name returning an attributed string.
   *
   * @discussion This behaves like -stringFromContact:style: except it returns an attributed string. CNContactPropertyAttribute key has the value of a CNContact name property key.
   *
   * @param contact The contact whose name is to be formatted.
   * @param attributes The default attributes to use. See NSFormatter for details.
   * @return The formatted contact name as an attributed string.
   */
  func attributedStringFrom(contact: CNContact, defaultAttributes attributes: [NSObject : AnyObject]? = [:]) -> NSAttributedString?
  init()
  init?(coder aDecoder: NSCoder)
}
let CNContactPropertyAttribute: String

/*!
 * @abstract Contains related information for a specific contact property.
 *
 * @discussion CNContactProperty is used by the CNContactPicker to return the user's selected property.
 */
@available(iOS 9.0, *)
class CNContactProperty : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contact: CNContact { get }

  /*!
   * @abstract The key of the contact property, as defined in CNContact.h.
   */
  var key: String { get }

  /*!
   * @abstract The value of the property.
   */
  var value: AnyObject? { get }

  /*!
   * @abstract The identifier of the labeled value if the property is an array of labeled values, otherwise is nil.
   */
  var identifier: String? { get }

  /*!
   * @abstract The label of the labeled value if the property is an array of labeled values, otherwise is nil.
   */
  var label: String? { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}

/*!
 * @abstract An immutable value object representing a related contact.
 *
 * @discussion CNContactRelation is thread safe.
 */
@available(iOS 9.0, *)
class CNContactRelation : NSObject, NSCopying, NSSecureCoding {
  init(name: String)
  var name: String { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNLabelContactRelationFather: String
@available(iOS 9.0, *)
let CNLabelContactRelationMother: String
@available(iOS 9.0, *)
let CNLabelContactRelationParent: String
@available(iOS 9.0, *)
let CNLabelContactRelationBrother: String
@available(iOS 9.0, *)
let CNLabelContactRelationSister: String
@available(iOS 9.0, *)
let CNLabelContactRelationChild: String
@available(iOS 9.0, *)
let CNLabelContactRelationFriend: String
@available(iOS 9.0, *)
let CNLabelContactRelationSpouse: String
@available(iOS 9.0, *)
let CNLabelContactRelationPartner: String
@available(iOS 9.0, *)
let CNLabelContactRelationAssistant: String
@available(iOS 9.0, *)
let CNLabelContactRelationManager: String

/*!
 * @abstract The entities the user can grant access to.
 */
@available(iOS 9.0, *)
enum CNEntityType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! The user's contacts. */
  case Contacts
}

/*!
 * @abstract The authorization the user has given the application to access an entity type.
 */
@available(iOS 9.0, *)
enum CNAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! The user has not yet made a choice regarding whether the application may access contact data. */
  case NotDetermined

  /*! The application is not authorized to access contact data.
   *  The user cannot change this application’s status, possibly due to active restrictions such as parental controls being in place. */
  case Restricted

  /*! The user explicitly denied access to contact data for the application. */
  case Denied

  /*! The application is authorized to access contact data. */
  case Authorized
}

/*!
 * @abstract Provides methods to fetch and save contacts.
 *
 * @discussion The CNContactStore is a thread safe class that can fetch and save contacts, fetch and save groups, and fetch containers.
 *
 * @note Some good practices are:
 * 1) Only fetch contact properties that will be used.
 * 2) When fetching all contacts and caching the results, first fetch all contact identifiers only. Then fetch batches of detailed contacts by identifiers as you need them.
 * 3) To aggregate several contact fetches collect a set of unique contact identifiers from the fetches. Then fetch batches of detailed contacts by identifiers.
 * 4) When CNContactStoreDidChangeNotification is posted, if you cache any fetched contacts/groups/containers then they must be refetched and the old cached objects released.
 */
@available(iOS 9.0, *)
class CNContactStore : NSObject {

  /*!
   * @abstract Indicates the current authorization status to access contact data.
   *
   * @discussion Based upon the access, the application could display or hide its UI elements that would access any Contacts API. This method is thread safe.
   *
   * @return Returns the authorization status for the given entityType.
   */
  class func authorizationStatusFor(entityType: CNEntityType) -> CNAuthorizationStatus

  /*!
   * @abstract Request access to the user's contacts.
   *
   * @discussion Users are able to grant or deny access to contact data on a per-application basis. To request access to contact data, call requestAccessForEntityType:completionHandler:. This will not block the application while the user is being asked to grant or deny access. The user will only be prompted the first time access is requested; any subsequent CNContactStore calls will use the existing permissions. The completion handler is called on an arbitrary queue.
   *
   * @note Recommended to use CNContactStore instance methods in this completion handler instead of the UI main thread. This method is optional when CNContactStore is used on a background thread. If it is not used in that case, CNContactStore will block if the user is asked to grant or deny access.
   *
   * @param entityType Set to CNEntityTypeContacts.
   * @param completionHandler This block is called upon completion. If the user grants access then granted is YES and error is nil. Otherwise granted is NO with an error. 
   */
  func requestAccessFor(entityType: CNEntityType, completionHandler: (Bool, NSError?) -> Void)

  /*!
   * @abstract Fetch all unified contacts matching a given predicate.
   *
   * @discussion Use only predicates from CNContact+Predicates.h. Compound predicates are not supported. Due to unification the returned contacts may have a different identifier. 
   *
   * @note To fetch all contacts use enumerateContactsWithFetchRequest:error:usingBlock:.
   *
   * @param predicate The predicate to match against.
   * @param keys The properties to fetch into the returned CNContact objects. Should only fetch the properties that will be used. Can combine contact keys and contact key descriptors.
   * @param error If an error occurs, contains error information.
   * @return An array of CNContact objects matching the predicate. If no matches are found, an empty array is returned. If an error occurs, nil is returned.
   */
  func unifiedContactsMatching(predicate: NSPredicate, keysToFetch keys: [CNKeyDescriptor]) throws -> [CNContact]

  /*!
   * @abstract Fetch a unified contact with a given identifier.
   *
   * @discussion Due to unification the returned contact may have a different identifier. To fetch a batch of contacts by identifiers use [CNContact predicateForContactsWithIdentifiers:].
   *
   * @param identifier The identifier of the contact to fetch.
   * @param keys The properties to fetch into the returned CNContact object. Should only fetch the properties that will be used. Can combine contact keys and contact key descriptors.
   * @param error If an error occurs, contains error information.
   * @return The unified contact matching or linked to the identifier. If no contact with the given identifier is found, nil is returned abd error is set to CNErrorCodeRecordDoesNotExist.
   */
  func unifiedContactWithIdentifier(identifier: String, keysToFetch keys: [CNKeyDescriptor]) throws -> CNContact

  /*!
   * @abstract Enumerates all contacts matching a contact fetch request.
   *
   * @discussion This method will wait until the enumeration is finished. If there are no results the block is not called and YES is returned.
   *
   * @param fetchRequest The contact fetch request that specifies the search criteria.
   * @param error If an error occurs, contains error information.
   * @param block Called for each matching contact. Set *stop to YES to stop the enumeration.
   * @return YES if successful, otherwise NO.
   */
  func enumerateContactsWith(fetchRequest: CNContactFetchRequest, usingBlock block: (CNContact, UnsafeMutablePointer<ObjCBool>) -> Void) throws

  /*!
   * @abstract Fetch all groups matching a given predicate.
   *
   * @discussion Use only predicates from CNGroup+Predicates.h. Compound predicates are not supported.
   *
   * @param predicate The predicate to match against. Set to nil to match all groups.
   * @param error If an error occurs, contains error information.
   * @return An array of CNGroup objects matching the predicate. If no matches are found, an empty array is returned. If an error occurs, nil is returned.
   */
  func groupsMatching(predicate: NSPredicate?) throws -> [CNGroup]

  /*!
   * @abstract Fetch all containers matching a given predicate.
   *
   * @discussion Use only predicates from CNContainer+Predicates.h. Compound predicates are not supported.
   *
   * @param predicate The predicate to match against. Set to nil to match all containers.
   * @param error If an error occurs, contains error information.
   * @return An array of CNContainer objects matching the predicate. If no matches are found, an empty array is returned. If an error occurs, nil is returned.
   */
  func containersMatching(predicate: NSPredicate?) throws -> [CNContainer]

  /*!
   * @abstract Executes a save request.
   *
   * @discussion Do not access objects when save request is executing. A save request with contacts may modify the contacts while executing. A save request only applies the changes to the objects. If there are overlapping changes with multiple, concurrent CNSaveRequests then the last saved change wins.
   *
   * @param saveRequest Save request to execute.
   * @param error If an error occurs, contains error information.
   * @return YES if successful, otherwise NO.
   */
  func execute(saveRequest: CNSaveRequest) throws

  /*!
   *  @abstract The identifier of the default container.
   *
   *  @discussion This identifier can be used to fetch the default container.
   *
   *  @return The identifier of the default container.
   */
  func defaultContainerIdentifier() -> String
  init()
}

/*!
 * @abstract Notification posted when changes occur in another CNContactStore.
 */
@available(iOS 9.0, *)
let CNContactStoreDidChangeNotification: String

/*!
 * @abstract Contact vCard support.
 *
 * @discussion This converts between a contact and its vCard representation.
 */
@available(iOS 9.0, *)
class CNContactVCardSerialization : NSObject {

  /*!
   *  @abstract Descriptor for all contact keys required by vCard serialization
   *
   *  @discussion This descriptor must be passed to the fetch request if the returned
   *              contacts are to be serialized with dataWithContacts:error:.
   */
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func dataWithContacts(contacts: [AnyObject]) throws -> NSData
  class func contactsWith(data: NSData) throws -> [AnyObject]
  init()
}

/*!
 * @abstract The predicates to match contacts against.
 *
 * @discussion Can only use these predicates with CNContactStore and CNContactFetchRequest.
 */
extension CNContact {

  /*!
   * @abstract To fetch contacts matching a name.
   *
   * @discussion The name can contain any number of words.
   */
  class func predicateForContactsMatchingName(name: String) -> NSPredicate

  /*! To fetch contacts matching contact identifiers. */
  class func predicateForContactsWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForContactsInGroupWithIdentifier(groupIdentifier: String) -> NSPredicate
  class func predicateForContactsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}

/*!
 * @abstract The user defaults for contacts.
 */
@available(iOS 9.0, *)
class CNContactsUserDefaults : NSObject {
  class func shared() -> Self
  var sortOrder: CNContactSortOrder { get }
  var countryCode: String { get }
  init()
}
@available(iOS 9.0, *)
enum CNContainerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unassigned
  case Local
  case Exchange
  case CardDAV
}

/*!
 * @abstract An immutable value object representing a container.
 *
 * @discussion CNContainer is thread safe.
 */
@available(iOS 9.0, *)
class CNContainer : NSObject, NSCopying, NSSecureCoding {

  /*! The identifier is unique among containers on the device. It can be saved and used for fetching containers next application launch. */
  var identifier: String { get }
  var name: String { get }
  var type: CNContainerType { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNContainerIdentifierKey: String
@available(iOS 9.0, *)
let CNContainerNameKey: String
@available(iOS 9.0, *)
let CNContainerTypeKey: String

/*!
 * @abstract The predicates to match containers against.
 *
 * @discussion Can only use these predicates with CNContactStore.
 */
extension CNContainer {
  class func predicateForContainersWithIdentifiers(identifiers: [String]) -> NSPredicate

  /*! @discussion If the identifier is for a unified contact then the fetch will return an empty array. To fetch the containers of a unified contact, first fetch the linked contacts then fetch the container of each linked contact. */
  class func predicateForContainerOfContactWithIdentifier(contactIdentifier: String) -> NSPredicate
  class func predicateForContainerOfGroupWithIdentifier(groupIdentifier: String) -> NSPredicate
}
@available(iOS 9.0, *)
let CNErrorDomain: String
@available(iOS 9.0, *)
enum CNErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case CommunicationError
  case DataAccessError
  case AuthorizationDenied
  case RecordDoesNotExist
  case InsertedRecordAlreadyExists
  case ContainmentCycle
  case ContainmentScope
  case ParentRecordDoesNotExist
  case ValidationMultipleErrors
  case ValidationTypeMismatch
  case ValidationConfigurationError
  case PredicateInvalid
  case PolicyViolation
}

@available(OSX 10.11, iOS 9.0, *)
extension CNErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}

/*! When available an array of one or more CNContact, CNGroup or CNContainer objects for which the error code applies. */
@available(iOS 9.0, *)
let CNErrorUserInfoAffectedRecordsKey: String

/*! When available an array of one or more NSString objects for which the error code applies. */
@available(iOS 9.0, *)
let CNErrorUserInfoAffectedRecordIdentifiersKey: String

/*! An array of NSErrors for CNErrorCodeValidationMultipleErrors. */
@available(iOS 9.0, *)
let CNErrorUserInfoValidationErrorsKey: String

/*! An array of key paths associated with a given error. For validation errors this will contain key paths to specific object properties. */
@available(iOS 9.0, *)
let CNErrorUserInfoKeyPathsKey: String

/*!
 * @abstract An immutable value object representing a group.
 *
 * @discussion CNGroup is thread safe.
 */
@available(iOS 9.0, *)
class CNGroup : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

  /*! The identifier is unique among groups on the device. It can be saved and used for fetching groups next application launch. */
  var identifier: String { get }
  var name: String { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNGroupIdentifierKey: String
@available(iOS 9.0, *)
let CNGroupNameKey: String

/*!
 * @abstract The predicates to match groups against.
 *
 * @discussion Can only use these predicates with CNContactStore.
 */
extension CNGroup {
  class func predicateForGroupsWithIdentifiers(identifiers: [String]) -> NSPredicate
  class func predicateForGroupsInContainerWithIdentifier(containerIdentifier: String) -> NSPredicate
}

/*!
 * @abstract An immutable value object representing an instant message address.
 *
 * @discussion CNInstantMessageAddress is thread safe.
 */
@available(iOS 9.0, *)
class CNInstantMessageAddress : NSObject, NSCopying, NSSecureCoding {
  var username: String { get }
  var service: String { get }
  init(username: String, service: String)

  /*! Returns a user displayable property name. */
  class func localizedStringForKey(key: String) -> String

  /*! Returns a user displayable service name. */
  class func localizedStringForService(service: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNInstantMessageAddressUsernameKey: String
@available(iOS 9.0, *)
let CNInstantMessageAddressServiceKey: String
@available(iOS 9.0, *)
let CNInstantMessageServiceAIM: String
@available(iOS 9.0, *)
let CNInstantMessageServiceFacebook: String
@available(iOS 9.0, *)
let CNInstantMessageServiceGaduGadu: String
@available(iOS 9.0, *)
let CNInstantMessageServiceGoogleTalk: String
@available(iOS 9.0, *)
let CNInstantMessageServiceICQ: String
@available(iOS 9.0, *)
let CNInstantMessageServiceJabber: String
@available(iOS 9.0, *)
let CNInstantMessageServiceMSN: String
@available(iOS 9.0, *)
let CNInstantMessageServiceQQ: String
@available(iOS 9.0, *)
let CNInstantMessageServiceSkype: String
@available(iOS 9.0, *)
let CNInstantMessageServiceYahoo: String

/*!
 * @abstract A contact property that has a value and label.
 */
@available(iOS 9.0, *)
class CNLabeledValue : NSObject, NSCopying, NSSecureCoding {

  /*! The identifier is unique among contacts on the device. It can be saved and used for finding labeled values next application launch. */
  var identifier: String { get }
  var label: String { get }
  @NSCopying var value: protocol<NSCopying, NSSecureCoding> { get }

  /*! Initializes the CNLabeledValue with a new identifier. */
  init(label: String?, value: protocol<NSCopying, NSSecureCoding>)

  /*! Returns a new CNLabeledValue with the existing value and identifier. */
  func bySettingLabel(label: String?) -> Self

  /*! Returns a new CNLabeledValue with the existing label and identifier. */
  func bySettingValue(value: protocol<NSCopying, NSSecureCoding>) -> Self

  /*! Returns a new CNLabeledValue with the existing identifier. */
  func bySettingLabel(label: String?, value: protocol<NSCopying, NSSecureCoding>) -> Self

  /*!
   * @abstract Get a localized label.
   *
   * @discussion Some labels are special keys representing generic labels. Use this to obtain a localized string for a label to display to a user.
   *
   * @param label to localize.
   * @return The localized string if a Contacts framework defined label, otherwise just returns the label.
   */
  class func localizedStringForLabel(label: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNLabelHome: String
@available(iOS 9.0, *)
let CNLabelWork: String
@available(iOS 9.0, *)
let CNLabelOther: String
@available(iOS 9.0, *)
let CNLabelEmailiCloud: String
@available(iOS 9.0, *)
let CNLabelURLAddressHomePage: String
@available(iOS 9.0, *)
let CNLabelDateAnniversary: String

/*!
 * @abstract A mutable value object representing a contact.
 *
 * @discussion CNMutableContact is not thread safe. If this is a mutable copy of CNContact then it will throw CNContactPropertyNotFetchedExceptionName when accessing a property that was not fetched for the CNContact.
 *
 * @note To remove properties when saving a mutable contact, set string properties and array properties to empty values. Set other properties to nil.
 */
@available(iOS 9.0, *)
class CNMutableContact : CNContact {
  var contactType: CNContactType
  var namePrefix: String
  var givenName: String
  var middleName: String
  var familyName: String
  var previousFamilyName: String
  var nameSuffix: String
  var nickname: String
  var phoneticGivenName: String
  var phoneticMiddleName: String
  var phoneticFamilyName: String
  var organizationName: String
  var departmentName: String
  var jobTitle: String
  var note: String
  @NSCopying var imageData: NSData?
  var phoneNumbers: [CNLabeledValue]
  var emailAddresses: [CNLabeledValue]
  var postalAddresses: [CNLabeledValue]
  var urlAddresses: [CNLabeledValue]
  var contactRelations: [CNLabeledValue]
  var socialProfiles: [CNLabeledValue]
  var instantMessageAddresses: [CNLabeledValue]

  /*! @abstract The Gregorian birthday.
   *
   *  @description Only uses day, month and year components. Needs to have at least a day and a month.
   */
  @NSCopying var birthday: NSDateComponents?

  /*! @abstract The alternate birthday (Lunisolar).
   *
   *  @description Only uses day, month, year and calendar components. Needs to have at least a day and a month. Calendar must be Chinese, Hebrew or Islamic.
   */
  @NSCopying var nonGregorianBirthday: NSDateComponents?

  /*! @abstract Other Gregorian dates (anniversaries, etc).
   *
   *  @description Only uses day, month and year components. Needs to have at least a day and a month.
   */
  var dates: [CNLabeledValue]
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @abstract A mutable value object representing a group.
 *
 * @discussion CNMutableGroup is not thread safe.
 */
@available(iOS 9.0, *)
class CNMutableGroup : CNGroup {
  var name: String
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @abstract A mutable value object representing a postal address.
 *
 * @discussion CNMutablePostalAddress is not thread safe.
 *
 * @note To remove properties when saving a mutable postal address, set string properties to empty values.
 */
@available(iOS 9.0, *)
class CNMutablePostalAddress : CNPostalAddress {

  /*! multi-street address is delimited with carriage returns “\n” */
  var street: String
  var city: String
  var state: String
  var postalCode: String
  var country: String
  var isoCountryCode: String
  init()
  init?(coder aDecoder: NSCoder)
}

/*!
 * @abstract An immutable value object representing a phone number.
 *
 * @discussion CNPhoneNumber is thread safe.
 */
@available(iOS 9.0, *)
class CNPhoneNumber : NSObject, NSCopying, NSSecureCoding {
  init(stringValue string: String)
  var stringValue: String { get }
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNLabelPhoneNumberiPhone: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMobile: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberMain: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberHomeFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberWorkFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberOtherFax: String
@available(iOS 9.0, *)
let CNLabelPhoneNumberPager: String

/*!
 * @abstract An immutable value object representing a postal address.
 *
 * @discussion CNPostalAddress is thread safe.
 */
@available(iOS 9.0, *)
class CNPostalAddress : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {

  /*! multi-street address is delimited with carriage returns “\n” */
  var street: String { get }
  var city: String { get }
  var state: String { get }
  var postalCode: String { get }
  var country: String { get }
  var isoCountryCode: String { get }

  /*! Returns a user displayable property name. */
  class func localizedStringForKey(key: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  func mutableCopy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNPostalAddressStreetKey: String
@available(iOS 9.0, *)
let CNPostalAddressCityKey: String
@available(iOS 9.0, *)
let CNPostalAddressStateKey: String
@available(iOS 9.0, *)
let CNPostalAddressPostalCodeKey: String
@available(iOS 9.0, *)
let CNPostalAddressCountryKey: String
@available(iOS 9.0, *)
let CNPostalAddressISOCountryCodeKey: String

/*!
 * @abstract The formatting styles for postal addresses.
 */
@available(iOS 9.0, *)
enum CNPostalAddressFormatterStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }

  /*! Combine the postal address components into a multi-line mailing address. */
  case MailingAddress
}

/*!
 * @abstract Formats a postal address.
 *
 * @discussion This formatter handles international formatting of a postal address.
 */
@available(iOS 9.0, *)
class CNPostalAddressFormatter : NSFormatter {

  /*!
   * @abstract Formats the postal address.
   *
   * @param postalAddress The postal address to be formatted.
   * @param style The formatting style to be used for the postal address.
   * @return The formatted postal address.
   */
  class func stringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle) -> String

  /*!
   * @abstract Formats the postal address returning an attributed string.
   *
   * @discussion This behaves like +stringFromPostalAddress: except it returns an attributed string. Includes attribute keys CNPostalAddressPropertyAttribute and CNPostalAddressLocalizedPropertyNameAttribute.
   *
   * @param postalAddress The postal address to be formatted.
   * @param style The formatting style to be used for the postal address.
   * @param attributes The default attributes to use. See NSFormatter for details.
   * @return The formatted postal address as an attributed string.
   */
  class func attributedStringFrom(postalAddress: CNPostalAddress, style: CNPostalAddressFormatterStyle, withDefaultAttributes attributes: [NSObject : AnyObject] = [:]) -> NSAttributedString

  /*!
   * @abstract The style for a postal address formatter instance.
   *
   * @discussion The default value is CNPostalAddressFormatterStyleMailingAddress.
   */
  var style: CNPostalAddressFormatterStyle

  /*!
   * @abstract Formats the postal address.
   *
   * @param postalAddress The postal address to be formatted.
   * @return The formatted postal address.
   */
  func stringFrom(postalAddress: CNPostalAddress) -> String

  /*!
   * @abstract Formats the postal address returning an attributed string.
   *
   * @discussion This behaves like +stringFromPostalAddress: except it returns an attributed string. Includes attribute keys CNPostalAddressPropertyAttribute and CNPostalAddressLocalizedPropertyNameAttribute.
   *
   * @param postalAddress The postal address to be formatted.
   * @param attributes The default attributes to use. See NSFormatter for details.
   * @return The formatted postal address as an attributed string.
   */
  func attributedStringFrom(postalAddress: CNPostalAddress, withDefaultAttributes attributes: [NSObject : AnyObject] = [:]) -> NSAttributedString
  init()
  init?(coder aDecoder: NSCoder)
}
let CNPostalAddressPropertyAttribute: String
let CNPostalAddressLocalizedPropertyNameAttribute: String

/*!
 * @abstract Specifies the changes to save.
 *
 * @discussion Create a new save request for each save execution on the contact store. Can have many changes batched into one save request. Do not access objects in the save request when it is executing.  A save request only applies the changes to the objects. If there are overlapping changes with multiple, concurrent CNSaveRequests then the last saved change wins.
 *
 * If adding an object (contact, group, container) and it is already in the contact store then the executing save request will fail to add that object and will return the error CNErrorCodeInsertedRecordAlreadyExists with CNErrorUserInfoAffectedRecordsKey value as an array containing that object.
 *
 * If updating/deleting an object (contact, group, container) and it is not in the contact store then the executing save request will fail to update/delete that object and will return the error CNErrorCodeRecordDoesNotExist with CNErrorUserInfoAffectedRecordsKey value as an array containing that object.
 *
 */
@available(iOS 9.0, *)
class CNSaveRequest : NSObject {

  /*!
   * @abstract Add a new contact to the contact store.
   *
   * @discussion The contact may be modified by the executing save request. If the contact was previously specified to be deleted in the save request that will no longer occur.
   *
   * @param contact The new contact to add.
   * @param identifier The container identifier to add the new contact to. Set to nil for the default container.
   */
  func add(contact: CNMutableContact, toContainerWithIdentifier identifier: String?)

  /*!
   * @abstract Update an existing contact in the contact store.
   *
   * @discussion The contact must already exist in the contact store. The contact may be modified by the executing save request.
   */
  func updateContact(contact: CNMutableContact)

  /*!
   * @abstract Delete a contact from the contact store.
   *
   * @discussion If the contact was previously specified to be added in the save request that will no longer occur.
   */
  func delete(contact: CNMutableContact)

  /*!
   * @abstract Add a new group to the contact store.
   *
   * @discussion If the group was previously specified to be deleted in the save request that will no longer occur.
   *
   * @param group The new group to add.
   * @param identifier The container identifier to add the new group to. Set to nil for the default container.
   */
  func add(group: CNMutableGroup, toContainerWithIdentifier identifier: String?)

  /*!
   * @abstract Update an existing group in the contact store.
   *
   * @discussion The group must already exist in the contact store.
   */
  func updateGroup(group: CNMutableGroup)

  /*!
   * @abstract Delete a group from the contact store.
   *
   * @discussion The contacts in the group are not deleted. If the group was previously specified to be added in the save request that will no longer occur.
   */
  func delete(group: CNMutableGroup)

  /*!
   * @abstract Add a new member to a group.
   *
   * @discussion If the membership was previously specified to be deleted in the save request that will no longer occur.
   *
   * @param contact The new member to add to the group.
   * @param group The group to add the member to.
   */
  func addMember(contact: CNContact, to group: CNGroup)

  /*!
   * @abstract Remove a member from a group.
   *
   * @discussion The contact is not deleted. It is only removed as a member of the group. If the membership was previously specified to be added in the save request that will no longer occur.
   *
   * @param contact The member to remove from the group.
   * @param group The group to remove the member from.
   */
  func removeMember(contact: CNContact, from group: CNGroup)
  init()
}

/*!
 * @abstract An immutable value object representing a social profile.
 *
 * @discussion CNSocialProfile is thread safe.
 */
@available(iOS 9.0, *)
class CNSocialProfile : NSObject, NSCopying, NSSecureCoding {
  var urlString: String { get }
  var username: String { get }
  var userIdentifier: String { get }
  var service: String { get }
  init(urlString: String?, username: String?, userIdentifier: String?, service: String?)

  /*! Returns a user displayable property name. */
  class func localizedStringForKey(key: String) -> String

  /*! Returns a user displayable service name. */
  class func localizedStringForService(service: String) -> String
  init()
  @available(iOS 9.0, *)
  func copy(zone zone: NSZone = nil) -> AnyObject
  @available(iOS 9.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 9.0, *)
  func encodeWith(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 9.0, *)
let CNSocialProfileURLStringKey: String
@available(iOS 9.0, *)
let CNSocialProfileUsernameKey: String
@available(iOS 9.0, *)
let CNSocialProfileUserIdentifierKey: String
@available(iOS 9.0, *)
let CNSocialProfileServiceKey: String
@available(iOS 9.0, *)
let CNSocialProfileServiceFacebook: String
@available(iOS 9.0, *)
let CNSocialProfileServiceFlickr: String
@available(iOS 9.0, *)
let CNSocialProfileServiceLinkedIn: String
@available(iOS 9.0, *)
let CNSocialProfileServiceMySpace: String
@available(iOS 9.0, *)
let CNSocialProfileServiceSinaWeibo: String
@available(iOS 9.0, *)
let CNSocialProfileServiceTencentWeibo: String
@available(iOS 9.0, *)
let CNSocialProfileServiceTwitter: String
@available(iOS 9.0, *)
let CNSocialProfileServiceYelp: String
@available(iOS 9.0, *)
let CNSocialProfileServiceGameCenter: String
