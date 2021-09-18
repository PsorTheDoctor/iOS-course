import Foundation

class Fruit {
    var name = String()
    init(name: String) {
        self.name = name
    }
}

class Stack {
    var elements = [Fruit]()

    init(elements: [Fruit]) {
        self.elements = elements
    }

    func pushElement(element: Fruit) {
        elements.append(element)
    }

    func popElement() {
        elements.remove(at: elements.count - 1)
    }

    func peekElement() -> Fruit {
        return elements[elements.count - 1]
    }

    func printStackElements() {
        for e in elements {
            print(e.name, terminator: " ")
        }
        print()
    }
}

var apple = Fruit(name: "apple")
var orange = Fruit(name: "orange")
var banana = Fruit(name: "banana")

var stack = Stack(elements: [apple, orange, banana])
stack.printStackElements()

stack.pushElement(element: Fruit(name: "pear"))
stack.printStackElements()

stack.popElement()
stack.printStackElements()

var top = stack.peekElement()
print(top.name)