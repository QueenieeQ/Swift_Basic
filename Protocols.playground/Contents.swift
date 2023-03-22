import Foundation

// protocol is special kind of object kind of interfaces in java

// that is an interface you create a set of rules that object which conform to a protocol have to follow
protocol CanBreathe{
    func breath()
}

// function can leave body of function in blank

struct Animal: CanBreathe {
    func breath() {
        print("Animal can breath")
    }
}
// struct cannt have super class so they can be inherit
// but they allow inherit from protocol

struct Person:CanBreathe{
    func breath() {
        print("Have fun")
    }
}


