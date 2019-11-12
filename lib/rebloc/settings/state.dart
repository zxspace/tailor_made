import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tailor_made/models/settings.dart';
import 'package:tailor_made/rebloc/app_state.dart';

part 'state.g.dart';

abstract class SettingsState implements Built<SettingsState, SettingsStateBuilder> {
  factory SettingsState([SettingsState updates(SettingsStateBuilder b)]) = _$SettingsState;

  factory SettingsState.initialState() => _$SettingsState(
        (SettingsStateBuilder b) => b
          ..settings = null
          ..status = StateStatus.loading
          ..message = ""
          ..error = null,
      );

  SettingsState._();

  @nullable
  SettingsModel get settings;

  StateStatus get status;

  String get message;

  @nullable
  String get error;

  static Serializer<SettingsState> get serializer => _$settingsStateSerializer;
}
