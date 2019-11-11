// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: k8s.io/api/batch/v1/generated.proto
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

/// Job represents the configuration of a single job.
struct K8s_Io_Api_Batch_V1_Job {
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

  /// Specification of the desired behavior of a job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  var spec: K8s_Io_Api_Batch_V1_JobSpec {
    get {return _storage._spec ?? K8s_Io_Api_Batch_V1_JobSpec()}
    set {_uniqueStorage()._spec = newValue}
  }
  /// Returns true if `spec` has been explicitly set.
  var hasSpec: Bool {return _storage._spec != nil}
  /// Clears the value of `spec`. Subsequent reads from it will return its default value.
  mutating func clearSpec() {_uniqueStorage()._spec = nil}

  /// Current status of a job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  var status: K8s_Io_Api_Batch_V1_JobStatus {
    get {return _storage._status ?? K8s_Io_Api_Batch_V1_JobStatus()}
    set {_uniqueStorage()._status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return _storage._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {_uniqueStorage()._status = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobCondition describes current state of a job.
struct K8s_Io_Api_Batch_V1_JobCondition {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Type of job condition, Complete or Failed.
  var type: String {
    get {return _storage._type ?? String()}
    set {_uniqueStorage()._type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return _storage._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {_uniqueStorage()._type = nil}

  /// Status of the condition, one of True, False, Unknown.
  var status: String {
    get {return _storage._status ?? String()}
    set {_uniqueStorage()._status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  var hasStatus: Bool {return _storage._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  mutating func clearStatus() {_uniqueStorage()._status = nil}

  /// Last time the condition was checked.
  /// +optional
  var lastProbeTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time {
    get {return _storage._lastProbeTime ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time()}
    set {_uniqueStorage()._lastProbeTime = newValue}
  }
  /// Returns true if `lastProbeTime` has been explicitly set.
  var hasLastProbeTime: Bool {return _storage._lastProbeTime != nil}
  /// Clears the value of `lastProbeTime`. Subsequent reads from it will return its default value.
  mutating func clearLastProbeTime() {_uniqueStorage()._lastProbeTime = nil}

  /// Last time the condition transit from one status to another.
  /// +optional
  var lastTransitionTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time {
    get {return _storage._lastTransitionTime ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time()}
    set {_uniqueStorage()._lastTransitionTime = newValue}
  }
  /// Returns true if `lastTransitionTime` has been explicitly set.
  var hasLastTransitionTime: Bool {return _storage._lastTransitionTime != nil}
  /// Clears the value of `lastTransitionTime`. Subsequent reads from it will return its default value.
  mutating func clearLastTransitionTime() {_uniqueStorage()._lastTransitionTime = nil}

  /// (brief) reason for the condition's last transition.
  /// +optional
  var reason: String {
    get {return _storage._reason ?? String()}
    set {_uniqueStorage()._reason = newValue}
  }
  /// Returns true if `reason` has been explicitly set.
  var hasReason: Bool {return _storage._reason != nil}
  /// Clears the value of `reason`. Subsequent reads from it will return its default value.
  mutating func clearReason() {_uniqueStorage()._reason = nil}

  /// Human readable message indicating details about last transition.
  /// +optional
  var message: String {
    get {return _storage._message ?? String()}
    set {_uniqueStorage()._message = newValue}
  }
  /// Returns true if `message` has been explicitly set.
  var hasMessage: Bool {return _storage._message != nil}
  /// Clears the value of `message`. Subsequent reads from it will return its default value.
  mutating func clearMessage() {_uniqueStorage()._message = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobList is a collection of jobs.
struct K8s_Io_Api_Batch_V1_JobList {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard list metadata.
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

  /// items is the list of Jobs.
  var items: [K8s_Io_Api_Batch_V1_Job] {
    get {return _storage._items}
    set {_uniqueStorage()._items = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobSpec describes how the job execution will look like.
struct K8s_Io_Api_Batch_V1_JobSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies the maximum desired number of pods the job should
  /// run at any given time. The actual number of pods running in steady state will
  /// be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism),
  /// i.e. when the work left to do is less than max parallelism.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// +optional
  var parallelism: Int32 {
    get {return _storage._parallelism ?? 0}
    set {_uniqueStorage()._parallelism = newValue}
  }
  /// Returns true if `parallelism` has been explicitly set.
  var hasParallelism: Bool {return _storage._parallelism != nil}
  /// Clears the value of `parallelism`. Subsequent reads from it will return its default value.
  mutating func clearParallelism() {_uniqueStorage()._parallelism = nil}

  /// Specifies the desired number of successfully finished pods the
  /// job should be run with.  Setting to nil means that the success of any
  /// pod signals the success of all pods, and allows parallelism to have any positive
  /// value.  Setting to 1 means that parallelism is limited to 1 and the success of that
  /// pod signals the success of the job.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// +optional
  var completions: Int32 {
    get {return _storage._completions ?? 0}
    set {_uniqueStorage()._completions = newValue}
  }
  /// Returns true if `completions` has been explicitly set.
  var hasCompletions: Bool {return _storage._completions != nil}
  /// Clears the value of `completions`. Subsequent reads from it will return its default value.
  mutating func clearCompletions() {_uniqueStorage()._completions = nil}

  /// Specifies the duration in seconds relative to the startTime that the job may be active
  /// before the system tries to terminate it; value must be positive integer
  /// +optional
  var activeDeadlineSeconds: Int64 {
    get {return _storage._activeDeadlineSeconds ?? 0}
    set {_uniqueStorage()._activeDeadlineSeconds = newValue}
  }
  /// Returns true if `activeDeadlineSeconds` has been explicitly set.
  var hasActiveDeadlineSeconds: Bool {return _storage._activeDeadlineSeconds != nil}
  /// Clears the value of `activeDeadlineSeconds`. Subsequent reads from it will return its default value.
  mutating func clearActiveDeadlineSeconds() {_uniqueStorage()._activeDeadlineSeconds = nil}

  /// Specifies the number of retries before marking this job failed.
  /// Defaults to 6
  /// +optional
  var backoffLimit: Int32 {
    get {return _storage._backoffLimit ?? 0}
    set {_uniqueStorage()._backoffLimit = newValue}
  }
  /// Returns true if `backoffLimit` has been explicitly set.
  var hasBackoffLimit: Bool {return _storage._backoffLimit != nil}
  /// Clears the value of `backoffLimit`. Subsequent reads from it will return its default value.
  mutating func clearBackoffLimit() {_uniqueStorage()._backoffLimit = nil}

  /// A label query over pods that should match the pod count.
  /// Normally, the system sets this field for you.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// +optional
  var selector: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_LabelSelector {
    get {return _storage._selector ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_LabelSelector()}
    set {_uniqueStorage()._selector = newValue}
  }
  /// Returns true if `selector` has been explicitly set.
  var hasSelector: Bool {return _storage._selector != nil}
  /// Clears the value of `selector`. Subsequent reads from it will return its default value.
  mutating func clearSelector() {_uniqueStorage()._selector = nil}

  /// manualSelector controls generation of pod labels and pod selectors.
  /// Leave `manualSelector` unset unless you are certain what you are doing.
  /// When false or unset, the system pick labels unique to this job
  /// and appends those labels to the pod template.  When true,
  /// the user is responsible for picking unique labels and specifying
  /// the selector.  Failure to pick a unique label may cause this
  /// and other jobs to not function correctly.  However, You may see
  /// `manualSelector=true` in jobs that were created with the old `extensions/v1beta1`
  /// API.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
  /// +optional
  var manualSelector: Bool {
    get {return _storage._manualSelector ?? false}
    set {_uniqueStorage()._manualSelector = newValue}
  }
  /// Returns true if `manualSelector` has been explicitly set.
  var hasManualSelector: Bool {return _storage._manualSelector != nil}
  /// Clears the value of `manualSelector`. Subsequent reads from it will return its default value.
  mutating func clearManualSelector() {_uniqueStorage()._manualSelector = nil}

  /// Describes the pod that will be created when executing a job.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  var template: K8s_Io_Api_Core_V1_PodTemplateSpec {
    get {return _storage._template ?? K8s_Io_Api_Core_V1_PodTemplateSpec()}
    set {_uniqueStorage()._template = newValue}
  }
  /// Returns true if `template` has been explicitly set.
  var hasTemplate: Bool {return _storage._template != nil}
  /// Clears the value of `template`. Subsequent reads from it will return its default value.
  mutating func clearTemplate() {_uniqueStorage()._template = nil}

  /// ttlSecondsAfterFinished limits the lifetime of a Job that has finished
  /// execution (either Complete or Failed). If this field is set,
  /// ttlSecondsAfterFinished after the Job finishes, it is eligible to be
  /// automatically deleted. When the Job is being deleted, its lifecycle
  /// guarantees (e.g. finalizers) will be honored. If this field is unset,
  /// the Job won't be automatically deleted. If this field is set to zero,
  /// the Job becomes eligible to be deleted immediately after it finishes.
  /// This field is alpha-level and is only honored by servers that enable the
  /// TTLAfterFinished feature.
  /// +optional
  var ttlSecondsAfterFinished: Int32 {
    get {return _storage._ttlSecondsAfterFinished ?? 0}
    set {_uniqueStorage()._ttlSecondsAfterFinished = newValue}
  }
  /// Returns true if `ttlSecondsAfterFinished` has been explicitly set.
  var hasTtlSecondsAfterFinished: Bool {return _storage._ttlSecondsAfterFinished != nil}
  /// Clears the value of `ttlSecondsAfterFinished`. Subsequent reads from it will return its default value.
  mutating func clearTtlSecondsAfterFinished() {_uniqueStorage()._ttlSecondsAfterFinished = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobStatus represents the current state of a Job.
struct K8s_Io_Api_Batch_V1_JobStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The latest available observations of an object's current state.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
  /// +optional
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  var conditions: [K8s_Io_Api_Batch_V1_JobCondition] {
    get {return _storage._conditions}
    set {_uniqueStorage()._conditions = newValue}
  }

  /// Represents time when the job was acknowledged by the job controller.
  /// It is not guaranteed to be set in happens-before order across separate operations.
  /// It is represented in RFC3339 form and is in UTC.
  /// +optional
  var startTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time {
    get {return _storage._startTime ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time()}
    set {_uniqueStorage()._startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  var hasStartTime: Bool {return _storage._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  mutating func clearStartTime() {_uniqueStorage()._startTime = nil}

  /// Represents time when the job was completed. It is not guaranteed to
  /// be set in happens-before order across separate operations.
  /// It is represented in RFC3339 form and is in UTC.
  /// +optional
  var completionTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time {
    get {return _storage._completionTime ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time()}
    set {_uniqueStorage()._completionTime = newValue}
  }
  /// Returns true if `completionTime` has been explicitly set.
  var hasCompletionTime: Bool {return _storage._completionTime != nil}
  /// Clears the value of `completionTime`. Subsequent reads from it will return its default value.
  mutating func clearCompletionTime() {_uniqueStorage()._completionTime = nil}

  /// The number of actively running pods.
  /// +optional
  var active: Int32 {
    get {return _storage._active ?? 0}
    set {_uniqueStorage()._active = newValue}
  }
  /// Returns true if `active` has been explicitly set.
  var hasActive: Bool {return _storage._active != nil}
  /// Clears the value of `active`. Subsequent reads from it will return its default value.
  mutating func clearActive() {_uniqueStorage()._active = nil}

  /// The number of pods which reached phase Succeeded.
  /// +optional
  var succeeded: Int32 {
    get {return _storage._succeeded ?? 0}
    set {_uniqueStorage()._succeeded = newValue}
  }
  /// Returns true if `succeeded` has been explicitly set.
  var hasSucceeded: Bool {return _storage._succeeded != nil}
  /// Clears the value of `succeeded`. Subsequent reads from it will return its default value.
  mutating func clearSucceeded() {_uniqueStorage()._succeeded = nil}

  /// The number of pods which reached phase Failed.
  /// +optional
  var failed: Int32 {
    get {return _storage._failed ?? 0}
    set {_uniqueStorage()._failed = newValue}
  }
  /// Returns true if `failed` has been explicitly set.
  var hasFailed: Bool {return _storage._failed != nil}
  /// Clears the value of `failed`. Subsequent reads from it will return its default value.
  mutating func clearFailed() {_uniqueStorage()._failed = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "k8s.io.api.batch.v1"

extension K8s_Io_Api_Batch_V1_Job: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Job"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "spec"),
    3: .same(proto: "status"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta? = nil
    var _spec: K8s_Io_Api_Batch_V1_JobSpec? = nil
    var _status: K8s_Io_Api_Batch_V1_JobStatus? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _spec = source._spec
      _status = source._status
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._spec)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._status)
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
      if let v = _storage._spec {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._status {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V1_Job, rhs: K8s_Io_Api_Batch_V1_Job) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._spec != rhs_storage._spec {return false}
        if _storage._status != rhs_storage._status {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V1_JobCondition: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobCondition"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "status"),
    3: .same(proto: "lastProbeTime"),
    4: .same(proto: "lastTransitionTime"),
    5: .same(proto: "reason"),
    6: .same(proto: "message"),
  ]

  fileprivate class _StorageClass {
    var _type: String? = nil
    var _status: String? = nil
    var _lastProbeTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time? = nil
    var _lastTransitionTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time? = nil
    var _reason: String? = nil
    var _message: String? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _status = source._status
      _lastProbeTime = source._lastProbeTime
      _lastTransitionTime = source._lastTransitionTime
      _reason = source._reason
      _message = source._message
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._type)
        case 2: try decoder.decodeSingularStringField(value: &_storage._status)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._lastProbeTime)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._lastTransitionTime)
        case 5: try decoder.decodeSingularStringField(value: &_storage._reason)
        case 6: try decoder.decodeSingularStringField(value: &_storage._message)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._type {
        try visitor.visitSingularStringField(value: v, fieldNumber: 1)
      }
      if let v = _storage._status {
        try visitor.visitSingularStringField(value: v, fieldNumber: 2)
      }
      if let v = _storage._lastProbeTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._lastTransitionTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._reason {
        try visitor.visitSingularStringField(value: v, fieldNumber: 5)
      }
      if let v = _storage._message {
        try visitor.visitSingularStringField(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V1_JobCondition, rhs: K8s_Io_Api_Batch_V1_JobCondition) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._type != rhs_storage._type {return false}
        if _storage._status != rhs_storage._status {return false}
        if _storage._lastProbeTime != rhs_storage._lastProbeTime {return false}
        if _storage._lastTransitionTime != rhs_storage._lastTransitionTime {return false}
        if _storage._reason != rhs_storage._reason {return false}
        if _storage._message != rhs_storage._message {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V1_JobList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "items"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ListMeta? = nil
    var _items: [K8s_Io_Api_Batch_V1_Job] = []

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

  static func ==(lhs: K8s_Io_Api_Batch_V1_JobList, rhs: K8s_Io_Api_Batch_V1_JobList) -> Bool {
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

extension K8s_Io_Api_Batch_V1_JobSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobSpec"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parallelism"),
    2: .same(proto: "completions"),
    3: .same(proto: "activeDeadlineSeconds"),
    7: .same(proto: "backoffLimit"),
    4: .same(proto: "selector"),
    5: .same(proto: "manualSelector"),
    6: .same(proto: "template"),
    8: .same(proto: "ttlSecondsAfterFinished"),
  ]

  fileprivate class _StorageClass {
    var _parallelism: Int32? = nil
    var _completions: Int32? = nil
    var _activeDeadlineSeconds: Int64? = nil
    var _backoffLimit: Int32? = nil
    var _selector: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_LabelSelector? = nil
    var _manualSelector: Bool? = nil
    var _template: K8s_Io_Api_Core_V1_PodTemplateSpec? = nil
    var _ttlSecondsAfterFinished: Int32? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _parallelism = source._parallelism
      _completions = source._completions
      _activeDeadlineSeconds = source._activeDeadlineSeconds
      _backoffLimit = source._backoffLimit
      _selector = source._selector
      _manualSelector = source._manualSelector
      _template = source._template
      _ttlSecondsAfterFinished = source._ttlSecondsAfterFinished
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
        case 1: try decoder.decodeSingularInt32Field(value: &_storage._parallelism)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._completions)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._activeDeadlineSeconds)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._selector)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._manualSelector)
        case 6: try decoder.decodeSingularMessageField(value: &_storage._template)
        case 7: try decoder.decodeSingularInt32Field(value: &_storage._backoffLimit)
        case 8: try decoder.decodeSingularInt32Field(value: &_storage._ttlSecondsAfterFinished)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._parallelism {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
      }
      if let v = _storage._completions {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 2)
      }
      if let v = _storage._activeDeadlineSeconds {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 3)
      }
      if let v = _storage._selector {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._manualSelector {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 5)
      }
      if let v = _storage._template {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._backoffLimit {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 7)
      }
      if let v = _storage._ttlSecondsAfterFinished {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 8)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V1_JobSpec, rhs: K8s_Io_Api_Batch_V1_JobSpec) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._parallelism != rhs_storage._parallelism {return false}
        if _storage._completions != rhs_storage._completions {return false}
        if _storage._activeDeadlineSeconds != rhs_storage._activeDeadlineSeconds {return false}
        if _storage._backoffLimit != rhs_storage._backoffLimit {return false}
        if _storage._selector != rhs_storage._selector {return false}
        if _storage._manualSelector != rhs_storage._manualSelector {return false}
        if _storage._template != rhs_storage._template {return false}
        if _storage._ttlSecondsAfterFinished != rhs_storage._ttlSecondsAfterFinished {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V1_JobStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "conditions"),
    2: .same(proto: "startTime"),
    3: .same(proto: "completionTime"),
    4: .same(proto: "active"),
    5: .same(proto: "succeeded"),
    6: .same(proto: "failed"),
  ]

  fileprivate class _StorageClass {
    var _conditions: [K8s_Io_Api_Batch_V1_JobCondition] = []
    var _startTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time? = nil
    var _completionTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time? = nil
    var _active: Int32? = nil
    var _succeeded: Int32? = nil
    var _failed: Int32? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _conditions = source._conditions
      _startTime = source._startTime
      _completionTime = source._completionTime
      _active = source._active
      _succeeded = source._succeeded
      _failed = source._failed
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
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._conditions)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._startTime)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._completionTime)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._active)
        case 5: try decoder.decodeSingularInt32Field(value: &_storage._succeeded)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._failed)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._conditions.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._conditions, fieldNumber: 1)
      }
      if let v = _storage._startTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._completionTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._active {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 4)
      }
      if let v = _storage._succeeded {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 5)
      }
      if let v = _storage._failed {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V1_JobStatus, rhs: K8s_Io_Api_Batch_V1_JobStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._conditions != rhs_storage._conditions {return false}
        if _storage._startTime != rhs_storage._startTime {return false}
        if _storage._completionTime != rhs_storage._completionTime {return false}
        if _storage._active != rhs_storage._active {return false}
        if _storage._succeeded != rhs_storage._succeeded {return false}
        if _storage._failed != rhs_storage._failed {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
