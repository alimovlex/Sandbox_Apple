import Foundation;
import CoreFoundation;
import CDispatch;

enum days
{
    case Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
}

class Weekdays
{
    init() {
        print("Constructing");
    }
        var days: [Int: String] = [1: "Monday", 2: "Tuesday", 3: "Wednesday",
                                   4: "Thursday", 5: "Friday", 6: "Saturday", 7: "Sunday"];

        func summ(a: Float, b: Float) -> Float {
            return a + b;
        }
    deinit {
    print("Destructing");
}
}

class Months: Weekdays
{
    var months: [Int:String] = [1:"January", 2:"February", 3:"March", 4:"April", 5:"May", 6:"June", 
                                7:"July", 8:"August", 9:"September", 10:"October", 11:"November", 12:"December"];

    override func summ(a: Float, b: Float) -> Float {
        return super.summ(a: pow(a, 2.0), b: pow(b, 2));
    }
}

func tutorial ()
{


    let pi = 3.14159, c = 2.0;

    var word: String, year: Int, wort:String;
    var array = [Int](repeating: 4, count: 3);
    var massiv: [Int] = [1,2,3,4,5];
    var names: Set<String> = ["David", "Joe", "Sean"];
    var namen: [String:String];
    var days = Weekdays(), months = Months();
    word = "Year";
    wort = "New ";
    year = 2021;
    namen = ["David":"Jones", "Joe":"Silverman", "Sean":"Davis"];

    print("Hello, world!\n", (wort),(word),days.summ(a: 2000, b: 21));
    print("string word counts = \(word.count)\(wort.count)");
    massiv.removeLast();
    print(array, massiv);
    if (year > 2020) {
        print(wort + word);
    }
    else {
        print("Error");
    }

    for names in names.sorted()
    {
        print(names);
    }

    switch year {
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
}

func main()
{
    tutorial();
}

main();




