import Cocoa

class Animal{
    var legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    func speak(){
        print("bark (normal)")
    }
}

class Chiuahua: Dog{
    override func speak(){
        print("horrid bark")
    }
}
class Husky: Dog{
    override func speak(){
        print("uahouahhouahouah")
    }
}
class Cat: Animal{
    var isTame: Bool
    
    init(isTame: Bool){
        self.isTame = isTame
        super.init(legs: 4)
    }
    func speak(){
        print("meow")
    }
}

class Sphinx: Cat{
    init(){
        super.init(isTame: true)
    }
    override func speak(){
        print("cold meow")
    }
}
class Cougar: Cat{
    init(){
        super.init(isTame: false)
    }
    override func speak(){
        print("roar")
    }
}
let animals: [Animal] = [Cougar(), Sphinx(), Husky(), Chiuahua()]
for animal in animals {
    if let dog = animal as? Dog{
        dog.speak()
    } else if let cat = animal as? Cat{
        cat.speak()
        print("Tame \(cat.isTame)")
    }
    print("legs = \(animal.legs)")
}
