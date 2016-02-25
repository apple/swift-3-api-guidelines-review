
@available(iOS 7.1, *)
class MPPlayableContentManager : NSObject {
  weak var dataSource: @sil_weak MPPlayableContentDataSource?
  weak var delegate: @sil_weak MPPlayableContentDelegate?
  @available(iOS 8.4, *)
  var context: MPPlayableContentManagerContext { get }
  class func sharedContentManager() -> Self
  func reloadData()
  func beginUpdates()
  func endUpdates()
}
