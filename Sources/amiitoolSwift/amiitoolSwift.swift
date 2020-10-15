import Foundation
import Camiitool

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
    
    public func copyPastaMethod() {
        let fork = String(cString: Camiitool.nfc3d_version_fork())
        let build = String(Camiitool.nfc3d_version_build())
        let commit = String(Camiitool.nfc3d_version_commit())
        print("fork: \(fork)")
        print("build: \(build)")
        print("commit: \(commit)")
    }
}
