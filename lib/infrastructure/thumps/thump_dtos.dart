import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:indr_agri/domain/core/value_object.dart';
import 'package:indr_agri/domain/thumps/thump.dart';
import 'package:indr_agri/domain/thumps/value_objects.dart';

part 'thump_dtos.freezed.dart';
part 'thump_dtos.g.dart';

@freezed
abstract class ThumpDTO implements _$ThumpDTO {
  const ThumpDTO._();

  const factory ThumpDTO({
    String id,
    @required String title,
    @required double objTemp,
    @required double airTemp,
    @required double airHumidity,
    @required bool priority,
  }) = _ThumpDTO;

  factory ThumpDTO.fromDomain(Thump thump) => ThumpDTO(
        title: thump.title.getOrCrash(),
        objTemp: thump.objTemp.getOrCrash(),
        airTemp: thump.airTemp.getOrCrash(),
        airHumidity: thump.airHumidity.getOrCrash(),
        priority: thump.priority,
      );

  factory ThumpDTO.fromJson(Map<String, dynamic> json) => _$ThumpDTOFromJson(json);

  Thump toDomain() => Thump(
        id: UniqueId.fromUniqueString(id),
        title: ThumpTitle(title),
        objTemp: ObjTemp(objTemp),
        airTemp: AirTemp(airTemp),
        airHumidity: AirHumidity(airHumidity),
        priority: priority,
      );
}
