
@available(OSX 10.11, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingToProtocol(protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(child: MDLObject)
  func boundingBoxAtTime(time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  init()
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  init()
  @available(OSX 10.11, *)
  func addObject(object: MDLObject)
  @available(OSX 10.11, *)
  func removeObject(object: MDLObject)
  @available(OSX 10.11, *)
  var objects: [MDLObject] { get }
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
