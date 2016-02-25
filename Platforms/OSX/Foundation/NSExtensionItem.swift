
@available(OSX 10.10, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  @available(OSX 10.10, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(OSX 10.10, *)
  class func supportsSecureCoding() -> Bool
  @available(OSX 10.10, *)
  func encodeWithCoder(_ aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(OSX 10.10, *)
let NSExtensionItemAttributedTitleKey: String
@available(OSX 10.10, *)
let NSExtensionItemAttributedContentTextKey: String
@available(OSX 10.10, *)
let NSExtensionItemAttachmentsKey: String
