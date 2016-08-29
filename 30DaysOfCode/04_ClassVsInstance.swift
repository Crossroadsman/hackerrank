class Person {
    var age: Int = 0

    init (initialAge: Int) {
        // Add some more code to run some checks on initialAge  
        switch initialAge {
            case _ where initialAge < 0:
            print("Age is not valid, setting age to 0.")
            age = 0
            default:
            age = initialAge
        }
    }

    func amIOld () {
        // Do some computations in here and print out the correct statement to the console
        switch age {
            case _ where age < 13:
            print("You are young.")
            case _ where age < 18:
            print("You are a teenager.")
            default:
            print("You are old.")
        }
    }

    func yearPasses() {
        // Increment the age of the person in here
        age += 1
    }
}
