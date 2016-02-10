
@available(OSX 10.4, *)
class CISampler : Object, Copying {
  convenience init(image im: CIImage)
  init(image im: CIImage, options dict: [Object : AnyObject]? = [:])
  var definition: CIFilterShape { get }
  var extent: CGRect { get }
  convenience init()
  @available(OSX 10.4, *)
  func copyWith(zone: Zone = nil) -> AnyObject
}

extension CISampler {
  convenience init(im: CIImage!, elements: (Copying, AnyObject)...)
}
@available(OSX 10.4, *)
let kCISamplerAffineMatrix: String
@available(OSX 10.4, *)
let kCISamplerWrapMode: String
@available(OSX 10.4, *)
let kCISamplerFilterMode: String
@available(OSX 10.4, *)
let kCISamplerWrapBlack: String
@available(OSX 10.4, *)
let kCISamplerWrapClamp: String
@available(OSX 10.4, *)
let kCISamplerFilterNearest: String
@available(OSX 10.4, *)
let kCISamplerFilterLinear: String
@available(OSX 10.4, *)
let kCISamplerColorSpace: String
