
@available(iOS 9.0, *)
class MDLObject : NSObject, MDLNamed {
  func setComponent(_ component: MDLComponent, forProtocol protocol: Protocol)
  func componentConformingToProtocol(_ protocol: Protocol) -> MDLComponent?
  weak var parent: @sil_weak MDLObject?
  var transform: MDLTransformComponent?
  var children: MDLObjectContainerComponent
  func addChild(_ child: MDLObject)
  func boundingBoxAtTime(_ time: NSTimeInterval) -> MDLAxisAlignedBoundingBox
  @available(iOS 9.0, *)
  var name: String
}
@available(iOS 9.0, *)
class MDLObjectContainer : NSObject, MDLObjectContainerComponent {
  @available(iOS 9.0, *)
  func addObject(_ object: MDLObject)
  @available(iOS 9.0, *)
  func removeObject(_ object: MDLObject)
  @available(iOS 9.0, *)
  var objects: [MDLObject] { get }
  @available(iOS 9.0, *)
  func countByEnumeratingWithState(_ state: UnsafeMutablePointer<NSFastEnumerationState>, objects buffer: AutoreleasingUnsafeMutablePointer<AnyObject?>, count len: Int) -> Int
}
