
@available(iOS 5.0, *)
enum GLKViewDrawableColorFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case RGBA8888
  case RGB565
  case SRGBA8888
}
@available(iOS 5.0, *)
enum GLKViewDrawableDepthFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case FormatNone
  case Format16
  case Format24
}
@available(iOS 5.0, *)
enum GLKViewDrawableStencilFormat : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case FormatNone
  case Format8
}
@available(iOS 5.0, *)
enum GLKViewDrawableMultisample : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case MultisampleNone
  case Multisample4X
}
@available(iOS 5.0, *)
class GLKView : UIView, NSCoding {
  init(frame: CGRect, context: EAGLContext)
  @IBOutlet unowned(unsafe) var delegate: @sil_unmanaged GLKViewDelegate?
  var context: EAGLContext
  var drawableWidth: Int { get }
  var drawableHeight: Int { get }
  var drawableColorFormat: GLKViewDrawableColorFormat
  var drawableDepthFormat: GLKViewDrawableDepthFormat
  var drawableStencilFormat: GLKViewDrawableStencilFormat
  var drawableMultisample: GLKViewDrawableMultisample
  func bindDrawable()
  func deleteDrawable()
  var snapshot: UIImage { get }
  var enableSetNeedsDisplay: Bool
  func display()
  init(frame: CGRect)
  init?(coder aDecoder: NSCoder)
  convenience init()
}
protocol GLKViewDelegate : NSObjectProtocol {
  @available(iOS 5.0, *)
  func glkView(view: GLKView, drawInRect rect: CGRect)
}