
class MLMediaSource : Object {
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  var mediaSourceIdentifier: String { get }
  var attributes: [String : AnyObject] { get }
  var rootMediaGroup: MLMediaGroup? { get }
  func mediaGroupFor(identifier mediaGroupIdentifier: String) -> MLMediaGroup?
  func mediaGroupsFor(identifiers mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  func mediaObjectFor(identifier mediaObjectIdentifier: String) -> MLMediaObject?
  func mediaObjectsFor(identifiers mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
  init()
}
