# Why use Factory constructor over named constructors

&emsp; Making a public constructor a factory can be a defensive design, even when it's not technically required.

&emsp; If you make a constructor generative, then someone, somewhere, might extend your class with a subclass and forward their constructor to your generative constructor.

&emsp; At that point, it becomes a breaking change to make your constructor into a factory. If you decide you want more validation and it becomes more convenient if the constructor was a factory, you're now blocked from making the change.

&emsp; Making a public constructor generative is a promise (so is making it const), so you're better of not doing it unless you actually want to. Don't expose public generative (or const) constructors by accident, or just because you can. Do it if you intend the class to be used as a super-class through that constructor. Otherwise it's safer to expose only a factory constructor, and keep the generative constructor private.

#### Say you create a User class like so:

```
class User {
  User({this.name, this.alias});

  User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'], alias: json['alias']);
  }

  final String name;
  final String alias;
}
```
The ```User.fromJson``` constructor is a generative constructor. One characteristic of generative constructors is that you can forward to them from another constructor. That means someone else can subclass your class like so:
```
class SoftwareUser extends User {
  SoftwareUser(Map<String, dynamic> json) : super.fromJson(json);
}
```
The ```super.fromJson(json)``` part just forwards the parameter to your original constructor. So far so good.

But later you decide that you'd like to do a bit of error checking and text manipulation on that JSON map before you try to create an object from it. You can do a little with asserts but you're limited. Factory constructors, on the other hand, would allow you to do a lot more. Here's an example of doing a more work in the constructor:
```
class User {
  User({this.name, this.alias});

  factory User.fromJson(Map<String, dynamic> json) {
    String userName = json['name'];
    String userAlias = json['alias'];
    if (userName == null || userAlias == null) throw FormatException();
    userName = userName.toUpperCase();
    userAlias = userAlias.toUpperCase();
    return User(name: userName, alias: userAlias);
  }

  final String name;
  final String alias;
}
```
That's great for the User class, but the problem is that now the SoftwareUser subclass is broken.
```
class SoftwareUser extends User {
  SoftwareUser(Map<String, dynamic> json) : super.fromJson(json); //   <-- error
}

// The constructor 'User User.fromJson(Map<String, dynamic> json)' 
// is a factory constructor, but must be a generative constructor 
// to be a valid superinitializer.
// 
// Try calling a different constructor of the superclass, or making 
// the called constructor not be a factory constructor.
```
As the error message says, you can't forward to a factory constructor.

If you had started with the factory constructor for User in the beginning, then the SoftwareUser subclass would never have been able to forward like that. The factory constructor would allow you to change from this:
```
factory User.fromJson(Map<String, dynamic> json) =>
      User(name: json['name'], alias: json['alias']);
```
to this:

```
factory User.fromJson(Map<String, dynamic> json) {
  String userName = json['name'];
  String userAlias = json['alias'];
  if (userName == null || userAlias == null) throw FormatException();
  userName = userName.toUpperCase();
  userAlias = userAlias.toUpperCase();
  return User(name: userName, alias: userAlias);
}
```
without breaking any subclasses. That's why lrn called it defensive design. Even though you don't know your future needs, you'll be able to make internal changes to how the object is created later without breaking external dependencies.

[Read More](https://stackoverflow.com/questions/64838782/why-use-factory-when-constructing-a-new-instance-from-a-map-structure/66117859#66117859)