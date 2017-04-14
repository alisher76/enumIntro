


func isEvenenen(_ input: Int) -> Bool {
    precondition(input >= 0 && input <= 10) //check if this is not the input then kill it
    return [2, 4, 6, 8, 10].contains(input)
}



func isTUoV(input: Character) -> Bool {
    switch input {
    case "T", "t", "U", "u", "v", "V":
        return true
    default:
        return false
    }
}

isTUoV(input: "u")
isEvenenen(10)


