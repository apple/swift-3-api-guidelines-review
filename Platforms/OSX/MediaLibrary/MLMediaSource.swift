
class MLMediaSource : NSObject {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var rootMediaGroup: MLMediaGroup? { get }
  func mediaGroupForIdentifier(_ mediaGroupIdentifier: String) -> MLMediaGroup?
  func mediaGroupsForIdentifiers(_ mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  func mediaObjectForIdentifier(_ mediaObjectIdentifier: String) -> MLMediaObject?
  func mediaObjectsForIdentifiers(_ mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
}
