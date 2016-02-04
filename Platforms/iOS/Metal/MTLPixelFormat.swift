
@available(iOS 8.0, *)
enum MTLPixelFormat : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Invalid
  case A8Unorm
  case R8Unorm
  @available(iOS 8.0, *)
  case R8Unorm_sRGB
  case R8Snorm
  case R8Uint
  case R8Sint
  case R16Unorm
  case R16Snorm
  case R16Uint
  case R16Sint
  case R16Float
  case RG8Unorm
  @available(iOS 8.0, *)
  case RG8Unorm_sRGB
  case RG8Snorm
  case RG8Uint
  case RG8Sint
  @available(iOS 8.0, *)
  case B5G6R5Unorm
  @available(iOS 8.0, *)
  case A1BGR5Unorm
  @available(iOS 8.0, *)
  case ABGR4Unorm
  @available(iOS 8.0, *)
  case BGR5A1Unorm
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
  @available(iOS 8.0, *)
  case PVRTC_RGB_2BPP
  @available(iOS 8.0, *)
  case PVRTC_RGB_2BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGB_4BPP
  @available(iOS 8.0, *)
  case PVRTC_RGB_4BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGBA_2BPP
  @available(iOS 8.0, *)
  case PVRTC_RGBA_2BPP_sRGB
  @available(iOS 8.0, *)
  case PVRTC_RGBA_4BPP
  @available(iOS 8.0, *)
  case PVRTC_RGBA_4BPP_sRGB
  @available(iOS 8.0, *)
  case EAC_R11Unorm
  @available(iOS 8.0, *)
  case EAC_R11Snorm
  @available(iOS 8.0, *)
  case EAC_RG11Unorm
  @available(iOS 8.0, *)
  case EAC_RG11Snorm
  @available(iOS 8.0, *)
  case EAC_RGBA8
  @available(iOS 8.0, *)
  case EAC_RGBA8_sRGB
  @available(iOS 8.0, *)
  case ETC2_RGB8
  @available(iOS 8.0, *)
  case ETC2_RGB8_sRGB
  @available(iOS 8.0, *)
  case ETC2_RGB8A1
  @available(iOS 8.0, *)
  case ETC2_RGB8A1_sRGB
  @available(iOS 8.0, *)
  case ASTC_4x4_sRGB
  @available(iOS 8.0, *)
  case ASTC_5x4_sRGB
  @available(iOS 8.0, *)
  case ASTC_5x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_6x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_6x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_8x8_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x5_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x6_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x8_sRGB
  @available(iOS 8.0, *)
  case ASTC_10x10_sRGB
  @available(iOS 8.0, *)
  case ASTC_12x10_sRGB
  @available(iOS 8.0, *)
  case ASTC_12x12_sRGB
  @available(iOS 8.0, *)
  case ASTC_4x4_LDR
  @available(iOS 8.0, *)
  case ASTC_5x4_LDR
  @available(iOS 8.0, *)
  case ASTC_5x5_LDR
  @available(iOS 8.0, *)
  case ASTC_6x5_LDR
  @available(iOS 8.0, *)
  case ASTC_6x6_LDR
  @available(iOS 8.0, *)
  case ASTC_8x5_LDR
  @available(iOS 8.0, *)
  case ASTC_8x6_LDR
  @available(iOS 8.0, *)
  case ASTC_8x8_LDR
  @available(iOS 8.0, *)
  case ASTC_10x5_LDR
  @available(iOS 8.0, *)
  case ASTC_10x6_LDR
  @available(iOS 8.0, *)
  case ASTC_10x8_LDR
  @available(iOS 8.0, *)
  case ASTC_10x10_LDR
  @available(iOS 8.0, *)
  case ASTC_12x10_LDR
  @available(iOS 8.0, *)
  case ASTC_12x12_LDR
  case GBGR422
  case BGRG422
  case Depth32Float
  case Stencil8
  @available(iOS 9.0, *)
  case Depth32Float_Stencil8
}
