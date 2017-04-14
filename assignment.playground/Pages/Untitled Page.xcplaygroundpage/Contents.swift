



enum Answer: Equatable {
    
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
    
    
        
    
    }
    
   return Answer.number(n)
}






//just get the number from transform and do the rest in static func!


