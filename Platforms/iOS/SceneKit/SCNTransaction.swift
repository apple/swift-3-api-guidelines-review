
@available(iOS 8.0, *)
class SCNTransaction : Object {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(duration: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(animationTimingFunction: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(block: (() -> Void)?)
  class func value(forKey key: String) -> AnyObject?
  class func setValue(value: AnyObject?, forKey key: String)
  init()
}
