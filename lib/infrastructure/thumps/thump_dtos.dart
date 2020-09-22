import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/value_object.dart';
import '../../domain/thumps/thump.dart';
import '../../domain/thumps/value_objects.dart';

part 'thump_dtos.freezed.dart';
part 'thump_dtos.g.dart';

@freezed
abstract class ThumpDTO implements _$ThumpDTO {
  const ThumpDTO._();

  const factory ThumpDTO({
    String id,
    @required double objTemp,
    @required double airTemp,
    @required double airHumidity,
    @required Map<String, double> params,
    @required bool priority,
  }) = _ThumpDTO;

  factory ThumpDTO.fromDomain(Thump thump) => ThumpDTO(
        objTemp: thump.objTemp.getOrCrash(),
        airTemp: thump.airTemp.getOrCrash(),
        airHumidity: thump.airHumidity.getOrCrash(),
        params: thump.params.getOrCrash(),
        priority: thump.priority,
      );

  factory ThumpDTO.fromJson(Map<String, dynamic> json) => _$ThumpDTOFromJson(json);

  Thump toDomain() => Thump(
        id: UniqueId.fromUniqueString(id),
        objTemp: ObjTemp(objTemp),
        airTemp: AirTemp(airTemp),
        airHumidity: AirHumidity(airHumidity),
        params: Parameters(params),
        priority: priority,
      );
}
