
@available(iOS 8.0, *)
class PHFetchOptions : Object, Copying {
  var predicate: Predicate?
  var sortDescriptors: [SortDescriptor]?
  var includeHiddenAssets: Bool
  var includeAllBurstAssets: Bool
  @available(iOS 9.0, *)
  var includeAssetSourceTypes: PHAssetSourceType
  @available(iOS 9.0, *)
  var fetchLimit: Int
  var wantsIncrementalChangeDetails: Bool
  init()
  @available(iOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
