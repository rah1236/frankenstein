import Foundation

let contents = try! String(contentsOfFile: "rn5 DNA-Chr1-138407801..138551200.fasta")

//print(contents)


var count = 0
var ATGcount = 0
for char in contents{
    if char == Character("A"){
        count += 1
    }
    else if char == Character("T"){
        count += 1
    }
    else if char == Character("G"){
        count += 1
    }
    else {
        print(ATGcount)
        count = 0
    }

    if count >= 2{
        ATGcount += 1
    }
}

print("ATGcount = \(ATGcount)")
