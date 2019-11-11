// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: k8s.io/api/batch/v2alpha1/generated.proto
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

/// CronJob represents the configuration of a single cron job.
struct K8s_Io_Api_Batch_V2alpha1_CronJob {
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

  /// Specification of the desired behavior of a cron job, including the schedule.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  var spec: K8s_Io_Api_Batch_V2alpha1_CronJobSpec {
    get {return _storage._spec ?? K8s_Io_Api_Batch_V2alpha1_CronJobSpec()}
    set {_uniqueStorage()._spec = newValue}
  }
  /// Returns true if `spec` has been explicitly set.
  var hasSpec: Bool {return _storage._spec != nil}
  /// Clears the value of `spec`. Subsequent reads from it will return its default value.
  mutating func clearSpec() {_uniqueStorage()._spec = nil}

  /// Current status of a cron job.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  var status: K8s_Io_Api_Batch_V2alpha1_CronJobStatus {
    get {return _storage._status ?? K8s_Io_Api_Batch_V2alpha1_CronJobStatus()}
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

/// CronJobList is a collection of cron jobs.
struct K8s_Io_Api_Batch_V2alpha1_CronJobList {
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

  /// items is the list of CronJobs.
  var items: [K8s_Io_Api_Batch_V2alpha1_CronJob] {
    get {return _storage._items}
    set {_uniqueStorage()._items = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// CronJobSpec describes how the job execution will look like and when it will actually run.
struct K8s_Io_Api_Batch_V2alpha1_CronJobSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
  var schedule: String {
    get {return _storage._schedule ?? String()}
    set {_uniqueStorage()._schedule = newValue}
  }
  /// Returns true if `schedule` has been explicitly set.
  var hasSchedule: Bool {return _storage._schedule != nil}
  /// Clears the value of `schedule`. Subsequent reads from it will return its default value.
  mutating func clearSchedule() {_uniqueStorage()._schedule = nil}

  /// Optional deadline in seconds for starting the job if it misses scheduled
  /// time for any reason.  Missed jobs executions will be counted as failed ones.
  /// +optional
  var startingDeadlineSeconds: Int64 {
    get {return _storage._startingDeadlineSeconds ?? 0}
    set {_uniqueStorage()._startingDeadlineSeconds = newValue}
  }
  /// Returns true if `startingDeadlineSeconds` has been explicitly set.
  var hasStartingDeadlineSeconds: Bool {return _storage._startingDeadlineSeconds != nil}
  /// Clears the value of `startingDeadlineSeconds`. Subsequent reads from it will return its default value.
  mutating func clearStartingDeadlineSeconds() {_uniqueStorage()._startingDeadlineSeconds = nil}

  /// Specifies how to treat concurrent executions of a Job.
  /// Valid values are:
  /// - "Allow" (default): allows CronJobs to run concurrently;
  /// - "Forbid": forbids concurrent runs, skipping next run if previous run hasn't finished yet;
  /// - "Replace": cancels currently running job and replaces it with a new one
  /// +optional
  var concurrencyPolicy: String {
    get {return _storage._concurrencyPolicy ?? String()}
    set {_uniqueStorage()._concurrencyPolicy = newValue}
  }
  /// Returns true if `concurrencyPolicy` has been explicitly set.
  var hasConcurrencyPolicy: Bool {return _storage._concurrencyPolicy != nil}
  /// Clears the value of `concurrencyPolicy`. Subsequent reads from it will return its default value.
  mutating func clearConcurrencyPolicy() {_uniqueStorage()._concurrencyPolicy = nil}

  /// This flag tells the controller to suspend subsequent executions, it does
  /// not apply to already started executions.  Defaults to false.
  /// +optional
  var suspend: Bool {
    get {return _storage._suspend ?? false}
    set {_uniqueStorage()._suspend = newValue}
  }
  /// Returns true if `suspend` has been explicitly set.
  var hasSuspend: Bool {return _storage._suspend != nil}
  /// Clears the value of `suspend`. Subsequent reads from it will return its default value.
  mutating func clearSuspend() {_uniqueStorage()._suspend = nil}

  /// Specifies the job that will be created when executing a CronJob.
  var jobTemplate: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec {
    get {return _storage._jobTemplate ?? K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec()}
    set {_uniqueStorage()._jobTemplate = newValue}
  }
  /// Returns true if `jobTemplate` has been explicitly set.
  var hasJobTemplate: Bool {return _storage._jobTemplate != nil}
  /// Clears the value of `jobTemplate`. Subsequent reads from it will return its default value.
  mutating func clearJobTemplate() {_uniqueStorage()._jobTemplate = nil}

  /// The number of successful finished jobs to retain.
  /// This is a pointer to distinguish between explicit zero and not specified.
  /// +optional
  var successfulJobsHistoryLimit: Int32 {
    get {return _storage._successfulJobsHistoryLimit ?? 0}
    set {_uniqueStorage()._successfulJobsHistoryLimit = newValue}
  }
  /// Returns true if `successfulJobsHistoryLimit` has been explicitly set.
  var hasSuccessfulJobsHistoryLimit: Bool {return _storage._successfulJobsHistoryLimit != nil}
  /// Clears the value of `successfulJobsHistoryLimit`. Subsequent reads from it will return its default value.
  mutating func clearSuccessfulJobsHistoryLimit() {_uniqueStorage()._successfulJobsHistoryLimit = nil}

  /// The number of failed finished jobs to retain.
  /// This is a pointer to distinguish between explicit zero and not specified.
  /// +optional
  var failedJobsHistoryLimit: Int32 {
    get {return _storage._failedJobsHistoryLimit ?? 0}
    set {_uniqueStorage()._failedJobsHistoryLimit = newValue}
  }
  /// Returns true if `failedJobsHistoryLimit` has been explicitly set.
  var hasFailedJobsHistoryLimit: Bool {return _storage._failedJobsHistoryLimit != nil}
  /// Clears the value of `failedJobsHistoryLimit`. Subsequent reads from it will return its default value.
  mutating func clearFailedJobsHistoryLimit() {_uniqueStorage()._failedJobsHistoryLimit = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// CronJobStatus represents the current state of a cron job.
struct K8s_Io_Api_Batch_V2alpha1_CronJobStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of pointers to currently running jobs.
  /// +optional
  var active: [K8s_Io_Api_Core_V1_ObjectReference] {
    get {return _storage._active}
    set {_uniqueStorage()._active = newValue}
  }

  /// Information when was the last time the job was successfully scheduled.
  /// +optional
  var lastScheduleTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time {
    get {return _storage._lastScheduleTime ?? K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time()}
    set {_uniqueStorage()._lastScheduleTime = newValue}
  }
  /// Returns true if `lastScheduleTime` has been explicitly set.
  var hasLastScheduleTime: Bool {return _storage._lastScheduleTime != nil}
  /// Clears the value of `lastScheduleTime`. Subsequent reads from it will return its default value.
  mutating func clearLastScheduleTime() {_uniqueStorage()._lastScheduleTime = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobTemplate describes a template for creating copies of a predefined pod.
struct K8s_Io_Api_Batch_V2alpha1_JobTemplate {
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

  /// Defines jobs that will be created from this template.
  /// https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  var template: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec {
    get {return _storage._template ?? K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec()}
    set {_uniqueStorage()._template = newValue}
  }
  /// Returns true if `template` has been explicitly set.
  var hasTemplate: Bool {return _storage._template != nil}
  /// Clears the value of `template`. Subsequent reads from it will return its default value.
  mutating func clearTemplate() {_uniqueStorage()._template = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// JobTemplateSpec describes the data a Job should have when created from a template
struct K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Standard object's metadata of the jobs created from this template.
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

  /// Specification of the desired behavior of the job.
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

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "k8s.io.api.batch.v2alpha1"

extension K8s_Io_Api_Batch_V2alpha1_CronJob: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CronJob"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "spec"),
    3: .same(proto: "status"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta? = nil
    var _spec: K8s_Io_Api_Batch_V2alpha1_CronJobSpec? = nil
    var _status: K8s_Io_Api_Batch_V2alpha1_CronJobStatus? = nil

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

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_CronJob, rhs: K8s_Io_Api_Batch_V2alpha1_CronJob) -> Bool {
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

extension K8s_Io_Api_Batch_V2alpha1_CronJobList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CronJobList"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "items"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ListMeta? = nil
    var _items: [K8s_Io_Api_Batch_V2alpha1_CronJob] = []

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

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_CronJobList, rhs: K8s_Io_Api_Batch_V2alpha1_CronJobList) -> Bool {
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

extension K8s_Io_Api_Batch_V2alpha1_CronJobSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CronJobSpec"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "schedule"),
    2: .same(proto: "startingDeadlineSeconds"),
    3: .same(proto: "concurrencyPolicy"),
    4: .same(proto: "suspend"),
    5: .same(proto: "jobTemplate"),
    6: .same(proto: "successfulJobsHistoryLimit"),
    7: .same(proto: "failedJobsHistoryLimit"),
  ]

  fileprivate class _StorageClass {
    var _schedule: String? = nil
    var _startingDeadlineSeconds: Int64? = nil
    var _concurrencyPolicy: String? = nil
    var _suspend: Bool? = nil
    var _jobTemplate: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec? = nil
    var _successfulJobsHistoryLimit: Int32? = nil
    var _failedJobsHistoryLimit: Int32? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _schedule = source._schedule
      _startingDeadlineSeconds = source._startingDeadlineSeconds
      _concurrencyPolicy = source._concurrencyPolicy
      _suspend = source._suspend
      _jobTemplate = source._jobTemplate
      _successfulJobsHistoryLimit = source._successfulJobsHistoryLimit
      _failedJobsHistoryLimit = source._failedJobsHistoryLimit
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
        case 1: try decoder.decodeSingularStringField(value: &_storage._schedule)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._startingDeadlineSeconds)
        case 3: try decoder.decodeSingularStringField(value: &_storage._concurrencyPolicy)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._suspend)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._jobTemplate)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._successfulJobsHistoryLimit)
        case 7: try decoder.decodeSingularInt32Field(value: &_storage._failedJobsHistoryLimit)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._schedule {
        try visitor.visitSingularStringField(value: v, fieldNumber: 1)
      }
      if let v = _storage._startingDeadlineSeconds {
        try visitor.visitSingularInt64Field(value: v, fieldNumber: 2)
      }
      if let v = _storage._concurrencyPolicy {
        try visitor.visitSingularStringField(value: v, fieldNumber: 3)
      }
      if let v = _storage._suspend {
        try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
      }
      if let v = _storage._jobTemplate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if let v = _storage._successfulJobsHistoryLimit {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 6)
      }
      if let v = _storage._failedJobsHistoryLimit {
        try visitor.visitSingularInt32Field(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_CronJobSpec, rhs: K8s_Io_Api_Batch_V2alpha1_CronJobSpec) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._schedule != rhs_storage._schedule {return false}
        if _storage._startingDeadlineSeconds != rhs_storage._startingDeadlineSeconds {return false}
        if _storage._concurrencyPolicy != rhs_storage._concurrencyPolicy {return false}
        if _storage._suspend != rhs_storage._suspend {return false}
        if _storage._jobTemplate != rhs_storage._jobTemplate {return false}
        if _storage._successfulJobsHistoryLimit != rhs_storage._successfulJobsHistoryLimit {return false}
        if _storage._failedJobsHistoryLimit != rhs_storage._failedJobsHistoryLimit {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V2alpha1_CronJobStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CronJobStatus"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "active"),
    4: .same(proto: "lastScheduleTime"),
  ]

  fileprivate class _StorageClass {
    var _active: [K8s_Io_Api_Core_V1_ObjectReference] = []
    var _lastScheduleTime: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_Time? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _active = source._active
      _lastScheduleTime = source._lastScheduleTime
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
        case 1: try decoder.decodeRepeatedMessageField(value: &_storage._active)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._lastScheduleTime)
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._active.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._active, fieldNumber: 1)
      }
      if let v = _storage._lastScheduleTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_CronJobStatus, rhs: K8s_Io_Api_Batch_V2alpha1_CronJobStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._active != rhs_storage._active {return false}
        if _storage._lastScheduleTime != rhs_storage._lastScheduleTime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V2alpha1_JobTemplate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobTemplate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "template"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta? = nil
    var _template: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _template = source._template
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
        case 2: try decoder.decodeSingularMessageField(value: &_storage._template)
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
      if let v = _storage._template {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_JobTemplate, rhs: K8s_Io_Api_Batch_V2alpha1_JobTemplate) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._template != rhs_storage._template {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JobTemplateSpec"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "metadata"),
    2: .same(proto: "spec"),
  ]

  fileprivate class _StorageClass {
    var _metadata: K8s_Io_Apimachinery_Pkg_Apis_Meta_V1_ObjectMeta? = nil
    var _spec: K8s_Io_Api_Batch_V1_JobSpec? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _metadata = source._metadata
      _spec = source._spec
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
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec, rhs: K8s_Io_Api_Batch_V2alpha1_JobTemplateSpec) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._metadata != rhs_storage._metadata {return false}
        if _storage._spec != rhs_storage._spec {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
