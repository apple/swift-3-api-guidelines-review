
@available(iOS 8.0, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(iOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(iOS 8.0, *)
let NSExtensionItemAttributedTitleKey: String
@available(iOS 8.0, *)
let NSExtensionItemAttributedContentTextKey: String
@available(iOS 8.0, *)
let NSExtensionItemAttachmentsKey: String
