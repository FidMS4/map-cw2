class UserRecord {
  String username;
  String password;
  String name;
  String phone;

  UserRecord({
    this.username = '',
    this.password = '',
    this.name = '',
    this.phone = '',
  });

  UserRecord.clone(UserRecord user) {
    this.username = user.username;
    this.password = user.password;
    this.name = user.name;
    this.phone = user.phone;
  }

  void assign(UserRecord user) {
    this.username = user.username;
    this.password = user.password;
    this.name = user.name;
    this.phone = user.phone;
  }

  @override
  String toString() {
    return 'UserRecord[username=$username password=$password]';
  }

  static List<UserRecord> fakeDB = [
    UserRecord(
        username: 'FidelM', password: 'fm', name: 'Fidel Munoz', phone: '4055011724'),
  ];
}
