
@available(tvOS 8.0, *)
class SCNTransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(_ duration: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(_ animationTimingFunction: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(_ flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(_ block: (() -> Void)?)
}
