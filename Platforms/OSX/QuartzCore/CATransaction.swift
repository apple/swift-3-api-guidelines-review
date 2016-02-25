
class CATransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class func animationDuration() -> CFTimeInterval
  class func setAnimationDuration(_ dur: CFTimeInterval)
  class func animationTimingFunction() -> CAMediaTimingFunction?
  class func setAnimationTimingFunction(_ function: CAMediaTimingFunction?)
  class func disableActions() -> Bool
  class func setDisableActions(_ flag: Bool)
  class func completionBlock() -> (() -> Void)?
  class func setCompletionBlock(_ block: (() -> Void)?)
}
@available(OSX 10.5, *)
let kCATransactionAnimationDuration: String
@available(OSX 10.5, *)
let kCATransactionDisableActions: String
@available(OSX 10.6, *)
let kCATransactionAnimationTimingFunction: String
@available(OSX 10.6, *)
let kCATransactionCompletionBlock: String
