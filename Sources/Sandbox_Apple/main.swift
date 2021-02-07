import Foundation;
import CoreFoundation;
import CDispatch;

func sandbox() -> Int
{
    CortegeDemo();
    ArrayDemo();
    SetDemo();
    DictionaryDemo();
    StringDemo();
    return 0;
}

func dragons(dragonChars:(color:String, mass:Int), dragonsCount:Int)
{
    switch (dragonChars) {
    case ("green", 0..<2): print("Into the first cage");
    case ("red", 0..<2): print("Into the second cage");
    case ("green", 2...) where dragonsCount < 5, ("red", 2...) where dragonsCount < 5: 
        print("Into the third cage");
    default:
        print("Incorrect data provided");
        break;
    }
}

func main()
{
    //dragons(dragonChars: ("red", 2), dragonsCount: 3);
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




