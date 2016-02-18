
@available(iOS 8.0, *)
class ExtensionItem : Object, Copying, SecureCoding {
  @NSCopying var attributedTitle: AttributedString?
  @NSCopying var attributedContentText: AttributedString?
  var attachments: [AnyObject]?
  var userInfo: [Object : AnyObject]?
  init()
  @available(iOS 8.0, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 8.0, *)
let extensionItemAttributedTitleKey: String
@available(iOS 8.0, *)
let extensionItemAttributedContentTextKey: String
@available(iOS 8.0, *)
let extensionItemAttachmentsKey: String
