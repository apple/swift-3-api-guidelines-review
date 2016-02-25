
@available(OSX 10.11, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(_ component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingToProtocol(_ protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(_ child: MDLObject)
  func boundingBoxAtTime(_ time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  @available(OSX 10.11, *)
  var name: String
}
@available(OSX 10.11, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  @available(OSX 10.11, *)
  func addObject(_ object: MDLObject)
  @available(OSX 10.11, *)
  func removeObject(_ object: MDLObject)
  @available(OSX 10.11, *)
  var objects: [MDLObject] { get }
  @available(OSX 10.11, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
