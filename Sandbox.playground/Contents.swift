import Foundation
import CoreFoundation;
//import CDispatch;

enum Optional<T> { //Associated value Optional in enum of type T
    case None;
    case Some(T);
}

struct Range<T> { // The range declaration because the Range is the structure of type T
    var startIndex: T;
    var endIndex: T;
}

func main()
{
    // three ways of optionals declaration
    //let x: String? = nil;
    //let x = Optional<String>.None;
    //let x: String? = "hello";
    let x = Optional<String>.Some("Hello");
    let a = Range<Int>.init(startIndex: 0, endIndex: 10); //the Range declaration
    let b = Array(0...10); //the Range declaration using array function
    let animals = ["Giraffe", "Cow", "Doggie", "Bird"];
    var pac10teamRankings = ["Stanford":1, "Drexel":10];
    print("Printing the array\n");
    for animal in animals // accessing all elements in the array using connected variable animal
    {
        print(animal);
    }
    print("\nPrinting the dictionary\n");
    for (key, value) in pac10teamRankings //accessing all elements in the dictionary using connected tuple (key, value)
    {
        print("\(key) = \(value)");
    }
    
}

main();
