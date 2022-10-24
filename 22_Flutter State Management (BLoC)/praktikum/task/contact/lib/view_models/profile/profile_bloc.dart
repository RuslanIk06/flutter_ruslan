import 'package:bloc/bloc.dart';
import 'package:contact/models/profile.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(Initial([])) {
    on<SaveProfile>((event, emit) async {
      var existingProfile = [...state.profiles];

      existingProfile.add(event.profile);
      emit(Initial(existingProfile));
    });
  }
}
