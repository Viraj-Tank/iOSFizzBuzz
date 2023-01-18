
import SwiftUI

class FizzBuzzAlgorithmViewModel: ObservableObject {
    @Published var fizzBuzzModels: [ FizzBuzzAlgorithmModel] = []
    
    init() {
        fizzBuzzModels = [
            .init(
                programmingLanguageName: "Swift",
                maxConstDef: "let MAX = 100",
                loopWrapper: { code in
                """
                for i in 1..< MAX {
                    \(code)
                }
                """
                },
                printString: { str in
                    // #..# is known as raw string
                    #"print("\#(str)")"#
                },
                printInt: {
                    #"print("\(i)")"#
                },
                ifStatement: { logic, code in
                """
                if \(logic) {
                    \(code)
                }
                """
                },
                elseIfStatement: { logic, code in
                """
                else if \(logic) {
                    \(code)
                }
                """
                },
                elseStatement: { code in
                """
                else {
                    \(code)
                }
                """
                }
            ),
            .init(
                programmingLanguageName: "C",
                versionNumber: 1.0,
                imports: "#include<stdio.h>",
                boilerWrapper: { code in
                """
                int main() {
                    \(code)
                }
                """
                },
                maxConstDef: "#define MAX 100",
                loopWrapper: { code in
                """
                for(int i = 1; i <= MAX; i++) {
                    \(code.indent())
                }
                """
                },
                printString: {str in
                    #"printf("\#(str)");"#
                },
                printInt: {
                    #"printf("\%d", i);"#
                },
                ifStatement: { logic, code in
                """
                if (\(logic)) {
                    \(code)
                }
                """
                },
                elseIfStatement: { logic, code in
                """
                else if (\(logic)) {
                    \(code)
                }
                """
                },
                elseStatement: { code in
                """
                else {
                    \(code)
                }
                """
                }
            )
        ]
    }
}

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
