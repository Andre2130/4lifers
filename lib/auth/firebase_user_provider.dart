import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Ecom4LifersFirebaseUser {
  Ecom4LifersFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Ecom4LifersFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Ecom4LifersFirebaseUser> ecom4LifersFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Ecom4LifersFirebaseUser>(
      (user) {
        currentUser = Ecom4LifersFirebaseUser(user);
        return currentUser!;
      },
    );
