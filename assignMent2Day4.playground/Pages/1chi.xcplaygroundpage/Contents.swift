







enum Answer : Equatable {
    
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
    
    static func == (lhs: Answer, rhs: Answer) -> Bool {
        switch (lhs, rhs) {
        case (.fizz, .fizz), (.buzz, .buzz), (.fizzBuzz, .fizzBuzz):
            return true
        case (.number(let leftNum), .number(let rightNum)):
            return leftNum == rightNum
        case (.fizz, _), (.buzz, _), (.fizzBuzz, _), (.number, _):
            return false
        }
    }
}

func transform(n: Int) -> Answer {

   
    for i in 1...n {
    
        if i % 3 == 0 && i % 5 != 0 {
        
            print("Fizz")
        
        }else if i % 5 == 0 && i % 3 != 0 {
        
            print("Buzz")
            
        }else if i % 5 == 0 && i % 3 == 0 {
        
             print("FizzBuzz")
        }else{
            
            print(i)
            
        }

        
        
    }
    
    
//    for i in 1...n{
//    
//        switch i {
//        case _ where i % 3 == 0 && i % 5 != 0:
//            print("Fizz")
//            
//        case _ where i % 5 == 0 && i % 3 != 0:
//             print("Buzz")
//            
//        case _ where i % 5 == 0 && i % 3 == 0:
//            print("FizzBuzz")
//        default:
//            
//            print(i)
//        }
//    
//    
//    
//    }
    
    
    return Answer.number(n)
}


transform(n: 60)


//
//
//func isEvenenen(_ input: Int) -> Bool {
//precondition(input <= 0 && >= 10)
//return [2, 4, 6, 8, 10].contains(input)
//}
//
//
//isEvenenen(5)
//
