import Foundation

extension SequenceType where Generator.Element == Optional<String> {
  func stringWithoutEmpty(joinedBy separator: String) -> String {
    // flatmap will only return out valid strings
    let elementArray: [String] = self.flatMap {
      // flatMap kicks out nil and empty strings
      guard let item = $0 where !item.isEmpty else {
        return nil
      }
    
      return item
    }
        
    // join string components
    return elementArray.joinWithSeparator(separator)
  }
}

/*

var title: String? = "Super Title"
var subtitle: String? = nil
var description: String? = "Lorem Ipsum"
[title, subtitle, description].stringWithoutEmpty(joinedBy: "\n")

/* returns:
 Super Title
 Lorem Ipsum
 */

*/
