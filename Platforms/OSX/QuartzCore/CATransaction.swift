
class CATransaction : Object {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(dur: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(function: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func valueForKey(key: String) -> AnyObject?
  class func setValue(anObject: AnyObject?, forKey key: String)
  init()
}
@available(OSX 10.5, *)
let kCATransactionAnimationDuration: String
@available(OSX 10.5, *)
let kCATransactionDisableActions: String
@available(OSX 10.6, *)
let kCATransactionAnimationTimingFunction: String
@available(OSX 10.6, *)
let kCATransactionCompletionBlock: String
