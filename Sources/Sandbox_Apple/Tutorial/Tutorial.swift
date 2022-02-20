//
// Created by robot on 2/2/21.
//
import Foundation
extension Int //the extension of the integer type
{
    var add: Int {return self + 10 } //closure
    var sub: Int { return self - 10 } //closure
    var mul: Int { return self * 10 } //closure
    var div: Int { return self / 10 } //closure
    var mod: Int { return self % 10} //closure
}

enum Days
{
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

class Weekdays
{
    init() {
        print("Constructing Weekdays");
    }
    var days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday",
                          "Friday", "Saturday", "Sunday"];
    var quantity:Int = 7;
    subscript(index: Int) -> String //the subscript to access the array of the weekdays
    {
        get
        {
            return days[index];
        }
        set (newValue)
        {
            self.days[index] = newValue;
        }
    }
    func arithmetics(number:Int)
    {
        let addition = number.add;
        print("Addition of 100 is \(addition)");

        let subtraction = number.sub;
        print("Subtraction of 100 is \(subtraction)");

        let multiplication = number.mul;
        print("Multiplication of 100 is \(multiplication)");

        let division = number.div;
        print("Division of 100 is \(division)");

        let mod = number.mod;
        print("The modulus division of 10 is \(mod)");
    }
    deinit {
        print("Destructing");
    }
}

class Months: Weekdays
{
    override init() //overridden constructor
    {
        print("Constructing Months");
    }

    var months: [String] = ["January", "February", "March", "April", "May", "June", "July",
                            "August", "September", "October", "November", "December"];
    override var quantity: Int { //overridden variable quantity
        get {
            return super.quantity;
        }
        set {
            super.quantity = 12;
        }
    }

}

struct Today
{
    var word: String;
    var wort: String;
    var year: Int;
}

func tutorial ()
{
    let pi = 3.14159, c = 2.0, string = String("Hello World!"); //the constants
    var error501 = (501, "Not Implemented"); //The Tuple variable
    var error403 = (403, "Forbidden"); //The Tuple variable
    var error404 = (404, "Not Found"); //The Tuple variable
    var heute = Today(word:"Year", wort:"New ", year:2021);
    var array = [Int](repeating: 4, count: 3); //an array of repeating integers
    var massiv: [Int] = [1,2,3,4,5]; // an array of ints
    var names: Set<String> = ["David", "Joe", "Sean"];
    var namen: [String:String];
    var days = Weekdays(), months = Months(), today = Days.Monday;//constructing objects
    today = .Monday;
    namen = ["David":"Jones", "Joe":"Silverman", "Sean":"Davis"]; //Declaring dictionary
    namen.updateValue("Silberman", forKey: "Joe"); //Changing the dictionary
    namen.updateValue("Beckham", forKey: "David"); //Modifying the dictionary
    namen.updateValue("Hernandez", forKey: "Sean");//Editing the dictionary
    print((string),"\n", (heute.wort)+(heute.word)); //The string concatencation and the output
    days.arithmetics(number: 2011); //printing integer arithmetical methods
    print("string word counts = \(heute.word.count) \(heute.wort.count)");
    massiv.removeLast();
    print(array, massiv);
    for names in names.sorted()
    {
        print(names);
    }

    for namen in namen
    {
        print(namen);
    }

    switch heute.year {
    case 2000...2010:
        print("In a first decade");
    case 2010...2020:
        print("In a second decade");
    case 2021:
        print("The current year");
        //fallthrough; falling into the default statement
        break;
    default:
        print("Error");
        break;
    }

    switch today
    {
    case .Monday:
        print("Today's \(days[0])");
            //fallthrough; falling to another statement
    case .Tuesday:
        print("Today's \(days[1])");
    case .Wednesday:
        print("Today's \(days[2])");
    case .Thursday:
        print("Today's \(days[3])");
    case .Friday:
        print("Today's \(days[4])");
    case .Saturday:
        print("Today's \(days[5])");
    case .Sunday:
        print("Today's \(days[6])");
    default:
        print("The day is incorrect");
        break;
    }

    let studname = { print("Welcome to Swift Closures") } //embedded function in tutorial()
    studname();
}
