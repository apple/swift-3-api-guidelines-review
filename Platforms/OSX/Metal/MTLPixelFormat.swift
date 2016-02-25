
@available(OSX 10.11, *)
enum MTLPixelFormat : UInt {
  init?(rawValue rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case A8Unorm
  case R8Unorm
  case R8Snorm
  case R8Uint
  case R8Sint
  case R16Unorm
  case R16Snorm
  case R16Uint
  case R16Sint
  case R16Float
  case RG8Unorm
  case RG8Snorm
  case RG8Uint
  case RG8Sint
  case R32Uint
  case R32Sint
  case R32Float
  case RG16Unorm
  case RG16Snorm
  case RG16Uint
  case RG16Sint
  case RG16Float
  case RGBA8Unorm
  case RGBA8Unorm_sRGB
  case RGBA8Snorm
  case RGBA8Uint
  case RGBA8Sint
  case BGRA8Unorm
  case BGRA8Unorm_sRGB
  case RGB10A2Unorm
  case RGB10A2Uint
  case RG11B10Float
  case RGB9E5Float
  case RG32Uint
  case RG32Sint
  case RG32Float
  case RGBA16Unorm
  case RGBA16Snorm
  case RGBA16Uint
  case RGBA16Sint
  case RGBA16Float
  case RGBA32Uint
  case RGBA32Sint
  case RGBA32Float
  @available(OSX 10.11, *)
  case BC1_RGBA
  @available(OSX 10.11, *)
  case BC1_RGBA_sRGB
  @available(OSX 10.11, *)
  case BC2_RGBA
  @available(OSX 10.11, *)
  case BC2_RGBA_sRGB
  @available(OSX 10.11, *)
  case BC3_RGBA
  @available(OSX 10.11, *)
  case BC3_RGBA_sRGB
  @available(OSX 10.11, *)
  case BC4_RUnorm
  @available(OSX 10.11, *)
  case BC4_RSnorm
  @available(OSX 10.11, *)
  case BC5_RGUnorm
  @available(OSX 10.11, *)
  case BC5_RGSnorm
  @available(OSX 10.11, *)
  case BC6H_RGBFloat
  @available(OSX 10.11, *)
  case BC6H_RGBUfloat
  @available(OSX 10.11, *)
  case BC7_RGBAUnorm
  @available(OSX 10.11, *)
  case BC7_RGBAUnorm_sRGB
  case GBGR422
  case BGRG422
  case Depth32Float
  case Stencil8
  @available(OSX 10.11, *)
  case Depth24Unorm_Stencil8
  @available(OSX 10.11, *)
  case Depth32Float_Stencil8
}
