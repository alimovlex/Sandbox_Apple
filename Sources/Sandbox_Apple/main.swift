import Foundation;
import CoreFoundation;
import CDispatch;

extension Int //the extension of the integer type
{
    var add: Int {return self + 10 }
    var sub: Int { return self - 10 }
    var mul: Int { return self * 10 }
    var div: Int { return self / 10 }
    var mod: Int { return self % 10}
}

enum Days
{
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

class Weekdays
{
  init() {
        print("Constructing");
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
    var months: [String] = ["January", "February", "March", "April", "May", "June", "July", 
                            "August", "September", "October", "November", "December"];
    override var quantity: Int {
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

func tutorial (entrance:String, exit:String) -> String
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
    print(days.arithmetics(number: 2011)); //
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
    return entrance+exit;
}


func sandbox()
{
    var str = ["Hello", "world"];
    //the cortege block definition
    var tuple1 = (200, "In work", true);
    var tuple2 = (true, "At Work", 200);
    let statusTuple = (statusCode:200, statusText:"In work", statusConnect:true);
    //three ways of defining the arrays
    let alphabetArray = ["a", "b", "c"]; //first method
    let newalphabetArray = Array(arrayLiteral: 2,4,8,1); //second method
    let lineArray = Array(0...9); //third method
    var repeatArray = Array(repeating: "Swift", count: 5);
    var mutableArray = [2,4,8,1]; //the default changeable array
    var emptyArray: [String] = []; //first way
    var anotherEmptyArray = [String](); //second way
    str+=repeatArray; //the array appension
    var matrix = [[1,2,3],[4,5,6],[7,6,8]]; //the array-matrix
    //the set definition ways
    var dishes: Set<String> = ["Bread", "Vegetables", "Beef", "Water"];
    var dishesTwo: Set = ["Bread", "Vegetables", "Beef", "Water"];
    var members = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var membersTwo = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var emptySet = Set<String>();
    //the digit based sets
    let evenDigits: Set = [0,2,4,6,8];
    let oddDigits: Set = [1,3,5,7,9];
    var differentDigits: Set = [3,4,7,8];
    //The ways of defining the dictionary
    var dictionary = ["one":"eins", "two":"zwei", "three":"drei"]; //first way
    Dictionary(dictionaryLiteral: (100, "hundred"), (200, "two hundred"), (300, "three hundred")); //second way
    let baseCollection = [(2,5), (3,6), (1,4)]; //the cortege's collection for dictionary
    var newDictionary = Dictionary(uniqueKeysWithValues: baseCollection); //dictionary is based on cortege's baseCollection
    var emptyDictionary: [String:Int] = [:];
    var anotherEmptyDictionary = Dictionary<String,Int>();
    //aggregating the dictionary from two arrays
    let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"];
    let nearestStarDistances = [4.24, 4.37, 4.37];
    let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistances));
    newDictionary.removeValue(forKey: 1);//erasing the value from newDictionary
    //the cortege block use
    print("Hello, playground\n\(str)");
    print("""
                  \(matrix[0])
                  \(matrix[1])
                  \(matrix[2])
          """); //the multiline output
    print(type(of:tuple1) == type(of:tuple2)); //the comparison of two corteges
    print("The response code: \(statusTuple.statusCode) | Duplicating:\(statusTuple.0)");
    print("The text code: \(statusTuple.statusText) | Duplicating:\(statusTuple.1)");
    print("The connection with server: \(statusTuple.statusConnect) | Duplicating:\(statusTuple.2)");
    //the dictionary output
    print("--------------------The dictionary section--------------------------");
    print(dictionary, dictionary["one"]);
    print(newDictionary);
    print(starDistanceDict);
    //the array methods and its outputs
    repeatArray.append("Swift"); //the second way of array appension
    repeatArray.insert("Swift", at: 6);
    repeatArray.removeLast();
    repeatArray.removeFirst();
    repeatArray.remove(at: 0);
    repeatArray.dropFirst();
    repeatArray.dropLast();
    print("The repeatArray methods description: \(repeatArray)");
    print("contains:\(repeatArray.count) elements");
    print("is empty:\(repeatArray.isEmpty)");
    print("containing Swift:\(repeatArray.contains("Swift"))");
    print("The digit methods in the mutableArray \(mutableArray)");
    print("min = \(mutableArray.min())");
    print("max = \(mutableArray.max())");
    mutableArray.reverse();
    print("reversedArray\t\(mutableArray)");
    mutableArray.sort();
    print("sortedArray\t\(mutableArray)");
    print("--------------------The dictionary section ending--------------------------");
    print("--------------------The set section ---------------------------------------");
    //the set methods and its outputs
    dishes.insert("Fruits");
    dishes.remove("Fruits");
    print("The dishes methods description: \(dishes)");
    print("contains:\(dishes.count) elements");
    print("is empty:\(dishes.isEmpty)");
    print("containing Water:\(dishes.contains("Water"))");
    print("The digit methods in the sets:");
    print("evenDigits: \(evenDigits)");
    print("oddDigits: \(oddDigits)")
    print("differentDigits: \(differentDigits)");
    print("The intersection between differentDigits and oddDigits sets:");
    print(differentDigits.intersection(oddDigits));
    print("The symmetric difference between differentDigits and oddDigits sets:");
    print(differentDigits.symmetricDifference(oddDigits));
    print("The union between evenDigits and oddDigits sets:");
    print(evenDigits.union(oddDigits));
    print("The subtraction between differentDigits and oddDigits sets:");
    print(differentDigits.subtracting(evenDigits));
    print("Are there any uncommon members between evenDigits and oddDigits sets?");
    print(evenDigits.isDisjoint(with: oddDigits));
    print("Sorted sets:");
    print(evenDigits.sorted(), oddDigits.sorted(), differentDigits.sorted());
}

func main()
{
    print("-------------------The tutorial function----------------------------");
    var demo: (String, String) -> String = tutorial;
    print(tutorial(entrance: "Learning ", exit: "Swift"));
    print("-------------------The tutorial function ending----------------------------");
    //tutorial();
    print("-------------------The sandbox function----------------------------");
    sandbox();
    print("-------------------The tutorial function ending----------------------------");
}

main();




