

/*!
 * @abstract The CNContactPickerViewController allows the user to select one or multiple contacts or properties.
 * @discussion The entire list of contacts will be presented to the user. The picker supports both single selection and multi-selection. The app does not need access to the user’s contacts and the user will not be prompted for access. It will only have access to the final selection of the user.
 * Changing the predicates only take effect before the view is presented.
 */
@available(iOS 9.0, *)
class CNContactPickerViewController : UIViewController {

  /*!
   * @abstract The CNContact property keys to display in the contact detail card.
   * @discussion If not set all properties are displayed.
   */
  var displayedPropertyKeys: [String]?

  /*!
   * @abstract The delegate to be notified when the user selects a contact or property.
   */
  weak var delegate: @sil_weak CNContactPickerDelegate?

  /*!
   * @abstract The predicate to determine if a contact is selectable in the list.
   * @discussion If not set all contacts are selectable.
   */
  @NSCopying var predicateForEnablingContact: NSPredicate?

  /*!
   * @abstract The predicate to control the selection of a contact.
   * @discussion It determines whether a selected contact should be returned (predicate evaluates to TRUE)
   * or if the contact detail card should be displayed (evaluates to FALSE).
   * If not set the picker displays the contact detail card when the contact is selected.
   */
  @NSCopying var predicateForSelectionOfContact: NSPredicate?

  /*!
   * @abstract The predicate to control the selection of a property.
   * @discussion It determines whether a selected property should be returned (predicate evaluates to TRUE)
   * or if the default action for the property should be performed (predicate evaluates to FALSE).
   * If not set the picker returns the first selected property.
   * The predicate is evaluated on the CNContactProperty that is being selected.
   */
  @NSCopying var predicateForSelectionOfProperty: NSPredicate?
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactPickerDelegate : NSObjectProtocol {

  /*!
   * @abstract Invoked when the picker is closed.
   * @discussion The picker will be dismissed automatically after a contact or property is picked.
   */
  optional func contactPickerDidCancel(picker: CNContactPickerViewController)

  /*!
   * @abstract Singular delegate methods.
   * @discussion These delegate methods will be invoked when the user selects a single contact or property.
   */
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contact: CNContact)
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contactProperty: CNContactProperty)

  /*!
   * @abstract Plural delegate methods.
   * @discussion These delegate methods will be invoked when the user is done selecting multiple contacts or properties.
   * Implementing one of these methods will configure the picker for multi-selection.
   */
  optional func contactPicker(picker: CNContactPickerViewController, didSelect contacts: [CNContact])
  optional func contactPicker(picker: CNContactPickerViewController, didSelectContactProperties contactProperties: [CNContactProperty])
}

/*!
 * @abstract The CNContactViewController is used to display a contact.
 * @discussion This class can display a new contact, unknown contact or existing contact. You must use one of the designated initializers.
 */
@available(iOS 9.0, *)
class CNContactViewController : UIViewController {

  /*!
   * @abstract Descriptor for all keys that must be fetched on your contact before setting it on the view controller.
   * @discussion Pass this descriptor to the keysToFetch of the CNContactFetchRequest if you want to display the contact in a CNContactViewController.
   */
  class func descriptorForRequiredKeys() -> CNKeyDescriptor

  /*!
   * @abstract Designated initializers.
   * @discussion These initializers customize the behavior and appearance of CNContactViewController.
   * @note All keys of the given contact must be fetched 
   */
  convenience init(forContact contact: CNContact)
  convenience init(forUnknownContact contact: CNContact)
  convenience init(forNewContact contact: CNContact?)

  /*!
   * @abstract The contact being displayed.
   */
  var contact: CNContact { get }

  /*!
   * @abstract The CNContact property keys to display.
   * @discussion If not set all properties are displayed.
   * @note All properties are visible when editing the contact.
   */
  var displayedPropertyKeys: [AnyObject]?

  /*!
   * @abstract The delegate to be notified.
   */
  weak var delegate: @sil_weak CNContactViewControllerDelegate?

  /*!
   * @abstract The CNContactStore where the contact was fetched from or will be saved to.
   * @discussion If not set adding the contact to the user's contacts is disabled.
   */
  var contactStore: CNContactStore?

  /*!
   * @abstract A CNGroup where the new contact will be assigned membership.
   * @discussion If not set the contact is added only to the default CNContainer with no group membership.
   * @note When set to a group not in the default container, the container property must also be set to the container of parentGroup.
   */
  var parentGroup: CNGroup?

  /*!
   * @abstract A CNContainer where the new contact will be created.
   * @discussion If not set the contact is added to the default container.
   */
  var parentContainer: CNContainer?

  /*!
   * @abstract The name to use if the contact has no display name.
   */
  var alternateName: String?

  /*!
   * @abstract The message to display under the name.
   */
  var message: String?

  /*!
   * @abstract Customization of the card.
   */
  var allowsEditing: Bool
  var allowsActions: Bool
  var shouldShowLinkedContacts: Bool

  /*!
   * @abstract Highlight a property.
   * @discussion Indicates whether to highlight a certain property value for the contact.
   * If a single value property key is specified, identifier will be ignored.
   */
  func highlightPropertyWithKey(key: String, identifier: String?)
  init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
@available(iOS 9.0, *)
protocol CNContactViewControllerDelegate : NSObjectProtocol {

  /*!
   * @abstract Called when the user selects a single property.
   * @discussion Return NO if you do not want anything to be done or if you are handling the actions yourself.
   * Return YES if you want the default action performed for the property otherwise return NO.
   */
  optional func contactViewController(viewController: CNContactViewController, shouldPerformDefaultActionFor property: CNContactProperty) -> Bool

  /*!
   * @abstract Called when the view has completed.
   * @discussion If creating a new contact, the new contact added to the contacts list will be passed.
   * If adding to an existing contact, the existing contact will be passed.
   * @note It is up to the delegate to dismiss the view controller.
   */
  optional func contactViewController(viewController: CNContactViewController, didCompleteWith contact: CNContact?)
}
extension UIApplicationShortcutIcon {
  convenience init(contact: CNContact)
}
