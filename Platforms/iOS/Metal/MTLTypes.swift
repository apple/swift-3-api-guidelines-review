
struct MTLOrigin {
  var x: Int
  var y: Int
  var z: Int
  init()
  init(x: Int, y: Int, z: Int)
}
func MTLOriginMake(x: Int, _ y: Int, _ z: Int) -> MTLOrigin
struct MTLSize {
  var width: Int
  var height: Int
  var depth: Int
  init()
  init(width: Int, height: Int, depth: Int)
}
func MTLSizeMake(width: Int, _ height: Int, _ depth: Int) -> MTLSize
struct MTLRegion {
  var origin: MTLOrigin
  var size: MTLSize
  init()
  init(origin: MTLOrigin, size: MTLSize)
}
func MTLRegionMake1D(x: Int, _ width: Int) -> MTLRegion
func MTLRegionMake2D(x: Int, _ y: Int, _ width: Int, _ height: Int) -> MTLRegion
func MTLRegionMake3D(x: Int, _ y: Int, _ z: Int, _ width: Int, _ height: Int, _ depth: Int) -> MTLRegion
