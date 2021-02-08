import Foundation;
import CoreFoundation;
import CDispatch;

func sandbox() -> Int
{
    cortegeDemo();
    arrayDemo();
    setDemo();
    dictionaryDemo();
    stringDemo();
    optionalsDemo();
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
    var a = 2, b = 3;
    print("Before swap: a = \(a) b = \(b)");
    swap(&a, &b); //The C/C++ function way of calling a function
    print("After swap: a = \(a) b = \(b)");
    print("-------------------The sandbox function----------------------------");
    assert(sandbox()==0, "The program has been finished flawlessly!"); //function assertion
    //sandbox();
    print("-------------------The sandbox function ending----------------------------");
    //print("-------------------The tutorial function----------------------------");
    //var demo: (String, String) -> String = tutorial;
    //print(tutorial(entrance: "Learning ", exit: "Swift"));
    //print("-------------------The tutorial function ending----------------------------");
    //tutorial();

}

main();




