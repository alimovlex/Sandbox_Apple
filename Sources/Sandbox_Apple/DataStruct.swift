//
// Created by robot on 2/2/21.
//

import Foundation
import CoreFoundation;
import CDispatch;

class DataStruct
{
    //initialization strings
    let dictionaryInitString = "---------------The dictionary section--------------------------";
    let arrayInitString = "---------------The array section--------------------------";
    let cortegeInitString = "---------------The cortege section--------------------------";
    let setInitString = "---------------The dictionary section--------------------------";
    //ending strings
    let dictionaryEndingString = "------The dictionary section ending--------------------------";
    let arrayEndingString = "------The array section ending--------------------------";
    let cortegeEndingString = "------The cortege section ending--------------------------";
    let setEndingString = "------The set section ending--------------------------";
}

class Cortege: DataStruct
{
    //the cortege block definition
    let statusTuple = (statusCode:200, statusText:"In work", statusConnect:true);
    //the cortege block use
    func demo(tuple1:(Int, String, Bool), tuple2:(Int, String, Bool))
    {
        print(cortegeInitString);
        print("Are two corteges equal? \(type(of:tuple1) == type(of:tuple2))"); //the comparison of two corteges
        print("The response code: \(statusTuple.statusCode) | Duplicating:\(statusTuple.0)");
        print("The text code: \(statusTuple.statusText) | Duplicating:\(statusTuple.1)");
        print("The connection with server: \(statusTuple.statusConnect) | Duplicating:\(statusTuple.2)");
        print(cortegeEndingString);
    }
}

class Arrays: DataStruct
{
    //three ways of defining the arrays
    var alphabetArray = ["a", "b", "c"]; //first method
    let newalphabetArray = Array(arrayLiteral: 2,4,8,1); //second method
    var repeatArray = Array(repeating: "Swift", count: 5);
    let lineArray = Array(0...9); //third method
    var emptyArray: [String] = []; //first way
    var anotherEmptyArray = [String](); //second way
    func demo(matrix:Array<Any>, immutableArray:Array<Int>)
    {
        print(arrayInitString);
        print("""
                      \(matrix[0])
                      \(matrix[1])
                      \(matrix[2])
              """); //the multiline output
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
        print("The digit methods in the immutableArray \(immutableArray)");
        print("min = \(immutableArray.min())");
        print("max = \(immutableArray.max())");
        print("The alphabet array: \(alphabetArray)");
        alphabetArray.reverse();
        print("reversedArray\t\(alphabetArray)");
        alphabetArray.sort();
        print("sortedArray\t\(alphabetArray)");
        print(arrayEndingString);
    }
}

class Sets: DataStruct
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
        print(setInitString);
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
        print(setEndingString);
    }
}

class Dictionaries: DataStruct
{

    var emptyDictionary: [String:Int] = [:];
    var anotherEmptyDictionary = Dictionary<String,Int>();

    func demo(dictionary:Dictionary<String, String>)
    {
        print(dictionaryInitString);
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
        print(dictionaryEndingString);
    }
}

func CortegeDemo()
{
    var obj = Cortege();
    obj.demo(tuple1: (200, "In work", true), tuple2: (200, "At Work", true));
}

func ArrayDemo()
{
    var obj = Arrays();
    var matrix = [[1,2,3],[4,5,6],[7,6,8]]; //the array-matrix
    var immutableArray = [2,4,8,1]; //the default changeable array
    obj.demo(matrix: matrix, immutableArray: immutableArray);
}

func SetDemo()
{
    var obj = Sets();
    //the digit based sets
    let evenDigits: Set = [0,2,4,6,8];
    let oddDigits: Set = [1,3,5,7,9];
    obj.demo(evenDigits: evenDigits, oddDigits: oddDigits);
}

func DictionaryDemo()
{
    var obj = Dictionaries();
    var dictionary = ["one":"eins", "two":"zwei", "three":"drei"]; 
    obj.demo(dictionary: dictionary);
}
