void main() {
String name = "Varshini";
int age = 20;
double marks = 95.5;
bool isStudent = true;

print("Name: $name");
print("Age: $age");
print("Marks: $marks");
print("Is Student: $isStudent");

int a = 10;
int b = 5;

print("Addition: ${a + b}");
print("Subtraction: ${a - b}");
print("Multiplication: ${a * b}");
print("Division: ${a / b}");

if (age >= 18) {
print("Eligible to vote");
} else {
print("Not eligible to vote");
}

print("Numbers from 1 to 5:");
for (int i = 1; i <= 5; i++) {
print(i);
}

List<String> subjects = ["Dart", "Flutter", "Java"];

print("Subjects:");
for (int i = 0; i < subjects.length; i++) {
print(subjects[i]);
}
}
