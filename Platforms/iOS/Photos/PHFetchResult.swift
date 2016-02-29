
@available(iOS 8.0, *)
class PHFetchResult : NSObject, NSCopying, NSFastEnumeration {
  var count: Int { get }
  func object(at index: Int) -> AnyObject
  subscript(_ idx: Int) -> AnyObject { get }
  func contains(_ anObject: AnyObject) -> Bool
  func index(of anObject: AnyObject) -> Int
  func index(of anObject: AnyObject, in range: NSRange) -> Int
  var firstObject: AnyObject? { get }
  var lastObject: AnyObject? { get }
  func objects(at indexes: NSIndexSet) -> [AnyObject]
  func enumerateObjects(_ block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(_ opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func enumerateObjects(at s: NSIndexSet, options opts: NSEnumerationOptions = [], using block: (AnyObject, Int, UnsafeMutablePointer<ObjCBool>) -> Void)
  func countOfAssets(with mediaType: PHAssetMediaType) -> Int
  @available(iOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(iOS 8.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
