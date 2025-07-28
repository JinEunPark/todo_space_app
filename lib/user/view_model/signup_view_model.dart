
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/user/service/user_service.dart';

import '../model/user_model.dart';

class SignUpState{

   final String userId;
   final String password;
   final String email;
   final bool valid;

//<editor-fold desc="Data Methods">
  const SignUpState({
    required this.userId,
    required this.password,
    required this.email,
    required this.valid,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SignUpState &&
          runtimeType == other.runtimeType &&
          userId == other.userId &&
          password == other.password &&
          email == other.email &&
          valid == other.valid);

  @override
  int get hashCode =>
      userId.hashCode ^ password.hashCode ^ email.hashCode ^ valid.hashCode;

  @override
  String toString() {
    return 'SignUpState{' +
        ' userId: $userId,' +
        ' password: $password,' +
        ' email: $email,' +
        ' valid: $valid,' +
        '}';
  }

  SignUpState copyWith({
    String? userId,
    String? password,
    String? email,
    bool? valid,
  }) {
    return SignUpState(
      userId: userId ?? this.userId,
      password: password ?? this.password,
      email: email ?? this.email,
      valid: valid ?? this.valid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': this.userId,
      'password': this.password,
      'email': this.email,
      'valid': this.valid,
    };
  }

  factory SignUpState.fromMap(Map<String, dynamic> map) {
    return SignUpState(
      userId: map['userId'] as String,
      password: map['password'] as String,
      email: map['email'] as String,
      valid: map['valid'] as bool,
    );
  }

//</editor-fold>
}


class SignUpPageViewModel extends AutoDisposeNotifier<SignUpState>{

  //build method should return init state of state that extends state
  // for this example this build class should return signupstate
  late final userService = ref.read(userServiceProvider);

  @override
  SignUpState build() {
    return const SignUpState(
      userId: '',
      password: '',
      email: '',
      valid: false
    );
  }

  void updateUserId(String? userId){
    final isvalid = _validUserID(userId);
    if(isvalid) return;
    state = state.copyWith(userId: userId);
    return;
  }
  
  void updatePassword(String? password){
    final valid = _validPassword(password);
    if(valid) return;
    state = state.copyWith(password: password);
  }

  void updateEmail(String? email){
    final valid = _validEmail(email);
    if(valid) return;
    state = state.copyWith(email: email);
  }

  Future<int> saveUser(User? user) async {
    if(user == null) return -1;
    final result = await userService.saveUserInfo(user);
    return result;
  }


  bool _validUserID(String? userID){
    if(userID == null) return false;
    return (userID.length >= 6);
  }
  
  bool _validPassword(String? password){
    if(password == null) return false;
    // password should contais  special char
    var reg = new RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    return(password.length >= 6 && password.contains(reg));
  }


  bool _validEmail(String? email){
    if(email == null) return false;
    // password should contais  special char
    return(email.length >= 6 && email.contains('@'));
  }




}

// 화면과 라이프사이클 동일하도록 AutodisposeNotifierProvider 선언
final SignUpPageViewModelProvider =
  AutoDisposeNotifierProvider<SignUpPageViewModel, SignUpState>(() => SignUpPageViewModel());
