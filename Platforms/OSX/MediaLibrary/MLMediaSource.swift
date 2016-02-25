
class MLMediaSource : NSObject {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var rootMediaGroup: MLMediaGroup? { get }
  func mediaGroup(forIdentifier mediaGroupIdentifier: String) -> MLMediaGroup?
  func mediaGroups(forIdentifiers mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  func mediaObject(forIdentifier mediaObjectIdentifier: String) -> MLMediaObject?
  func mediaObjects(forIdentifiers mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
}
