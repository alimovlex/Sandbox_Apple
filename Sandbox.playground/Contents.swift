import Foundation

func main()
{
    var str = "Hello world";
    //the courtage block definition
    var tuple1 = (200, "In work", true);
    var tuple2 = (true, "At Work", 200);
    let statusTuple = (statusCode:200, statusText:"In work", statusConnect:true);
    //three ways of defining the arrays
    let alphabetArray = ["a", "b", "c"]; //first method
    let newalphabetArray = Array(arrayLiteral: 2,4,8,1); //second method
    let lineArray = Array(0...9); //third method
    var mutableArray = [2,4,8,1]; //the default changeable array
    //the courtage block use
    print("Hello, playground\n\(str)");
    print(type(of:tuple1) == type(of:tuple2)); //the comparison of two coutages
    print("The response code: \(statusTuple.statusCode) | Duplicating:\(statusTuple.0)");
    print("The text code: \(statusTuple.statusText) | Duplicating:\(statusTuple.1)");
    print("The connection with server: \(statusTuple.statusConnect) | Duplicating:\(statusTuple.2)");
    
}

main();
