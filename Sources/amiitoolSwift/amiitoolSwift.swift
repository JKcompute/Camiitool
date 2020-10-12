import Foundation
import Camiitool
// import mbedtls

public class Amii {
	var someString = "test"

	public init() {
		someString = "initialized"
	}
    
    public func printTest() {
        print(someString)
    }

	 public func methodJustForTesting() {
	 	print(someString)

        let cString: UnsafePointer<CChar> = Camiitool.nfc3d_version_fork()

       print(String(cString: cString))
	 }
    
    // public func mbedTest() {
    //     let testValue = mbedtls.mbedtls_md_list()
    //     print(testValue)
    // }
}
