// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: k8s.io/apimachinery/pkg/runtime/generated.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

//
//Copyright The Kubernetes Authors.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.

// This file was autogenerated by go-to-protobuf. Do not edit it manually!

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// RawExtension is used to hold extensions in external versions.
///
/// To use this, make a field which has RawExtension as its type in your external, versioned
/// struct, and Object in your internal struct. You also need to register your
/// various plugin types.
///
/// // Internal package:
/// type MyAPIObject struct {
/// 	runtime.TypeMeta `json:",inline"`
/// 	MyPlugin runtime.Object `json:"myPlugin"`
/// }
/// type PluginA struct {
/// 	AOption string `json:"aOption"`
/// }
///
/// // External package:
/// type MyAPIObject struct {
/// 	runtime.TypeMeta `json:",inline"`
/// 	MyPlugin runtime.RawExtension `json:"myPlugin"`
/// }
/// type PluginA struct {
/// 	AOption string `json:"aOption"`
/// }
///
/// // On the wire, the JSON will look something like this:
/// {
/// 	"kind":"MyAPIObject",
/// 	"apiVersion":"v1",
/// 	"myPlugin": {
/// 		"kind":"PluginA",
/// 		"aOption":"foo",
/// 	},
/// }
///
/// So what happens? Decode first uses json or yaml to unmarshal the serialized data into
/// your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked.
/// The next step is to copy (using pkg/conversion) into the internal struct. The runtime
/// package's DefaultScheme has conversion functions installed which will unpack the
/// JSON stored in RawExtension, turning it into the correct object type, and storing it
/// in the Object. (TODO: In the case where the object is of an unknown type, a
/// runtime.Unknown object will be created and stored.)
///
/// +k8s:deepcopy-gen=true
/// +protobuf=true
/// +k8s:openapi-gen=true
struct K8s_Io_Apimachinery_Pkg_Runtime_RawExtension {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Raw is the underlying serialization of this object.
  ///
  /// TODO: Determine how to detect ContentType and ContentEncoding of 'Raw' data.
  var raw: Data {
    get {return _raw ?? SwiftProtobuf.Internal.emptyData}
    set {_raw = newValue}
  }
  /// Returns true if `raw` has been explicitly set.
  var hasRaw: Bool {return self._raw != nil}
  /// Clears the value of `raw`. Subsequent reads from it will return its default value.
  mutating func clearRaw() {self._raw = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _raw: Data? = nil
}

/// TypeMeta is shared by all top level objects. The proper way to use it is to inline it in your type,
/// like this:
/// type MyAwesomeAPIObject struct {
///      runtime.TypeMeta    `json:",inline"`
///      ... // other fields
/// }
/// func (obj *MyAwesomeAPIObject) SetGroupVersionKind(gvk *metav1.GroupVersionKind) { metav1.UpdateTypeMeta(obj,gvk) }; GroupVersionKind() *GroupVersionKind
///
/// TypeMeta is provided here for convenience. You may use it directly from this package or define
/// your own with the same fields.
///
/// +k8s:deepcopy-gen=false
/// +protobuf=true
/// +k8s:openapi-gen=true
struct K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// +optional
  var apiVersion: String {
    get {return _apiVersion ?? String()}
    set {_apiVersion = newValue}
  }
  /// Returns true if `apiVersion` has been explicitly set.
  var hasApiVersion: Bool {return self._apiVersion != nil}
  /// Clears the value of `apiVersion`. Subsequent reads from it will return its default value.
  mutating func clearApiVersion() {self._apiVersion = nil}

  /// +optional
  var kind: String {
    get {return _kind ?? String()}
    set {_kind = newValue}
  }
  /// Returns true if `kind` has been explicitly set.
  var hasKind: Bool {return self._kind != nil}
  /// Clears the value of `kind`. Subsequent reads from it will return its default value.
  mutating func clearKind() {self._kind = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _apiVersion: String? = nil
  fileprivate var _kind: String? = nil
}

/// Unknown allows api objects with unknown types to be passed-through. This can be used
/// to deal with the API objects from a plug-in. Unknown objects still have functioning
/// TypeMeta features-- kind, version, etc.
/// TODO: Make this object have easy access to field based accessors and settors for
/// metadata and field mutatation.
///
/// +k8s:deepcopy-gen=true
/// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
/// +protobuf=true
/// +k8s:openapi-gen=true
struct K8s_Io_Apimachinery_Pkg_Runtime_Unknown {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var typeMeta: K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta {
    get {return _storage._typeMeta ?? K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta()}
    set {_uniqueStorage()._typeMeta = newValue}
  }
  /// Returns true if `typeMeta` has been explicitly set.
  var hasTypeMeta: Bool {return _storage._typeMeta != nil}
  /// Clears the value of `typeMeta`. Subsequent reads from it will return its default value.
  mutating func clearTypeMeta() {_uniqueStorage()._typeMeta = nil}

  /// Raw will hold the complete serialized object which couldn't be matched
  /// with a registered type. Most likely, nothing should be done with this
  /// except for passing it through the system.
  var raw: Data {
    get {return _storage._raw ?? SwiftProtobuf.Internal.emptyData}
    set {_uniqueStorage()._raw = newValue}
  }
  /// Returns true if `raw` has been explicitly set.
  var hasRaw: Bool {return _storage._raw != nil}
  /// Clears the value of `raw`. Subsequent reads from it will return its default value.
  mutating func clearRaw() {_uniqueStorage()._raw = nil}

  /// ContentEncoding is encoding used to encode 'Raw' data.
  /// Unspecified means no encoding.
  var contentEncoding: String {
    get {return _storage._contentEncoding ?? String()}
    set {_uniqueStorage()._contentEncoding = newValue}
  }
  /// Returns true if `contentEncoding` has been explicitly set.
  var hasContentEncoding: Bool {return _storage._contentEncoding != nil}
  /// Clears the value of `contentEncoding`. Subsequent reads from it will return its default value.
  mutating func clearContentEncoding() {_uniqueStorage()._contentEncoding = nil}

  /// ContentType  is serialization method used to serialize 'Raw'.
  /// Unspecified means ContentTypeJSON.
  var contentType: String {
    get {return _storage._contentType ?? String()}
    set {_uniqueStorage()._contentType = newValue}
  }
  /// Returns true if `contentType` has been explicitly set.
  var hasContentType: Bool {return _storage._contentType != nil}
  /// Clears the value of `contentType`. Subsequent reads from it will return its default value.
  mutating func clearContentType() {_uniqueStorage()._contentType = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "k8s.io.apimachinery.pkg.runtime"

extension K8s_Io_Apimachinery_Pkg_Runtime_RawExtension: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".RawExtension"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "raw"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBytesField(value: &self._raw)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._raw {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Apimachinery_Pkg_Runtime_RawExtension, rhs: K8s_Io_Apimachinery_Pkg_Runtime_RawExtension) -> Bool {
    if lhs._raw != rhs._raw {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".TypeMeta"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "apiVersion"),
    2: .same(proto: "kind"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self._apiVersion)
      case 2: try decoder.decodeSingularStringField(value: &self._kind)
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._apiVersion {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    if let v = self._kind {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta, rhs: K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta) -> Bool {
    if lhs._apiVersion != rhs._apiVersion {return false}
    if lhs._kind != rhs._kind {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Apimachinery_Pkg_Runtime_Unknown: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Unknown"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "typeMeta"),
    2: .same(proto: "raw"),
    3: .same(proto: "contentEncoding"),
    4: .same(proto: "contentType"),
  ]

  fileprivate class _StorageClass {
    var _typeMeta: K8s_Io_Apimachinery_Pkg_Runtime_TypeMeta? = nil
    var _raw: Data? = nil
    var _contentEncoding: String? = nil
    var _contentType: String? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _typeMeta = source._typeMeta
      _raw = source._raw
      _contentEncoding = source._contentEncoding
      _contentType = source._contentType
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._typeMeta)
        case 2: try decoder.decodeSingularBytesField(value: &_storage._raw)
        case 3: try decoder.decodeSingularStringField(value: &_storage._contentEncoding)
        case 4: try decoder.decodeSingularStringField(value: &_storage._contentType)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._typeMeta {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._raw {
        try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
      }
      if let v = _storage._contentEncoding {
        try visitor.visitSingularStringField(value: v, fieldNumber: 3)
      }
      if let v = _storage._contentType {
        try visitor.visitSingularStringField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Apimachinery_Pkg_Runtime_Unknown, rhs: K8s_Io_Apimachinery_Pkg_Runtime_Unknown) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._typeMeta != rhs_storage._typeMeta {return false}
        if _storage._raw != rhs_storage._raw {return false}
        if _storage._contentEncoding != rhs_storage._contentEncoding {return false}
        if _storage._contentType != rhs_storage._contentType {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}