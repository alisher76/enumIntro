//
//  W1-D3-IntroToEnum.swift
//  
//
//  Created by Alisher Abdukarimov on 3/29/17.
//
//

//Create a type, Color with the three primary colors and the three secondary colors. Then create a function complement which will return the complementary color for a provided color.


enum Color {
    
    case red
    case blue
    case yellow
    case orange
    case green
    case purple
}


func complement(color: Color) -> Color {
    
    switch color {
    case .red:
        return .green
    case .blue:
        return .orange
    case .yellow:
        return .purple
    case .green:
        return .red
    case .orange:
        return .blue
    case .purple:
        return .yellow
    }
    
}



complement(color: .red)
complement(color: .blue)
complement(color: .yellow)
complement(color: .green)
complement(color: .orange)
complement(color: .purple)



//Create a type, Instruction which will have two cases, left and right. Both cases should have an Int as an associated value. create a function printInstruction which prints a given instruction with the format below (observe the difference between one and many steps).

enum Instruction {
    
    case left(Int)
    case right(Int)
    
}

let goRight = Instruction.right(10)
let goLeft = Instruction.left(11)


func printInstruction(_ instruction: Instruction) {
    
    switch instruction {
    case .left(let amount):
        if amount == 0 {
            print("Turn left.")
        }else{
            print("Turn left and take \(amount) steps.")
        }
    case .right(let amount):
        if amount == 0 {
            print("Turn right.")
        }else{
            print("Turn left and take \(amount) steps.")
        }
    }
}


printInstruction(.left(9))
printInstruction(.right(0))
printInstruction(.right(1))
