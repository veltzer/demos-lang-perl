# Exercise 16.2

# Implement and test a rectangle class with a class data member

require rectangle2;

print("Number: ", rectangle2->getcount(), "\n\n");

print("Creating square...\n");
$square = rectangle2->new(6);
print("Area = ", $square->area(), "\n");
print("Number: ", rectangle2->getcount(), "\n\n");

print("Creating rectangle...\n");
$rect = rectangle2->new(4, 8);
print("Area = ", $rect->area(), "\n");
print("Number: ", rectangle2->getcount(), "\n\n");

print("Destroying square...\n");
$square = undef;
print("Number: ", rectangle2->getcount(), "\n\n");

print("Destroying rect...\n");
$rect = undef;
print("Number: ", rectangle2->getcount(), "\n");

