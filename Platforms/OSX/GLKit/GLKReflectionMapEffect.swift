
@available(OSX 10.8, *)
class GLKReflectionMapEffect : GLKBaseEffect, GLKNamedEffect {
  func prepareToDraw()
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var matrix: GLKMatrix3
  init()
}
