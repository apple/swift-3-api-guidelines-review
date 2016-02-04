
typealias Py_UCS4 = UInt32
typealias Py_UNICODE = UInt16
struct PyUnicodeObject {
  var ob_refcnt: Py_ssize_t
  var ob_type: UnsafeMutablePointer<_typeobject>
  var length: Py_ssize_t
  var str: UnsafeMutablePointer<Py_UNICODE>
  var hash: Int
  var defenc: UnsafeMutablePointer<PyObject>
  init()
  init(ob_refcnt: Py_ssize_t, ob_type: UnsafeMutablePointer<_typeobject>, length: Py_ssize_t, str: UnsafeMutablePointer<Py_UNICODE>, hash: Int, defenc: UnsafeMutablePointer<PyObject>)
}
var PyUnicode_Type: PyTypeObject
func PyUnicodeUCS2_FromUnicode(u: UnsafePointer<Py_UNICODE>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromStringAndSize(u: UnsafePointer<Int8>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromString(u: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUnicode(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<Py_UNICODE>
func PyUnicodeUCS2_GetSize(unicode: UnsafeMutablePointer<PyObject>) -> Py_ssize_t
func PyUnicodeUCS2_GetMax() -> Py_UNICODE
func PyUnicodeUCS2_Resize(unicode: UnsafeMutablePointer<UnsafeMutablePointer<PyObject>>, _ length: Py_ssize_t) -> Int32
func PyUnicodeUCS2_FromEncodedObject(obj: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromObject(obj: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromFormatV(_: UnsafePointer<Int8>, _: CVaListPointer) -> UnsafeMutablePointer<PyObject>
func _PyUnicode_FormatAdvanced(obj: UnsafeMutablePointer<PyObject>, _ format_spec: UnsafeMutablePointer<Py_UNICODE>, _ format_spec_len: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_FromWideChar(w: UnsafePointer<wchar_t>, _ size: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsWideChar(unicode: UnsafeMutablePointer<PyUnicodeObject>, _ w: UnsafeMutablePointer<wchar_t>, _ size: Py_ssize_t) -> Py_ssize_t
func PyUnicodeUCS2_FromOrdinal(ordinal: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_ClearFreelist() -> Int32
func _PyUnicodeUCS2_AsDefaultEncodedString(_: UnsafeMutablePointer<PyObject>, _: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_GetDefaultEncoding() -> UnsafePointer<Int8>
func PyUnicodeUCS2_SetDefaultEncoding(encoding: UnsafePointer<Int8>) -> Int32
func PyUnicodeUCS2_Decode(s: UnsafePointer<Int8>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Encode(s: UnsafePointer<Py_UNICODE>, _ size: Py_ssize_t, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsEncodedObject(unicode: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsEncodedString(unicode: UnsafeMutablePointer<PyObject>, _ encoding: UnsafePointer<Int8>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_BuildEncodingMap(string: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_DecodeUTF7(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_DecodeUTF7Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicode_EncodeUTF7(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ base64SetO: Int32, _ base64WhiteSpace: Int32, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF8(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF8Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF8String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF8(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF32(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF32Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF32String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF32(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF16(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUTF16Stateful(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: UnsafeMutablePointer<Int32>, _ consumed: UnsafeMutablePointer<Py_ssize_t>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUTF16String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUTF16(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>, _ byteorder: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeUnicodeEscape(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsUnicodeEscapeString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeUnicodeEscape(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeRawUnicodeEscape(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsRawUnicodeEscapeString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeRawUnicodeEscape(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func _PyUnicode_DecodeUnicodeInternal(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeLatin1(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsLatin1String(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeLatin1(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeASCII(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsASCIIString(unicode: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeASCII(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_DecodeCharmap(string: UnsafePointer<Int8>, _ length: Py_ssize_t, _ mapping: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_AsCharmapString(unicode: UnsafeMutablePointer<PyObject>, _ mapping: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeCharmap(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ mapping: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_TranslateCharmap(data: UnsafePointer<Py_UNICODE>, _ length: Py_ssize_t, _ table: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_EncodeDecimal(s: UnsafeMutablePointer<Py_UNICODE>, _ length: Py_ssize_t, _ output: UnsafeMutablePointer<Int8>, _ errors: UnsafePointer<Int8>) -> Int32
func PyUnicodeUCS2_Concat(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Split(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>, _ maxsplit: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Splitlines(s: UnsafeMutablePointer<PyObject>, _ keepends: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Partition(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_RPartition(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_RSplit(s: UnsafeMutablePointer<PyObject>, _ sep: UnsafeMutablePointer<PyObject>, _ maxsplit: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Translate(str: UnsafeMutablePointer<PyObject>, _ table: UnsafeMutablePointer<PyObject>, _ errors: UnsafePointer<Int8>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Join(separator: UnsafeMutablePointer<PyObject>, _ seq: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Tailmatch(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t, _ direction: Int32) -> Py_ssize_t
func PyUnicodeUCS2_Find(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t, _ direction: Int32) -> Py_ssize_t
func PyUnicodeUCS2_Count(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ start: Py_ssize_t, _ end: Py_ssize_t) -> Py_ssize_t
func PyUnicodeUCS2_Replace(str: UnsafeMutablePointer<PyObject>, _ substr: UnsafeMutablePointer<PyObject>, _ replstr: UnsafeMutablePointer<PyObject>, _ maxcount: Py_ssize_t) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Compare(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>) -> Int32
func PyUnicodeUCS2_RichCompare(left: UnsafeMutablePointer<PyObject>, _ right: UnsafeMutablePointer<PyObject>, _ op: Int32) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Format(format: UnsafeMutablePointer<PyObject>, _ args: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func PyUnicodeUCS2_Contains(container: UnsafeMutablePointer<PyObject>, _ element: UnsafeMutablePointer<PyObject>) -> Int32
func _PyUnicode_XStrip(self: UnsafeMutablePointer<PyUnicodeObject>, _ striptype: Int32, _ sepobj: UnsafeMutablePointer<PyObject>) -> UnsafeMutablePointer<PyObject>
func _PyUnicodeUCS2_IsLowercase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsUppercase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsTitlecase(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsWhitespace(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsLinebreak(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToLowercase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToUppercase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToTitlecase(ch: Py_UNICODE) -> Py_UNICODE
func _PyUnicodeUCS2_ToDecimalDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_ToNumeric(ch: Py_UNICODE) -> Double
func _PyUnicodeUCS2_IsDecimalDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsDigit(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsNumeric(ch: Py_UNICODE) -> Int32
func _PyUnicodeUCS2_IsAlpha(ch: Py_UNICODE) -> Int32
