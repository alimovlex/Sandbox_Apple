//
// Created by robot on 2/10/21.
//

import Foundation

enum Smile: String //declaring associated type with enumeration (raw value type)
{
    //rav value of type String
    case joy = ":)";
    case laugh = ":D";
    case sorrow = ":(";
    case hello = "hello";
    //calculated property of enumeration
    var greeting: String //var mandatory because let will cause an error
    {
        return self.rawValue;
    }
    func about() //method in enumeration
    {
        print("The enumeration contains smiles");
    }
}

enum CurrencyUnit
{
    case rouble, euro, dollar, swiss_franc, pound;
    case RUB(countries: [String], shortName: String);
    case CHF(countries: [String], shortName: String);
    case EUR(countries: [String], shortName: String);
}

enum AdvancedCurrencyUnit
{
    enum EuroCountries
    {
        case austria;
        case belgium;
        case cyprus;
        case estonia;
        case finland;
        case france;
        case germany;
        case greece;
        case ireland;
        case italy;
        case latvia;
        case lithuania;
        case luxembourg;
        case malta;
        case netherlands;
        case portugal;
        case slovakia;
        case slovenia;
        case spain;
    }

    enum FrancCountries
    {
        case switzerland;
        case liechtenstein;
    }

    enum CrownCountries
    {
        case czechia;
        case sweden;
        case norway;
        case denmark;
        case greenland;
        case iceland;
    }

    enum RoubleCountries
    {
        case russia;
        case belarus;
    }

    enum DollarCountries
    {
        case usa;
        case canada;
        case new_zealand;
        case australia;
    }
    case rouble(сountries: [String], shortName: String);
    case euro(сountries: [String], shortName: String);
    case dollar(nation: DollarCountries, shortName: String);
    case franc(nation: FrancCountries, shortName: String);
}

func enumDemo()
{
    let enumerationInitString = "---------------The enumeration section--------------------------";
    let enumerationEndingString = "---------------The enumeration section ending--------------------------";
    //defining enumeration using currencies example
    //first way
    var RUB = CurrencyUnit.rouble;
    var EUR = CurrencyUnit.euro;
    var USD = CurrencyUnit.dollar;
    var CHF = CurrencyUnit.swiss_franc;
    var GBP = CurrencyUnit.pound;
    //second way
    var euroCurrency: CurrencyUnit = .EUR(countries:
    ["Austria", "Belgium", "Cyprus", "Estonia", "Finland", "France", 
     "Germany", "Greece", "Ireland", "Italy", "Latvia", "Lithuania", 
     "Luxembourg", "Malta", "the Netherlands", "Portugal", "Slovakia", 
     "Slovenia", "Spain"], shortName: "EUR");
    var francCurrency: CurrencyUnit = .CHF(countries: ["Switzerland", "Liechtenstein"], shortName: "CHF");
    var rubleCurrency: CurrencyUnit = .RUB(countries: ["Russia", "Belarus"], shortName: "RUB");
    //third way using AdvancedCurrencyUnit enumeration
    var dollarCurrency: AdvancedCurrencyUnit = .dollar( nation: .usa, shortName: "USD" );
    var dollarCurrencyTwo: AdvancedCurrencyUnit = .dollar(nation: .canada, shortName: "CAD");
    var dollarCurrencyThree: AdvancedCurrencyUnit = .dollar(nation: .australia, shortName: "AUD");
    var dollarCurrencyFour: AdvancedCurrencyUnit = .dollar(nation: .new_zealand, shortName: "NZD");
    //fourth way using nested enumeration
    var australia: AdvancedCurrencyUnit.DollarCountries = .australia;
    var usa: AdvancedCurrencyUnit.DollarCountries = .usa;
    var canada: AdvancedCurrencyUnit.DollarCountries = .canada;
    var new_zealand: AdvancedCurrencyUnit.DollarCountries = .new_zealand;
    var russia:AdvancedCurrencyUnit.RoubleCountries = .russia;
    var belarus:AdvancedCurrencyUnit.RoubleCountries = .belarus;
    print(enumerationInitString);
    switch dollarCurrency
    {
    case .dollar(let nation, let shortName):
        print("Dollar \(nation). Meaning: \(shortName)");
    case .rouble(let countries, let shortName):
        print("Ruble \(countries). Meaning: \(shortName)");
    case .franc(let countries, let shortName):
        print("Swiss Franc \(countries). Meaning: \(shortName)");
    case .euro(let countries, let shortName):
        print("Euro \(countries). Meaning: \(shortName)");
    }

    switch dollarCurrencyTwo
    {
    case .dollar(let nation, let shortName):
        print("Dollar \(nation). Meaning: \(shortName)");
    case .rouble(let countries, let shortName):
        print("Ruble \(countries). Meaning: \(shortName)");
    case .franc(let countries, let shortName):
        print("Swiss Franc \(countries). Meaning: \(shortName)");
    case .euro(let countries, let shortName):
        print("Euro \(countries). Meaning: \(shortName)");
    }

    switch dollarCurrencyThree
    {
    case .dollar(let nation, let shortName):
        print("Dollar \(nation). Meaning: \(shortName)");
    case .rouble(let countries, let shortName):
        print("Ruble \(countries). Meaning: \(shortName)");
    case .franc(let countries, let shortName):
        print("Swiss Franc \(countries). Meaning: \(shortName)");
    case .euro(let countries, let shortName):
        print("Euro \(countries). Meaning: \(shortName)");
    }

    switch dollarCurrencyFour
    {
    case .dollar(let nation, let shortName):
        print("Dollar \(nation). Meaning: \(shortName)");
    case .rouble(let countries, let shortName):
        print("Ruble \(countries). Meaning: \(shortName)");
    case .franc(let countries, let shortName):
        print("Swiss Franc \(countries). Meaning: \(shortName)");
    case .euro(let countries, let shortName):
        print("Euro \(countries). Meaning: \(shortName)");
    }
    var hello: Smile = .hello; //defining the calculated property of enumeration
    print("Printing associated values in enumerations:");
    print(Smile.joy.rawValue, Smile.laugh.rawValue, Smile.sorrow.rawValue); //accessing the associated value in enumeration
    print("Custom init raw value/associated value in enum: \(Smile.init(rawValue: "hello")!)");
    print("Calculated property in enumeration: \(hello.greeting)");
    Smile.hello.about();
    print(enumerationEndingString);
}