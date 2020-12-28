import Foundation;
import CoreFoundation;
import CDispatch;

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
    subscript(index: Int) -> String
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
        func summ(a: Float, b: Float) -> Float {
            return a + b;
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

    override func summ(a: Float, b: Float) -> Float {
        return super.summ(a: pow(a, 2.0), b: pow(b, 2));
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
    print((string),"\n", (heute.wort)+(heute.word),days.summ(a: 2000, b: 21));
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

}

func main()
{
    var demo: (String, String) -> String = tutorial;
    print(tutorial(entrance: "Learning ", exit: "Swift"));
    //tutorial();
    //sandbox();
}

main();




