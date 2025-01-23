import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class NorwalkBaptistChurchAuthUser {
  NorwalkBaptistChurchAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<NorwalkBaptistChurchAuthUser>
    norwalkBaptistChurchAuthUserSubject =
    BehaviorSubject.seeded(NorwalkBaptistChurchAuthUser(loggedIn: false));
Stream<NorwalkBaptistChurchAuthUser> norwalkBaptistChurchAuthUserStream() =>
    norwalkBaptistChurchAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
