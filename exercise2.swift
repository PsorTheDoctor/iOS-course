import Foundation

class Fruit {
    var name = String()
    init(name: String) {
        self.name = name
    }
}

struct Stack {
    var elements = [Fruit]()

    func pushElement(elements: [Fruit], element: Fruit) -> [Fruit] {
        var elementsCopy = elements
        elementsCopy.append(element)
        return elementsCopy
    }

    func popElement(elements: [Fruit]) -> [Fruit] {
        var elementsCopy = elements
        elementsCopy.remove(at: elements.count - 1)
        return elementsCopy
    }

    func peekElement(elements: [Fruit]) -> Fruit {
        return elements[elements.count - 1]
    }

    func editTopElement(elements: [Fruit], element: Fruit) -> [Fruit] {
        var elementsCopy = elements
        elementsCopy[elements.count - 1] = element
        return elementsCopy
    }

    func printStackElements(elements: [Fruit]) {
        for e in elements {
            print(e.name, terminator: " ")
        }
        print()
    }
}

var apple = Fruit(name: "apple")
var orange = Fruit(name: "orange")
var banana = Fruit(name: "banana")

var fruits = [apple, orange, banana]

var stack = Stack(elements: fruits)
stack.printStackElements(elements: fruits)

fruits = stack.pushElement(elements: fruits, element: Fruit(name: "pear"))
stack.printStackElements(elements: fruits)

fruits = stack.popElement(elements: fruits)
stack.printStackElements(elements: fruits)

var top = stack.peekElement(elements: fruits)
print(top.name)

fruits = stack.editTopElement(elements: fruits, element: Fruit(name: "cherry"))
stack.printStackElements(elements: fruits)