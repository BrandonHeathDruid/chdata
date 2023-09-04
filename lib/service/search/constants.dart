import 'package:chdata/models/item/enum/subtype.dart';
import 'package:chdata/models/item/item.dart';
import 'package:hive/hive.dart';

import '../../models/item/enum/equipment_slot.dart';
import '../../models/mob/enum/mob_opinion.dart';
import '../../models/mob/mob.dart';

const assetsDir = 'hive';
const separator = '~';

const mobListField = 'moblist';
const itemListField = 'itemlist';

final assetsBoxes = <String, List<Function(bool ovverride)>>{
  mobListField: [
    (override) => Hive.registerAdapter(MobOpinionAdapter(), override: override),
        (override) => Hive.registerAdapter(MobAdapter(), override: override)
  ],
  itemListField: [
    (override) => Hive.registerAdapter(SubTypeAdapter(), override: override),
    (override) =>
        Hive.registerAdapter(EquipmentSlotAdapter(), override: override),
    (override) => Hive.registerAdapter(ItemAdapter(), override: override)
  ]
};

const searchPatternField = 'searchPattern';
const searchContainsField = 'searchContains';
const databaseField = 'database';