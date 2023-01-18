
import SwiftUI

//let MAX = 100
//for i in 1..< MAX {
//    if (i % 15 == 0) {
//        print("FizzBuzz")
//    } else if(i % 3 == 0) {
//        print("Fizz")
//    } else if(i % 5 == 0) {
//        print("Buzz")
//    } else {
//        print("\(i)")
//    }
//}

struct FizzBuzzAlgorithmModel: Identifiable {
    let id = UUID()
    
    let programmingLanguageName: String
    var versionNumber: Double?
    var commentCode: (String) -> String = { code in
        return "\\ " + code         // return "/*" + code "*/"
    }
    var imports: String = ""
    var boilerWrapper: (String) -> String = { code in
        return code
    }
    let maxConstDef: String
    let loopWrapper: (String) -> String
    let printString: (String) -> String
    let printInt: () -> String
    var equality: String = "=="
    var moduleSymbol: String = "%"
    let ifStatement: (String, String) -> String     //first string is for if statement and other String is for logic part for if
    let elseIfStatement: (String, String) -> String
    let elseStatement: (String) -> String
    
    var actualFizzBuzzCode: String {
        return "FizzBuzz in \(programmingLanguageName)"
    }
}
