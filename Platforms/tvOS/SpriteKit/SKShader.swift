
@available(tvOS 8.0, *)
class SKShader : NSObject, NSCopying, NSCoding {
  init(source source: String)
  init(source source: String, uniforms uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(_ uniform: SKUniform)
  func uniformNamed(_ name: String) -> SKUniform?
  func removeUniformNamed(_ name: String)
  @available(tvOS 8.0, *)
  func copy(with zone: NSZone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encode(with aCoder: NSCoder)
  init?(coder aDecoder: NSCoder)
}
