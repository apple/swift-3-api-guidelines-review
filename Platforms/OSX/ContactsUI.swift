

/*!
 * @abstract CNContactPicker is a popover-based contact picker for choosing a contact or a contact's value, such as a phone number or email address.
 */
@available(OSX 10.11, *)
class CNContactPicker : Object {

  /*!
   * @abstract The CNContact keys to display when a contact is expanded.
   * @discussion If no keys are provided, the picker will select contacts instead of values.
   */
  var displayedKeys: [String]

  /*!
   * @abstract The picker delegate to be notified when the user chooses a contact or value.
   */
  weak var delegate: @sil_weak CNContactPickerDelegate?

  /*!
   * @abstract Shows the picker popover relative to a positioning rect for a view with a preferred edge. See NSPopover for more information.
   */
  func showRelativeTo(positioningRect: Rect, of positioningView: NSView, preferredEdge: RectEdge)

  /*!
   * @abstract Closes the popover.
   */
  func close()
  init()
}
@available(OSX 10.11, *)
protocol CNContactPickerDelegate : ObjectProtocol {

  /*!
   * @abstract Notifies the delegate when the contact picker's popover will close.
   */
  optional func contactPickerWillClose(picker: CNContactPicker)

  /*!
   * @abstract Notifies the delegate when the contact picker's popover has closed.
   */
  optional func contactPickerDidClose(picker: CNContactPicker)
}

/*!
 * @abstract A view controller to display and edit a @c CNContact.
 */
@available(OSX 10.11, *)
class CNContactViewController : NSViewController {
  init?(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  init?(coder: Coder)
  convenience init()
}
