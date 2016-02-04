
@available(tvOS 9.0, *)
class SKAudioNode : SKNode, Coding {
  init?(coder aDecoder: Coder)
  convenience init(fileNamed name: String)
  convenience init(url: URL)
  var autoplayLooped: Bool
  var isPositional: Bool
  convenience init()
}
extension SKAction {
  @available(tvOS 9.0, *)
  class func stereoPanTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func stereoPanBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeReverbBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeObstructionBy(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionTo(v: Float, duration: TimeInterval) -> SKAction
  @available(tvOS 9.0, *)
  class func changeOcclusionBy(v: Float, duration: TimeInterval) -> SKAction
}
