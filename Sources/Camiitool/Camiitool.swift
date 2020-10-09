
import amiitool

public class Amii {
	var someString = "test"

	public init() {
		someString = "initialized"
	}
    
    public func printTest() {
        print(someString)
    }

	 public func printSomething() {
	 	print(someString)

        let cString: UnsafePointer<CChar> = nfc3d_version_fork()

        print(String(cString: cString))
	 }
}
