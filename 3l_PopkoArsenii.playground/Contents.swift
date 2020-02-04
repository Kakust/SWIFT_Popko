import UIKit


    enum Brend {
        case BMW
        case Mersedes
        case Volkswagen
    }
    
    enum Body {
        case coupe
        case hatchback
        case offRoad
        case sedan
    }
    
    enum Color {
        case blue
        case white
        case black
        case brown
    }

    enum EngineState {
        case start
        case stop
    }
    
    enum Transmission {
        case manual
        case auto
    }

    enum DoorState {
        case close
        case open
    }

struct Car {
    var doorState: DoorState
    
        mutating func doorClose() {
            self.doorState = .close
        }
    
        mutating func doorOpen() {
            self.doorState = .open
        }
    
    let brend: Brend
    let color: UIColor
    let transmission: Transmission
    let boby: Body
    var km: Double {
        didSet {
            let distance = km - oldValue
            print ("Пройден новый участок, равный \(distance)")
        }
    }
    var engineStare: EngineState {
        willSet {
            if newValue == .start {
                print ("Двигатель сейчас запуститься")
            } else {
                print ("Двигатель сейчас выключится")
            }
        }
    }
    var volumeTrunk: Double {
        didSet {
            let volume = volumeTrunk - oldValue
                print ("В багажнике стало на \(volume) м3 меньше")
        }
    }
    
    func printDistate() {
        print ("Автомобиль проехал \(km)")
    }
}

var car1 = Car (doorState: .close, brend: .BMW, color: .black, transmission: .auto, boby: .sedan, km: 20.0, engineStare: .stop, volumeTrunk: 3.56)
var car2 = Car (doorState: .open, brend: .Volkswagen, color: .brown, transmission: .manual, boby: .coupe, km: 300.0, engineStare: .start, volumeTrunk: 1.23)

car1.doorOpen()
car1.engineStare = .start
car1.volumeTrunk = 2.56
car1.km = 1234.567
car1.km = 2000.0
car1.km = 3000.0
car1.printDistate()

car2.km = 4763.32
car2.volumeTrunk = 0.43
car2.engineStare = .stop
car2.printDistate()
car2.doorClose()

