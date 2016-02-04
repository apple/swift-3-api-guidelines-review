
class MLMediaSource : Object {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var rootMediaGroup: MLMediaGroup? { get }
  func mediaGroupForIdentifier(mediaGroupIdentifier: String) -> MLMediaGroup?
  func mediaGroupsForIdentifiers(mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  func mediaObjectForIdentifier(mediaObjectIdentifier: String) -> MLMediaObject?
  func mediaObjectsForIdentifiers(mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
  init()
}
