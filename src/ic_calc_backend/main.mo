// Importing necessary modules
import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

// Define the main actor
actor Counter {
    // Variable to store the count
    var count: Nat = 0;

    // Function to increment the count
    public func increment(): async Nat {
        count += 1;
        Debug.print("Count incremented to " # Nat.toText(count));
        return count;
    };

    // Function to decrement the count
    public func decrement(): async Nat {
        if (count > 0) {
            count -= 1;
            Debug.print("Count decremented to " # Nat.toText(count));
        } else {
            Debug.print("Count is already at zero and cannot be decremented.");
        };
        return count;
    };

    // Function to get the current count
    public func getCount(): async Nat {
        return count;
    };

    // Function to multiply the count by a given factor
    public func multiply(factor: Nat): async Nat {
        count *= factor;
        Debug.print("Count multiplied to " # Nat.toText(count));
        return count;
    };

    // Function to divide the count by a given divisor
    public func divide(divisor: Nat): async ?Nat {
        if (divisor == 0) {
            Debug.print("Division by zero is not allowed.");
            return null;
        } else {
            count /= divisor;
            Debug.print("Count divided to " # Nat.toText(count));
            return ?count;
        }
    };
};