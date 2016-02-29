
@available(tvOS 9.0, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(_ component: MDLComponent, for protocol: Protocol)
  func componentConforming(to protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(_ child: MDLObject)
  func boundingBox(atTime time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  @available(tvOS 9.0, *)
  var name: String
}
@available(tvOS 9.0, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  @available(tvOS 9.0, *)
  func add(_ object: MDLObject)
  @available(tvOS 9.0, *)
  func remove(_ object: MDLObject)
  @available(tvOS 9.0, *)
  var objects: [MDLObject] { get }
  @available(tvOS 9.0, *)
  func countByEnumerating(with state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
