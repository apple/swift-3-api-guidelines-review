
@available(iOS 8.0, *)
class PHFetchResult : Object, Copying, FastEnumeration {
  var count: Int { get }
  func objectAt(index: Int) -> AnyObject
  subscript (indexedSubscript idx: Int) -> AnyObject { get }
  func contains(anObject: AnyObject) -> Bool
  func indexOf(anObject: AnyObject) -> Int
  func index(of anObject: AnyObject, in range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectsAt(indexes: IndexSet) -> [AnyObject]
  func enumerateObjects(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAt(s: IndexSet, options opts: EnumerationOptions = [], usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssets(mediaType: PHAssetMediaType) -> Int
  init()
  @available(iOS 8.0, *)
  func copyWith(zone: Zone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumerating(state: UnsafeMutablePointer<FastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
