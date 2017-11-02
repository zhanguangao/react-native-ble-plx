import Foundation

public struct HashableWrapper<T: AnyObject>: Hashable {
  public let object: T
  
  init(_ object: T) {
    self.object = object
  }
  
  public var hashValue: Int {
    return ObjectIdentifier(object).hashValue
  }
  
  public static func ==(lhs: HashableWrapper, rhs: HashableWrapper) -> Bool {
    return lhs.hashValue == rhs.hashValue
  }
}
