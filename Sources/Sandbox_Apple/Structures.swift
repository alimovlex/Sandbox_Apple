//
// Created by robot on 2/11/21.
//

import Foundation

enum Blocks: String //ALL values must be initialized
{
    //initialization strings
    case structInitString = "---------------The structures section--------------------------";
    case classInitString = "---------------The class section--------------------------";
    //ending strings
    case structEndingString = "---------------The structures section ending--------------------------";
    case classEndingString = "---------------The class section ending--------------------------";
}

class Chessman //ALL values must be initialized
{
    enum ChessmanType
    {
        case king, rook, bishop, pawn, knight, queen;
    }

    enum ChessmanColor
    {
        case black, white;
    }
    // figure type
    let type: ChessmanType;
    // figure color
    let color: ChessmanColor;
    // figure coordinates
    var coordinates: (String, Int)? = nil;
    // figure symbol
    let figureSymbol: Character
    //initializer
    init(type: ChessmanType, color: ChessmanColor, figure: Character)  //ALL values must be initialized
    {
    self.type = type;
        self.color = color;
        self.figureSymbol = figure;
    }
    //setting coordinates
    func setCoordinates(char c: String, num n: Int)
    {
        self.coordinates = (c,n);
    }
    func kill()
    {
        self.coordinates = nil;
    }

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
    mutating func win( count: UInt = 1) //changeable method for wins property
    {
        self.wins += count;
    }
}

func structDemo ()
{
    print(Blocks.structInitString.rawValue);
    var harry = PlayerInChess(name: "Harry", wins: 32);
    var john = PlayerInChess(name: "John", wins: 32);
    var harold = PlayerInChess(name: "Harold", wins: 0);
    harry.description();
    john.description();
    harold.win(count: 3);
    harold.wins+=5;
    harold.description();
    print(Blocks.structEndingString.rawValue);
}

func classDemo ()
{
    print(Blocks.classInitString.rawValue);
    //White Chess figures
    print("The chess deck");
    var kingWhite = Chessman(type: .king, color: .white, figure: "\u{2654}");
    var queenWhite = Chessman(type: .queen, color: .white, figure: "\u{2655}");
    var rookWhiteLeft = Chessman(type: .rook, color: .white, figure: "\u{2656}");
    var rookWhiteRight = Chessman(type: .rook, color: .white, figure: "\u{2656}");
    var bishopWhiteLeft = Chessman(type: .bishop, color: .white, figure: "\u{2657}");
    var bishopWhiteRight = Chessman(type: .bishop, color: .white, figure: "\u{2657}");
    var knightWhiteLeft = Chessman(type: .knight, color: .white, figure: "\u{2658}");
    var knightWhiteRight = Chessman(type: .knight, color: .white, figure: "\u{2658}");
    var pawnWhiteA = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteB = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteC = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteD = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteE = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteF = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteG = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    var pawnWhiteH = Chessman(type: .pawn, color: .white, figure: "\u{2659}");
    //Black Chess figures
    var kingBlack = Chessman(type: .king, color: .black, figure: "\u{265A}");
    var queenBlack = Chessman(type: .queen, color: .black, figure: "\u{265B}");
    var rookBlackLeft = Chessman(type: .rook, color: .black, figure: "\u{265C}");
    var rookBlackRight = Chessman(type: .rook, color: .black, figure: "\u{265C}");
    var bishopBlackLeft = Chessman(type: .bishop, color: .black, figure: "\u{265D}");
    var bishopBlackRight = Chessman(type: .bishop, color: .black, figure: "\u{265D}");
    var knightBlackLeft = Chessman(type: .knight, color: .black, figure: "\u{265E}");
    var knightBlackRight = Chessman(type: .knight, color: .black, figure: "\u{265E}");
    var pawnBlackA = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackB = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackC = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackD = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackE = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackF = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackG = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    var pawnBlackH = Chessman(type: .pawn, color: .black, figure: "\u{265F}");
    //setting up coordinates of white figures
    kingWhite.setCoordinates(char: "E", num: 1);
    queenWhite.setCoordinates(char: "D", num: 1);
    rookWhiteRight.setCoordinates(char: "H", num: 1);
    rookWhiteLeft.setCoordinates(char: "A", num: 1);
    knightWhiteLeft.setCoordinates(char: "B", num: 1);
    knightWhiteRight.setCoordinates(char: "G", num: 1);
    bishopWhiteLeft.setCoordinates(char: "C", num: 1);
    bishopWhiteRight.setCoordinates(char: "F", num: 1);
    //pawns section
    pawnWhiteA.setCoordinates(char: "A", num: 2);
    pawnWhiteB.setCoordinates(char: "B", num: 2);
    pawnWhiteC.setCoordinates(char: "C", num: 2);
    pawnWhiteD.setCoordinates(char: "D", num: 2);
    pawnWhiteE.setCoordinates(char: "E", num: 2);
    pawnBlackF.setCoordinates(char: "F", num: 2);
    pawnBlackG.setCoordinates(char: "G", num: 2);
    pawnBlackH.setCoordinates(char: "H", num: 2);
    //setting up coordinates of black figures
    queenBlack.setCoordinates(char: "D", num: 8);
    kingBlack.setCoordinates(char: "E", num: 8);
    rookBlackRight.setCoordinates(char: "H", num: 8);
    rookBlackLeft.setCoordinates(char: "A", num: 8);
    knightBlackLeft.setCoordinates(char: "B", num: 8);
    knightBlackRight.setCoordinates(char: "G", num: 8);
    bishopBlackLeft.setCoordinates(char: "C", num: 8);
    bishopBlackRight.setCoordinates(char: "F", num: 8);
    //pawns section
    pawnWhiteA.setCoordinates(char: "A", num: 7);
    pawnWhiteB.setCoordinates(char: "B", num: 7);
    pawnWhiteC.setCoordinates(char: "C", num: 7);
    pawnWhiteD.setCoordinates(char: "D", num: 7);
    pawnWhiteE.setCoordinates(char: "E", num: 7);
    pawnBlackF.setCoordinates(char: "F", num: 7);
    pawnBlackG.setCoordinates(char: "G", num: 7);
    pawnBlackH.setCoordinates(char: "H", num: 7);

    print(  rookBlackLeft.figureSymbol,
            knightBlackLeft.figureSymbol,
            bishopBlackLeft.figureSymbol,
            queenBlack.figureSymbol,
            kingBlack.figureSymbol,
            bishopBlackRight.figureSymbol,
            knightBlackRight.figureSymbol,
            rookBlackRight.figureSymbol);

    print(  pawnBlackA.figureSymbol,
            pawnBlackB.figureSymbol,
            pawnBlackC.figureSymbol,
            pawnBlackD.figureSymbol,
            pawnBlackE.figureSymbol,
            pawnBlackF.figureSymbol,
            pawnBlackG.figureSymbol,
            pawnBlackH.figureSymbol,
            "\n");

    print(  pawnWhiteA.figureSymbol,
            pawnWhiteB.figureSymbol,
            pawnWhiteC.figureSymbol,
            pawnWhiteD.figureSymbol,
            pawnWhiteE.figureSymbol,
            pawnWhiteF.figureSymbol,
            pawnWhiteG.figureSymbol,
            pawnWhiteH.figureSymbol);

    print(  rookWhiteLeft.figureSymbol,
            knightWhiteLeft.figureSymbol,
            bishopWhiteLeft.figureSymbol,
            queenWhite.figureSymbol,
            kingWhite.figureSymbol,
            bishopWhiteRight.figureSymbol,
            knightWhiteRight.figureSymbol,
            rookWhiteRight.figureSymbol);

    print(Blocks.classEndingString.rawValue);
}