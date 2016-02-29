
@available(OSX 10.11, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(_ component: MDLComponent, for protocol: Protocol)
  func componentConforming(to protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(_ child: MDLObject)
  func boundingBox(atTime time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  @available(OSX 10.11, *)
  func add(_ object: MDLObject)
  @available(OSX 10.11, *)
  func remove(_ object: MDLObject)
  @available(OSX 10.11, *)
  var objects: [MDLObject] { get }
  @available(OSX 10.11, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
