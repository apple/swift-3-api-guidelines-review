
typealias cl_gl_object_type = cl_uint
typealias cl_gl_texture_info = cl_uint
typealias cl_gl_platform_info = cl_uint
typealias cl_GLsync = COpaquePointer
var CL_GL_OBJECT_BUFFER: Int32 { get }
var CL_GL_OBJECT_TEXTURE2D: Int32 { get }
var CL_GL_OBJECT_TEXTURE3D: Int32 { get }
var CL_GL_OBJECT_RENDERBUFFER: Int32 { get }
var CL_GL_OBJECT_TEXTURE2D_ARRAY: Int32 { get }
var CL_GL_OBJECT_TEXTURE1D: Int32 { get }
var CL_GL_OBJECT_TEXTURE1D_ARRAY: Int32 { get }
var CL_GL_OBJECT_TEXTURE_BUFFER: Int32 { get }
var CL_GL_TEXTURE_TARGET: Int32 { get }
var CL_GL_MIPMAP_LEVEL: Int32 { get }
var CL_GL_NUM_SAMPLES: Int32 { get }
@available(OSX 10.6, *)
func clCreateFromGLBuffer(_: cl_context, _: cl_mem_flags, _: cl_GLuint, _: UnsafeMutablePointer<Int32>) -> cl_mem
@available(OSX 10.8, *)
func clCreateFromGLTexture(_: cl_context, _: cl_mem_flags, _: cl_GLenum, _: cl_GLint, _: cl_GLuint, _: UnsafeMutablePointer<cl_int>) -> cl_mem
@available(OSX 10.6, *)
func clCreateFromGLRenderbuffer(_: cl_context, _: cl_mem_flags, _: cl_GLuint, _: UnsafeMutablePointer<cl_int>) -> cl_mem
@available(OSX 10.6, *)
func clGetGLObjectInfo(_: cl_mem, _: UnsafeMutablePointer<cl_gl_object_type>, _: UnsafeMutablePointer<cl_GLuint>) -> cl_int
@available(OSX 10.6, *)
func clGetGLTextureInfo(_: cl_mem, _: cl_gl_texture_info, _: Int, _: UnsafeMutablePointer<Void>, _: UnsafeMutablePointer<Int>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueAcquireGLObjects(_: cl_command_queue, _: cl_uint, _: UnsafePointer<cl_mem>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
@available(OSX 10.6, *)
func clEnqueueReleaseGLObjects(_: cl_command_queue, _: cl_uint, _: UnsafePointer<cl_mem>, _: cl_uint, _: UnsafePointer<cl_event>, _: UnsafeMutablePointer<cl_event>) -> cl_int
