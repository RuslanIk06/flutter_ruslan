part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class SaveProfile extends ProfileEvent {
  final Profile profile;
  const SaveProfile(this.profile);
}
