
@available(watchOS 2.0, *)
class WKInterfacePicker : WKInterfaceObject {
  func focus()
  func resignFocus()
  func setSelectedItemIndex(itemIndex: Int)
  func setItems(items: [WKPickerItem]?)
  func setCoordinatedAnimations(coordinatedAnimations: [WKInterfaceObject]?)
  func setEnabled(enabled: Bool)
}
@available(watchOS 2.0, *)
class WKPickerItem : Object, SecureCoding {
  var title: String?
  var caption: String?
  @NSCopying var accessoryImage: WKImage?
  @NSCopying var contentImage: WKImage?
  init()
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
