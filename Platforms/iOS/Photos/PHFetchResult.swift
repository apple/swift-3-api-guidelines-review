
@available(iOS 8.0, *)
class PHFetchResult : NSObject, NSCopying, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(index: Int) -> AnyObject
  subscript (idx: Int) -> AnyObject { get }
  func containsObject(anObject: AnyObject) -> Bool
  func indexOfObject(anObject: AnyObject) -> Int
  func indexOfObject(anObject: AnyObject, inRange range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectsAtIndexes(indexes: NSIndexSet) -> [AnyObject]
  func enumerateObjectsUsingBlock(block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssetsWithMediaType(mediaType: PHAssetMediaType) -> Int
  init()
  @available(iOS 8.0, *)
  func copyWithZone(zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
