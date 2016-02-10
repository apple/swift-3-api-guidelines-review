
@available(OSX 10.10, *)
class ExtensionItem : Object, Copying, SecureCoding {
  @NSCopying var attributedTitle: AttributedString?
  @NSCopying var attributedContentText: AttributedString?
  var attachments: [AnyObject]?
  var userInfo: [Object : AnyObject]?
  init()
  @available(OSX 10.10, *)
  func copy(withZone zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encode(withCoder aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.10, *)
let extensionItemAttributedTitleKey: String
@available(OSX 10.10, *)
let extensionItemAttributedContentTextKey: String
@available(OSX 10.10, *)
let extensionItemAttachmentsKey: String
