
@available(tvOS 8.0, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [AnyObject]?
  var userInfo: [NSObject : AnyObject]?
  init()
  @available(tvOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(tvOS 8.0, *)
  class func supportsSecureCoding() -> Bool
  @available(tvOS 8.0, *)
  func encodeWithCoder(aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
@available(tvOS 8.0, *)
let NSExtensionItemAttributedTitleKey: String
@available(tvOS 8.0, *)
let NSExtensionItemAttributedContentTextKey: String
@available(tvOS 8.0, *)
let NSExtensionItemAttachmentsKey: String
