
@available(tvOS 9.0, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingToProtocol(protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  @available(tvOS 9.0, *)
  var name: String
}
@available(tvOS 9.0, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  init()
  @available(tvOS 9.0, *)
  func addObject(object: MDLObject)
  @available(tvOS 9.0, *)
  func removeObject(object: MDLObject)
  @available(tvOS 9.0, *)
  var objects: [MDLObject] { get }
  @available(tvOS 9.0, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
