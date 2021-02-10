import Foundation;
import CoreFoundation;
import CDispatch;

enum sandbox: String //raw value type
{
    case start = "The dataStructDemo function initialization"; //rav value
    func dataStructDemo() -> Int {
        cortegeDemo();
        arrayDemo();
        setDemo();
        dictionaryDemo();
        stringDemo();
        optionalsDemo();
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
        return 0;
    }
    case finish = "The objectsDemo function finishing";
}

func choice(function: ()) -> Int //declaring the function type as a parameter in other function
{
    return 0;
}

func swap(_ a:inout Int, _ b:inout Int)
{
    let tmp = a;
    a = b;
    b = tmp;
}

func main()
{
    print("Please enter 2 variables to swap")
   // var a = readLine();
    //var b = readLine();
   // print("Before swap: a = \(a) b = \(b)");
    //swap(&a, &b); //The C/C++ function way of calling a function
    //print("After swap: a = \(a) b = \(b)");
    //print("a + b = \(Int(a!)! + Int(b!)!)");
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

main();




