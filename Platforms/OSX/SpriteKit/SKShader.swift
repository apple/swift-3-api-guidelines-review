
@available(OSX 10.10, *)
class SKShader : Object, Copying, Coding {
  init(source: String)
  init(source: String, uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  @available(OSX 10.10, *)
  func copy(zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encode(with aCoder: Coder)
  init?(coder aDecoder: Coder)
}
