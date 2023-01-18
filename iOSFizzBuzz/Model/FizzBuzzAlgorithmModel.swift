
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
        return #"\\ "# + code         // return "/*" + code "*/"
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
        
        let mod3 = "i \(moduleSymbol) 3 \(equality) 0"
        let codeFizz = printString("Fizz")
        
        let mod5 = "i \(moduleSymbol) 5 \(equality) 0"
        let codeBuzz = printString("Buzz")
        
        let mod15 = "i \(moduleSymbol) 15 \(equality) 0"
        let codeFizzBuzz = printString("FizzBuzz")
        
        let printInt = printInt()
        
        let codeInLoop =
        """
        \(ifStatement(mod15,codeFizzBuzz))
        \(elseIfStatement(mod5,codeFizz.indent()))
        \(elseIfStatement(mod3,codeBuzz.indent()))
        \(elseStatement(printInt.indent()))
        """
        
        let mainCode =
        """
        \(maxConstDef)
        \(loopWrapper(codeInLoop))
        """
        
        var versionString = ""
        
        if let versionNumber = versionNumber {
            versionString = " implementation Version \(versionNumber)"
        }
        
        return """
        \(commentCode("FizzBuzz\(versionString) is implemented in the \(programmingLanguageName) programming Language."))
        \(imports)
        \(mainCode)
        """
    }
}
