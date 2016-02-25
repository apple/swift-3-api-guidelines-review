
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
@available(iOS 2.0, *)
let kCATransactionAnimationDuration: String
@available(iOS 2.0, *)
let kCATransactionDisableActions: String
@available(iOS 3.0, *)
let kCATransactionAnimationTimingFunction: String
@available(iOS 4.0, *)
let kCATransactionCompletionBlock: String
