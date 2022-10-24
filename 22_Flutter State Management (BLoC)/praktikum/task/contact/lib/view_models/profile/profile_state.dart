part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  final List<Profile> profiles;
  const ProfileState(this.profiles);

  @override
  List<Object> get props => [];
}

class Initial extends ProfileState {
  const Initial(super.contacts);
}
