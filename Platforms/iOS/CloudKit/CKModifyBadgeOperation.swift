
@available(iOS 8.0, *)
class CKModifyBadgeOperation : CKOperation {
  init()
  convenience init(badgeValue: Int)
  var badgeValue: Int
  var modifyBadgeCompletionBlock: ((Error?) -> Void)?
}
