class UserRecord {
  String username;
  String password;
  String name;

  UserRecord({
    this.username = '',
    this.password = '',
    this.name = '',
  });

  UserRecord.clone(UserRecord user) {
    this.username = user.username;
    this.password = user.password;
    this.name = user.name;
  }

  void assign(UserRecord user) {
    this.username = user.username;
    this.password = user.password;
    this.name = user.name;
  }

  @override
  String toString() {
    return 'UserRecord[username=$username password=$password]';
  }

  static List<UserRecord> fakeDB = [
    UserRecord(username: 'FidelM', password: 'fm', name: 'Fidel Munoz'),
  ];
}
