
@available(iOS 8.0, *)
class PHFetchResult : NSObject, NSCopying, NSFastEnumeration {
  var count: Int { get }
  func objectAtIndex(_ index: Int) -> AnyObject
  subscript(_ idx: Int) -> AnyObject { get }
  func containsObject(_ anObject: AnyObject) -> Bool
  func indexOfObject(_ anObject: AnyObject) -> Int
  func indexOfObject(_ anObject: AnyObject, inRange range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objectsAtIndexes(_ indexes: NSIndexSet) -> [AnyObject]
  func enumerateObjectsUsingBlock(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsWithOptions(_ opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjectsAtIndexes(_ s: NSIndexSet, options opts: NSEnumerationOptions, usingBlock block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssetsWithMediaType(_ mediaType: PHAssetMediaType) -> Int
  @available(iOS 8.0, *)
  func copyWithZone(_ zone: NSZone) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
