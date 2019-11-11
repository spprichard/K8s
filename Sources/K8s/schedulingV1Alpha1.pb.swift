// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: k8s.io/api/scheduling/v1alpha1/generated.proto
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

/// DEPRECATED - This group version of PriorityClass is deprecated by scheduling.k8s.io/v1/PriorityClass.
/// PriorityClass defines mapping from a priority class name to the priority
/// integer value. The value can be any valid integer.
struct K8s_Io_Api_Scheduling_V1alpha1_PriorityClass {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  var metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta {
    get {return _storage._metadata ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta()}
    set {_uniqueStorage()._metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  var hasMetadata: Bool {return _storage._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  mutating func clearMetadata() {_uniqueStorage()._metadata = nil}

  /// The value of this priority class. This is the actual priority that pods
  /// receive when they have the name of this class in their pod spec.
  var value: Int32 {
    get {return _storage._value ?? 0}
    set {_uniqueStorage()._value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  var hasValue: Bool {return _storage._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  mutating func clearValue() {_uniqueStorage()._value = nil}

  /// globalDefault specifies whether this PriorityClass should be considered as
  /// the default priority for pods that do not have any priority class.
  /// Only one PriorityClass can be marked as `globalDefault`. However, if more than
  /// one PriorityClasses exists with their `globalDefault` field set to true,
  /// the smallest value of such global default PriorityClasses will be used as the default priority.
  /// +optional
  var globalDefault: Bool {
    get {return _storage._globalDefault ?? false}
    set {_uniqueStorage()._globalDefault = newValue}
  }
  /// Returns true if `globalDefault` has been explicitly set.
  var hasGlobalDefault: Bool {return _storage._globalDefault != nil}
  /// Clears the value of `globalDefault`. Subsequent reads from it will return its default value.
  mutating func clearGlobalDefault() {_uniqueStorage()._globalDefault = nil}

  /// description is an arbitrary string that usually provides guidelines on
  /// when this priority class should be used.
  /// +optional
  var description_p: String {
    get {return _storage._description_p ?? String()}
    set {_uniqueStorage()._description_p = newValue}
  }
  /// Returns true if `description_p` has been explicitly set.
  var hasDescription_p: Bool {return _storage._description_p != nil}
  /// Clears the value of `description_p`. Subsequent reads from it will return its default value.
  mutating func clearDescription_p() {_uniqueStorage()._description_p = nil}

  /// PreemptionPolicy is the Policy for preempting pods with lower priority.
  /// One of Never, PreemptLowerPriority.
  /// Defaults to PreemptLowerPriority if unset.
  /// This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
  /// +optional
  var preemptionPolicy: String {
    get {return _storage._preemptionPolicy ?? String()}
    set {_uniqueStorage()._preemptionPolicy = newValue}
  }
  /// Returns true if `preemptionPolicy` has been explicitly set.
  var hasPreemptionPolicy: Bool {return _storage._preemptionPolicy != nil}
  /// Clears the value of `preemptionPolicy`. Subsequent reads from it will return its default value.
  mutating func clearPreemptionPolicy() {_uniqueStorage()._preemptionPolicy = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// PriorityClassList is a collection of priority classes.
struct K8s_Io_Api_Scheduling_V1alpha1_PriorityClassList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard list metadata
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  var metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ListMeta {
    get {return _storage._metadata ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ListMeta()}
    set {_uniqueStorage()._metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  var hasMetadata: Bool {return _storage._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  mutating func clearMetadata() {_uniqueStorage()._metadata = nil}

  /// items is the list of PriorityClasses
  var items: [K8s_Io_Api_Scheduling_V1alpha1_PriorityClass] {
    get {return _storage._items}
    set {_uniqueStorage()._items = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "k8s.io.api.scheduling.v1alpha1"

extension K8s_Io_Api_Scheduling_V1alpha1_PriorityClass: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PriorityClass"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "value"),
    3: .same(proto: "globalDefault"),
    4: .same(proto: "description"),
    5: .same(proto: "preemptionPolicy"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta? = nil
    var _value: Int32? = nil
    var _globalDefault: Bool? = nil
    var _description_p: String? = nil
    var _preemptionPolicy: String? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _value = source._value
      _globalDefault = source._globalDefault
      _description_p = source._description_p
      _preemptionPolicy = source._preemptionPolicy
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._metadata)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._value)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._globalDefault)
        case 4: try decoder.decodeSingularStringField(value: &_storage._description_p)
        case 5: try decoder.decodeSingularStringField(value: &_storage._preemptionPolicy)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._metadata {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._value {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
      }
      if let v = _storage._globalDefault {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 3)
      }
      if let v = _storage._description_p {
        try visitor.visitSingularStringField(value: v, fieldNumber: 4)
      }
      if let v = _storage._preemptionPolicy {
        try visitor.visitSingularStringField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Scheduling_V1alpha1_PriorityClass, rhs: K8s_Io_Api_Scheduling_V1alpha1_PriorityClass) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._value != rhs_storage._value {return false}
        if _storage._globalDefault != rhs_storage._globalDefault {return false}
        if _storage._description_p != rhs_storage._description_p {return false}
        if _storage._preemptionPolicy != rhs_storage._preemptionPolicy {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Scheduling_V1alpha1_PriorityClassList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PriorityClassList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "items"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ListMeta? = nil
    var _items: [K8s_Io_Api_Scheduling_V1alpha1_PriorityClass] = []

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _items = source._items
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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._metadata)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._items)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._metadata {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._items.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._items, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Scheduling_V1alpha1_PriorityClassList, rhs: K8s_Io_Api_Scheduling_V1alpha1_PriorityClassList) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._items != rhs_storage._items {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}