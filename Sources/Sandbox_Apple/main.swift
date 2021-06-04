import Foundation;
import CoreFoundation;
//import CDispatch;

extension Int //the extension of the integer type
{
    mutating func square()
    {
        self = self * self; //The method which accepts the value via reference and changes it.
    }
}

enum sandbox: String //raw value type
{
    case start = "The dataStructDemo function initialization"; //raw value
    func dataStructDemo() -> Int {
        cortegeDemo();
        arrayDemo();
        setDemo();
        dictionaryDemo();
        stringDemo();
        optionalsDemo();
        anyDemo();
        return 0;
    }
    case finish = "The dataStructDemo function finishing";
}

enum objects: String
{
    case start = "The objectsDemo function initialization";
    func objectsDemo() -> Int
    {
        enumDemo();
        structDemo();
        classDemo();
        return 0;
    }
    case finish = "The objectsDemo function finishing";
}

func choice(function: ()) -> Int //declaring the function type as a parameter in other function
{
    return 0;
}

func swap(_ a:inout Int, _ b:inout Int) //The function which accepts parameters via reference.
{
    let tmp = a;
    a = b;
    b = tmp;
}

func main()
{
    print("The 2 variables to swap")
    var a = Int.random(in: 0...100); //random value
    var b = Int.random(in: 0...100); //random value
    a.square();
    b.square();
    print("Before swap: a = \(a) b = \(b)");
    swap(&a, &b); //The C/C++ function way of calling a function
    print("After swap: a = \(a) b = \(b)");
    print("a + b = \(a + b)");
    print("-------------------\(sandbox.start.rawValue)----------------------------");
    assert(sandbox.start.dataStructDemo()==0, "The program has finished flawlessly!"); //function assertion
    print("-------------------\(sandbox.finish.rawValue)----------------------------");
    print("-------------------The tutorial function----------------------------");
    //var demo: (String, String) -> String = tutorial;
    //print(tutorial(entrance: "Learning ", exit: "Swift"));
    assert(choice(function: tutorial())==0, "The program has been finished flawlessly!"); //function assertion
    print("-------------------The tutorial function ending----------------------------");
    print("-------------------\(objects.start.rawValue)----------------------------");
    assert(objects.start.objectsDemo()==0, "The program has finished flawlessly!"); //function assertion
    print("-------------------\(objects.finish.rawValue)----------------------------");
}

//main();

cppListTest();


