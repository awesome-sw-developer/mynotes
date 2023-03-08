// Login Auth Exceptions
class UserNotFoundAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

// Register Auth Exceptions
class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

//Generic Exceptions
class UserNotLoggedInAuthException implements Exception {}

class GenericAuthException implements Exception {}
