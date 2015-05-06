// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers


internal struct ProtobufUnittestImport { }

internal func == (lhs: ProtobufUnittestImport.ImportMessage, rhs: ProtobufUnittestImport.ImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal extension ProtobufUnittestImport {
  internal struct UnittestImportRoot {
    internal static var sharedInstance : UnittestImportRoot {
     struct Static {
         static let instance : UnittestImportRoot = UnittestImportRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  internal enum ImportEnum:Int32 {
    case ImportFoo = 7
    case ImportBar = 8
    case ImportBaz = 9

  }

  //Enum type declaration end 

  final internal class ImportMessage : GeneratedMessage, GeneratedMessageProtocol, Hashable {
    private(set) var hasD:Bool = false
    private(set) var d:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) {
      if hasD {
        output.writeInt32(1, value:d)
      }
      unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseFromData(data:NSData) -> ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) -> ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) -> ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittestImport.ImportMessage {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func builder() -> ProtobufUnittestImport.ImportMessageBuilder {
      return ProtobufUnittestImport.ImportMessage.classBuilder() as! ProtobufUnittestImport.ImportMessageBuilder
    }
    internal func builder() -> ProtobufUnittestImport.ImportMessageBuilder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessageBuilder
    }
    internal override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessageBuilder()
    }
    internal override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.builder()
    }
    internal func toBuilder() -> ProtobufUnittestImport.ImportMessageBuilder {
      return ProtobufUnittestImport.ImportMessage.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessage) -> ProtobufUnittestImport.ImportMessageBuilder {
      return ProtobufUnittestImport.ImportMessage.builder().mergeFrom(prototype)
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) {
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override internal func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.ImportMessage.self
    }
    //Meta information declaration end

  }

  final internal class ImportMessageBuilder : GeneratedMessageBuilder {
    private var builderResult:ProtobufUnittestImport.ImportMessage

    required override internal init () {
       builderResult = ProtobufUnittestImport.ImportMessage()
       super.init()
    }
    var hasD:Bool {
         get {
              return builderResult.hasD
         }
    }
    var d:Int32 {
         get {
              return builderResult.d
         }
         set (value) {
             builderResult.hasD = true
             builderResult.d = value
         }
    }
    func setD(value:Int32)-> ProtobufUnittestImport.ImportMessageBuilder {
      self.d = value
      return self
    }
    internal func clearD() -> ProtobufUnittestImport.ImportMessageBuilder{
         builderResult.hasD = false
         builderResult.d = Int32(0)
         return self
    }
    override internal var internalGetResult:GeneratedMessage {
         get {
            return builderResult
         }
    }
    internal override func clear() -> ProtobufUnittestImport.ImportMessageBuilder {
      builderResult = ProtobufUnittestImport.ImportMessage()
      return self
    }
    internal override func clone() -> ProtobufUnittestImport.ImportMessageBuilder {
      return ProtobufUnittestImport.ImportMessage.builderWithPrototype(builderResult)
    }
    internal override func build() -> ProtobufUnittestImport.ImportMessage {
         checkInitialized()
         return buildPartial()
    }
    internal func buildPartial() -> ProtobufUnittestImport.ImportMessage {
      var returnMe:ProtobufUnittestImport.ImportMessage = builderResult
      return returnMe
    }
    internal func mergeFrom(other:ProtobufUnittestImport.ImportMessage) -> ProtobufUnittestImport.ImportMessageBuilder {
      if (other == ProtobufUnittestImport.ImportMessage()) {
       return self
      }
      if other.hasD {
           d = other.d
      }
      mergeUnknownFields(other.unknownFields)
      return self
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream) ->ProtobufUnittestImport.ImportMessageBuilder {
         return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
    }
    internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> ProtobufUnittestImport.ImportMessageBuilder {
      var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
      while (true) {
        var tag = input.readTag()
        switch tag {
        case 0: 
          self.unknownFields = unknownFieldsBuilder.build()
          return self

        case 8 :
          d = input.readInt32()

        default:
          if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
             unknownFields = unknownFieldsBuilder.build()
             return self
          }
        }
      }
    }
  }

}

// @@protoc_insertion_point(global_scope)
