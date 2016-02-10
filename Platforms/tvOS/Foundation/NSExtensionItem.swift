
@available(tvOS 8.0, *)
class ExtensionItem : Object, Copying, SecureCoding {
  @NSCopying var attributedTitle: AttributedString?
  @NSCopying var attributedContentText: AttributedString?
  var attachments: [AnyObject]?
  var userInfo: [Object : AnyObject]?
  init()
  @available(tvOS 8.0, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(tvOS 8.0, *)
let extensionItemAttributedTitleKey: String
@available(tvOS 8.0, *)
let extensionItemAttributedContentTextKey: String
@available(tvOS 8.0, *)
let extensionItemAttachmentsKey: String
