// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class User extends DataClass implements Insertable<User> {
  final String username;
  final String authToken;
  final String refreshToken;
  User({this.username, this.authToken, this.refreshToken});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    return User(
      username: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      authToken: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}auth_token']),
      refreshToken: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}refresh_token']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || authToken != null) {
      map['auth_token'] = Variable<String>(authToken);
    }
    if (!nullToAbsent || refreshToken != null) {
      map['refresh_token'] = Variable<String>(refreshToken);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      authToken: authToken == null && nullToAbsent
          ? const Value.absent()
          : Value(authToken),
      refreshToken: refreshToken == null && nullToAbsent
          ? const Value.absent()
          : Value(refreshToken),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      username: serializer.fromJson<String>(json['username']),
      authToken: serializer.fromJson<String>(json['authToken']),
      refreshToken: serializer.fromJson<String>(json['refreshToken']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'username': serializer.toJson<String>(username),
      'authToken': serializer.toJson<String>(authToken),
      'refreshToken': serializer.toJson<String>(refreshToken),
    };
  }

  User copyWith({String username, String authToken, String refreshToken}) =>
      User(
        username: username ?? this.username,
        authToken: authToken ?? this.authToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('username: $username, ')
          ..write('authToken: $authToken, ')
          ..write('refreshToken: $refreshToken')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(username, authToken, refreshToken);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.username == this.username &&
          other.authToken == this.authToken &&
          other.refreshToken == this.refreshToken);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<String> username;
  final Value<String> authToken;
  final Value<String> refreshToken;
  const UsersCompanion({
    this.username = const Value.absent(),
    this.authToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
  });
  UsersCompanion.insert({
    this.username = const Value.absent(),
    this.authToken = const Value.absent(),
    this.refreshToken = const Value.absent(),
  });
  static Insertable<User> custom({
    Expression<String> username,
    Expression<String> authToken,
    Expression<String> refreshToken,
  }) {
    return RawValuesInsertable({
      if (username != null) 'username': username,
      if (authToken != null) 'auth_token': authToken,
      if (refreshToken != null) 'refresh_token': refreshToken,
    });
  }

  UsersCompanion copyWith(
      {Value<String> username,
      Value<String> authToken,
      Value<String> refreshToken}) {
    return UsersCompanion(
      username: username ?? this.username,
      authToken: authToken ?? this.authToken,
      refreshToken: refreshToken ?? this.refreshToken,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (authToken.present) {
      map['auth_token'] = Variable<String>(authToken.value);
    }
    if (refreshToken.present) {
      map['refresh_token'] = Variable<String>(refreshToken.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('username: $username, ')
          ..write('authToken: $authToken, ')
          ..write('refreshToken: $refreshToken')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedColumn<String> _username;
  @override
  GeneratedColumn<String> get username =>
      _username ??= GeneratedColumn<String>('username', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _authTokenMeta = const VerificationMeta('authToken');
  GeneratedColumn<String> _authToken;
  @override
  GeneratedColumn<String> get authToken =>
      _authToken ??= GeneratedColumn<String>('auth_token', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _refreshTokenMeta =
      const VerificationMeta('refreshToken');
  GeneratedColumn<String> _refreshToken;
  @override
  GeneratedColumn<String> get refreshToken => _refreshToken ??=
      GeneratedColumn<String>('refresh_token', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [username, authToken, refreshToken];
  @override
  String get aliasedName => _alias ?? 'users';
  @override
  String get actualTableName => 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    }
    if (data.containsKey('auth_token')) {
      context.handle(_authTokenMeta,
          authToken.isAcceptableOrUnknown(data['auth_token'], _authTokenMeta));
    }
    if (data.containsKey('refresh_token')) {
      context.handle(
          _refreshTokenMeta,
          refreshToken.isAcceptableOrUnknown(
              data['refresh_token'], _refreshTokenMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {username};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    return User.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users];
}
