//
// Created by robot on 2/11/21.
//

import Foundation

enum Structures: String
{
    case structInitString = "---------------The structures section--------------------------";
    case structEndingString = "---------------The structures section ending--------------------------";
}

struct PlayerInChess
{
    var name = "Player";
    var wins: UInt = 0;
    init(name: String, wins: UInt) // custom initializer
    {
    self.name = name;
        self.wins = wins;
    }
    func description()
    {
        print("The player \(self.name) has \(self.wins) victories");
    }
    mutating func win( count: UInt = 1)
    {
        self.wins += count;
    }
}

func structDemo ()
{
    print(Structures.structInitString.rawValue);
    var harry = PlayerInChess(name: "Harry", wins: 32);
    var john = PlayerInChess(name: "John", wins: 32);
    var harold = PlayerInChess(name: "Harold", wins: 0);
    harry.description();
    john.description();
    harold.win(count: 3);
    harold.wins+=5;
    harold.description();
    print(Structures.structEndingString.rawValue);
}