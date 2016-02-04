
@available(iOS 4.0, *)
class UINib : NSObject {
  /*not inherited*/ init(nibName name: String, bundle bundleOrNil: NSBundle?)
  /*not inherited*/ init(data: NSData, bundle bundleOrNil: NSBundle?)
  func instantiateWithOwner(ownerOrNil: AnyObject?, options optionsOrNil: [NSObject : AnyObject]?) -> [AnyObject]
  init()
}
