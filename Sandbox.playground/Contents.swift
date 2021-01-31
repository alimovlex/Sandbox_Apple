import Foundation

func main()
{
    var str = ["Hello", "world"];
    //the courtage block definition
    var tuple1 = (200, "In work", true);
    var tuple2 = (true, "At Work", 200);
    let statusTuple = (statusCode:200, statusText:"In work", statusConnect:true);
    //three ways of defining the arrays
    let alphabetArray = ["a", "b", "c"]; //first method
    let newalphabetArray = Array(arrayLiteral: 2,4,8,1); //second method
    let lineArray = Array(0...9); //third method
    let repeatArray = Array(repeating: "Swift", count: 5);
    var mutableArray = [2,4,8,1]; //the default changeable array
    var emptyArray: [String] = []; //first way
    var anotherEmptyArray = [String](); //second way
    str+=repeatArray; //the array appension
    var matrix = [[1,2,3],[4,5,6],[7,6,8]]; //the array-matrice
    //the set definition ways
    var dishes: Set<String> = ["Bread", "Vegetables", "Beef", "Water"];
    var dishesTwo: Set = ["Bread", "Vegetables", "Beef", "Water"];
    var members = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var membersTwo = Set<String>(arrayLiteral: "Chicken", "Fish", "Meat");
    var emptySet = Set<String>();
    //the courtage block use
    print("Hello, playground\n\(str)");
    print("""
        \(matrix[0])
        \(matrix[1])
        \(matrix[2])
"""); //the multiline output
    print(type(of:tuple1) == type(of:tuple2)); //the comparison of two coutages
    print("The response code: \(statusTuple.statusCode) | Duplicating:\(statusTuple.0)");
    print("The text code: \(statusTuple.statusText) | Duplicating:\(statusTuple.1)");
    print("The connection with server: \(statusTuple.statusConnect) | Duplicating:\(statusTuple.2)");
    
}

main();
