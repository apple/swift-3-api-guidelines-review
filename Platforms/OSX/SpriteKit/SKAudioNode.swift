
@available(OSX 10.11, *)
class SKAudioNode : SKNode, Coding {
  init?(coder aDecoder: Coder)
  convenience init(fileNamed name: String)
  convenience init(url: URL)
  var autoplayLooped: Bool
  var isPositional: Bool
  convenience init()
}
extension SKAction {
  @available(OSX 10.11, *)
  class func stereoPanTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func stereoPanBy(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverbTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeReverbBy(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstructionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeObstructionBy(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(OSX 10.11, *)
  class func changeOcclusionBy(v: Float, duration: TimeInterval) -> SKAction
}
