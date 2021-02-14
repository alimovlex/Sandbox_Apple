//
// Created by robot on 2/2/21.
//

import Foundation
import CoreFoundation;
//import CDispatch;

enum DataStruct: String //declaring associated type with enumeration (raw value type)
{
    //initialization strings connected to the raw value of enumeration
    case dictionaryInitString = "---------------The dictionary section--------------------------";
    case arrayInitString = "---------------The array section--------------------------";
    case cortegeInitString = "---------------The cortege section--------------------------";
    case setInitString = "---------------The set section--------------------------";
    case stringInitString = "---------------The string section--------------------------";
    case optionalsInitString = "---------------The optionals section--------------------------";
    case anyInitString = "---------------The Any and Anyobject section--------------------------";
    //ending strings
    case dictionaryEndingString = "------The dictionary section ending--------------------------";
    case arrayEndingString = "------The array section ending--------------------------";
    case cortegeEndingString = "------The cortege section ending--------------------------";
    case setEndingString = "------The set section ending--------------------------";
    case stringEndingString = "------The string section ending--------------------------";
    case optionalsEndingString = "------The optionals section ending--------------------------";
    case anyEndingString = "---------------The Any and Anyobject section ending--------------------------";
}

class Corteges
{
    //the cortege block definition
    let statusTuple = (statusCode:200, statusText:"In work", statusConnect:true);
    //the cortege block use
    func demo(tuple1:(a:Int, b:String, c:Bool), tuple2:(x:Int, y:String, z:Bool)) -> (_ :String, _ : String)
    {
        print(DataStruct.cortegeInitString.rawValue);
        print("Are two corteges equal? \(type(of:tuple1) == type(of:tuple2))"); //the comparison of two corteges
        print("The response code: \(statusTuple.statusCode) | Duplicating:\(statusTuple.0)");
        print("The text code: \(statusTuple.statusText) | Duplicating:\(statusTuple.1)");
        print("The connection with server: \(statusTuple.statusConnect) | Duplicating:\(statusTuple.2)");
        print(DataStruct.cortegeEndingString.rawValue);
        return (tuple1.b, tuple2.y); //the cortege return
    }

}

class Arrays
{
    //three ways of defining the arrays
    var alphabetArray = ["c", "b", "a"] { //the property observer
        //First this
        willSet {
            print("willSet Old value is \(alphabetArray), new value is \(newValue)");
        }

        //value is set

        //Finaly this
        didSet {
            print("didSet Old value is \(oldValue), new value is \(alphabetArray)");
        }
    } //first method
    let newalphabetArray = Array(arrayLiteral: 2,4,8,1); //second method
    var repeatArray = Array(repeating: "Swift", count: 5) { //the property observer
        //First this
        willSet {
            print("willSet Old value is \(repeatArray), new value is \(newValue)");
        }

        //value is set

        //Finaly this
        didSet {
            print("didSet Old value is \(oldValue), new value is \(repeatArray)");
        }
    }
    let lineArray = Array(0...9); //third method
    var emptyArray: [String] = []; //first way
    var anotherEmptyArray = [String](); //second way
    var result = 0;
    func demo(matrix:Array<Any>, immutableArray:Array<Int>) -> ([String], [Int])
    {
        print(DataStruct.arrayInitString.rawValue);
        print("""
                      \(matrix[0])
                      \(matrix[1])
                      \(matrix[2])
              """); //the multiline output
        alphabetArray.sort(by: {$0<$1}); //using closures to sort the array
        print("sorted alphabetArray: \(alphabetArray)"); 
        //the enumerated alphabetArray
        for (index, letter) in alphabetArray.enumerated()
        {
            print("\(index). letter: \(letter)");
        }
        //the stepping in the lineArray
        print("lineArray: \(lineArray) | squared: \(lineArray.map{$0*$0})"); //using closures
        // i is the associated variable which wasn't previously declared
        for i in stride(from: lineArray[0], through: lineArray[9], by: 2) where i%2==0
        {
            print("lineArray even numbers stepping 2 in the array: \(i)");
        }
        print("lineArray even numbers stepping 2 using closures: \(lineArray.filter{$0%2==0})");
        //the array methods and its outputs
        print("-------------------------The property observers of repeatArray---------------------------");
        repeatArray.append("Swift"); //the second way of array appension
        repeatArray.insert("Swift", at: 6);
        repeatArray.removeLast();
        repeatArray.removeFirst();
        repeatArray.remove(at: 0);
        repeatArray.dropFirst();
        repeatArray.dropLast();
        print("-------------------------The property observers of repeatArray ending---------------------------");
        print("The repeatArray methods description: \(repeatArray)");
        print("contains:\(repeatArray.count) elements");
        print("is empty:\(repeatArray.isEmpty)");
        print("containing Swift:\(repeatArray.contains("Swift"))");
        print("The digit methods in the immutableArray \(immutableArray)");
        print("min = \(immutableArray.min()!)");
        print("max = \(immutableArray.max()!)");
        for number in immutableArray // number is the associated variable which wasn't previously declared
        {
            result+=number;
        }
        print("summation = \(result) | using closures: \(immutableArray.reduce(0, +))");
        print("The alphabet array: \(alphabetArray)");
        alphabetArray.reverse();
        print("reversedArray\t\(alphabetArray)");
        alphabetArray.sort();
        print("sortedArray\t\(alphabetArray)");
        print(DataStruct.arrayEndingString.rawValue);
        return (repeatArray, immutableArray); //the cortege return
    }
}

class Sets
{
    //the set definition ways
    var dishes: Set<String> = ["Bread", "Vegetables", "Beef", "Water"];
    var dishesTwo: Set = ["Bread", "Vegetables", "Beef", "Water"];
    var members = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var membersTwo = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var emptySet = Set<String>();
    var differentDigits: Set = [3,4,7,8];
    func demo(evenDigits:Set<Int>, oddDigits:Set<Int>)
    {
        print(DataStruct.setInitString.rawValue);
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
        print(DataStruct.setEndingString.rawValue);
    }
}

class Dictionaries
{

    var emptyDictionary: [String:Int] = [:];
    var anotherEmptyDictionary = Dictionary<String,Int>();

    func demo(dictionary:Dictionary<String, String>)
    {
        print(DataStruct.dictionaryInitString.rawValue);
        //The ways of defining the dictionary
        //var dictionary = ["one":"eins", "two":"zwei", "three":"drei"]; first way
        Dictionary(dictionaryLiteral: (100, "hundred"), (200, "two hundred"), (300, "three hundred")); //second way
        let baseCollection = [(2,5), (3,6), (1,4)]; //the cortege's collection for dictionary
        var newDictionary = Dictionary(uniqueKeysWithValues: baseCollection); //dictionary is based on cortege's baseCollection
        //aggregating the dictionary from two arrays
        let nearestStarNames = ["Proxima Centauri", "Alpha Centauri A", "Alpha Centauri B"];
        let nearestStarDistances = [4.24, 4.37, 4.37];
        let starDistanceDict = Dictionary(uniqueKeysWithValues: zip(nearestStarNames, nearestStarDistances));
        newDictionary.removeValue(forKey: 1);//erasing the value from newDictionary
        //the dictionary output
        print(dictionary, dictionary["one"]);
        print(newDictionary);
        //the dictionary methods and its output
        print("The starDistanceDict: \(starDistanceDict)");
        print("contains:\(starDistanceDict.count) elements");
        print("is empty:\(starDistanceDict.isEmpty)");
        print("All starDistanceDict keys: \(starDistanceDict.keys)");
        print("All starDistanceDict values: \(starDistanceDict.values)");
        print(DataStruct.dictionaryEndingString.rawValue);
    }
}

class Strings
{

    func demo(str:String)
    {
        print(DataStruct.stringInitString.rawValue);
        var index = str.startIndex, indexLastChar = str.endIndex;
        var lastChar = str.index(before: indexLastChar);
        var secondCharIndex = str.index(after: str.startIndex);
        var thirdCharIndex = str.index(str.startIndex, offsetBy: 2);
        //the string methods and its output
        print("The String: \(str)");
        print("contains:\(str.count) elements and \(str.unicodeScalars.count) scalars");
        print("is empty:\(str.isEmpty)");
        print("First letter:\(str[index])");
        print("second symbol:\(str[secondCharIndex])");
        print("third symbol:\(str[thirdCharIndex])");
        print("ending symbol:\(str[lastChar])");
        print(DataStruct.stringEndingString.rawValue);
    }
}

class Optionals
{
    //multiple ways of defining optionals
    var optionalChar: Optional<Character> = "a"; //first method
    var xCoordinate: Int? = 12, yCoordinate: Int = 12; //the second method
    var optionalVar = Optional ("Hello "), str:String = "World!"; //the third method
    //xCoordinate+yCoordinate = error; optionals aren't calculated between basic types!!!
    //optionalVar+str = error; optionals aren't calculated between basic types!!!
    //var terminator: Int?, suicide: Int! = ERROR;NEVER DECLARE EMPTY OPTIONALS = RUNTIME CRASH
    func demo(tuple: (code: Int, message: String)?)
    {
        print(DataStruct.optionalsInitString.rawValue);
        var distance = xCoordinate! + yCoordinate; //force unwrapping of the optional variable
        var testString = optionalVar! + str; //force unwrapping of the optional variable
        if xCoordinate != nil && optionalVar != nil //Optionals comparison
        {
            print("Output of the calculation of unwrapped optionals and basic variables:");
            print("The distance is: \(distance) | \(testString)");
        }
        if let string = optionalVar
        {
            print("Using \(optionalVar) binding with variable string = \(string)");
        }
        print(DataStruct.optionalsEndingString.rawValue);
    }
}

func cortegeDemo()
{
    var obj = Corteges();
    print(obj.demo(tuple1: (200, "Cortege", true), tuple2: (200, "Destroys", true)));
}

func arrayDemo()
{
    var obj = Arrays();
    var matrix = [[1,2,3],[4,5,6],[7,6,8]]; //the array-matrix
    var immutableArray = [Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10),Int.random(in: 0...10)]; //the default changeable array
    var lineArray = Array(0...3);
    var lazyArray = lineArray.lazy.map{$0 + 1}.filter{$0 % 2 == 0}; //the lazy array
    var lineArrayMapped = lineArray.map{Array(repeating: $0, count: $0)};
    let arraySummDemo : () -> [Int] = //using closures Embedded functions to hook local vars
            {
                [immutableArray, lineArray] in
                return immutableArray + lineArray;
            }
    print(obj.demo(matrix: matrix, immutableArray: immutableArray));
    print("The array summation demo = \(arraySummDemo()), lineArrayMapped = \(lineArrayMapped)");
    print("The lazyArray: \(Array(lazyArray))");

}

func setDemo()
{
    var obj = Sets();
    //the digit based sets
    let evenDigits: Set = [0,2,4,6,8];
    let oddDigits: Set = [1,3,5,7,9];
    obj.demo(evenDigits: evenDigits, oddDigits: oddDigits);
}

func dictionaryDemo()
{
    var obj = Dictionaries();
    var dictionary = ["one":"eins", "two":"zwei", "three":"drei"];
    obj.demo(dictionary: dictionary);
}

func stringDemo()
{
    var obj = Strings();
    var str = "Hello World!";
    obj.demo(str: str);
}

func optionalsDemo()
{
    var obj = Optionals();
    obj.demo(tuple:(404,"Page not found") );
}

func anyDemo()
{
    print(DataStruct.anyInitString.rawValue);
    var things = [Any](); //declaring the variable of type any. Any type can be stored here
    let someObjects: [AnyObject] = [Corteges(), Arrays(), Sets(), Dictionaries(), Strings(), Optionals()];
    things.append(0); //Int
    things.append(0.0); //Double
    things.append(42);
    things.append("Hello"); //String
    things.append((3.0, 5.0)); //Tuple
    things.append({(name: String) -> String in "Hello, \(name)"});
    print("The variable of type Any contains: \(things)");
    print("The variable of type AnyObject contains these objects: \(someObjects)");
    print(DataStruct.anyEndingString.rawValue);
}