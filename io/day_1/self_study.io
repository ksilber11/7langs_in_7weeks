// Run an Io program from a file.
// Execute the code in a slot given its name.

Vehicle := Object clone
Vehicle printName := method("Vehicle" println)

Vehicle getSlot (System args at(1)) call