
@available(tvOS 5.0, *)
class GLKReflectionMapEffect : GLKBaseEffect, GLKNamedEffect {
  func prepareToDraw()
  var textureCubeMap: GLKEffectPropertyTexture { get }
  var matrix: GLKMatrix3
  init()
}
