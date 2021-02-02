import Foundation;
import CoreFoundation;
import CDispatch;

func sandbox()
{
    CortegeDemo();
    ArrayDemo();
    SetDemo();
    DictionaryDemo();
}

func main()
{
    var str = ["Hello", "world"];
    print("Hello, playground\n\(str)");
    print("-------------------The sandbox function----------------------------");
    sandbox();
    print("-------------------The sandbox function ending----------------------------");
    //print("-------------------The tutorial function----------------------------");
    //var demo: (String, String) -> String = tutorial;
    //print(tutorial(entrance: "Learning ", exit: "Swift"));
    //print("-------------------The tutorial function ending----------------------------");
    //tutorial();

}

main();




