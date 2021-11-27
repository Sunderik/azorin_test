import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tecon_task/core/core.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/core/library/presentation/material_settings/text_input_decoration.dart';
import 'package:collection/collection.dart';

class CadMaterialSettingsView extends StatefulWidget {
  final CommonEnumItem workCategory;
  final List<CadCategory>? categories;
  final Function(CadCategory) onSelectCadCategory;
  final Function(SimpleType) onSelectCadMaterial;
  final Function(String?) onSetMaterialCount;

  const CadMaterialSettingsView({
    Key? key,
    this.categories,
    required this.onSelectCadCategory,
    required this.onSelectCadMaterial,
    required this.onSetMaterialCount,
    required this.workCategory,
  }) : super(key: key);

  @override
  _CadMaterialSettingsViewState createState() => _CadMaterialSettingsViewState();
}

class _CadMaterialSettingsViewState extends State<CadMaterialSettingsView> {
  static const _spaceBetweenFormField = 8.0;

  bool _isCadMaterialFieldVisible = false;
  bool _isCadMaterialCountFieldVisible = false;

  void _setVisibility({materialField = false, countField = false}) {
    _isCadMaterialFieldVisible = materialField;
    _isCadMaterialCountFieldVisible = countField;
  }

  void _hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  // TODO: выполнить очистку "Подкатегории задачи"
  // TODO: добавить метод на очистку САПРа
  @override
  void didUpdateWidget(CadMaterialSettingsView oldWidget) {
    if (this.widget.workCategory != oldWidget.workCategory) {
      _setVisibility();
      _selectedCadCategory = null;
    }
    super.didUpdateWidget(oldWidget);
  }

  late SimpleType _selectedCadMaterial; // ignore: unused_field
  CadCategory? _selectedCadCategory;

  @override
  Widget build(BuildContext context) {
    final List<CadCategory>? categories = widget.categories;
    final Function(CadCategory) onSelectCadCategory = widget.onSelectCadCategory;
    final List<SimpleType>? cadMaterials = categories
        ?.firstWhereOrNull(
          (element) => element.guid == _selectedCadCategory?.guid,
        )
        ?.cadMaterials
        ?.toList();
    final Function(SimpleType) onSelectCadMaterial = widget.onSelectCadMaterial;
    final Function(String?) onSetMaterialCount = widget.onSetMaterialCount;
    if (_selectedCadCategory != null) {
      _selectedCadCategory = categories?.firstWhereOrNull((element) => element.guid == _selectedCadCategory!.guid);
    }
    if (categories == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (categories.isEmpty) {
      return Center(
        child: Text('Подкатегории задачи не найдены'),
      );
    } else {
      return Theme(
        data: ThemeData(
          primaryColor: Color(0xFF770FB7),
        ),
        child: Column(
          children: [
            /// Подкатегория задачи (Кабели, Дискретные сигналы и т.д.)
            Padding(
              padding: const EdgeInsets.only(top: _spaceBetweenFormField, bottom: _spaceBetweenFormField),
              child: DropdownButtonFormField(
                  validator: (CadCategory? value) {
                    if (value == null) return 'Выберите подкатегорию задачи';
                    return null;
                  },
                  decoration: textInputDecoration(context: context).copyWith(
                    alignLabelWithHint: true,
                    // contentPadding:
                    //     EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
                    labelText: 'Подкатегория задачи',
                    hintText: 'Подкатегория задачи',
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                  onTap: () {
                    _hideKeyboard(context);
                  },
                  value: _selectedCadCategory,
                  items: categories
                      .map((CadCategory? value) => DropdownMenuItem(
                            child: SizedBox(
                              width: 232.0,
                              child: Container(
                                  child: Text(
                                value!.name!,
                                overflow: TextOverflow.ellipsis,
                              )),
                            ),
                            value: value,
                          ))
                      .toList(),
                  onChanged: (CadCategory? category) {
                    _selectedCadCategory = category;
                    onSelectCadCategory(category!);
                    setState(() {
                      // ignore: unnecessary_null_comparison
                      if (category != null) {
                        _setVisibility(materialField: true);
                      } else {
                        _setVisibility();
                      }
                    });
                  }),
            ),

            /// Наименование объекта САПР (Поиск по объектам САПР)
            Visibility(
              visible: _isCadMaterialFieldVisible,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: _spaceBetweenFormField),
                child: cadMaterials == null
                    ? Container()
                    : SearchField(
                        // ignore: prefer_is_not_empty
                        enabled: !(cadMaterials.isEmpty),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Выберите объект САПР';
                          } else if (cadMaterials.firstWhereOrNull(
                                (element) => element.name?.trim() == value.trim(),
                                // ignore: unnecessary_null_comparison
                              ) ==
                              null) {
                            return 'Выбран неверный объект САПР';
                          }
                          return null;
                        },
                        decoration: textInputDecoration(context: context).copyWith(
                          hintText: 'Наименование',
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Theme.of(context).hintColor,
                        ),
                        // value: _selectedCadMaterial?.name,
                        onChange: (String value) {
                          if (value.isEmpty) {
                            setState(() {
                              _setVisibility(materialField: true, countField: true);
                            });
                          } else {}
                        },
                        items: cadMaterials
                            .map((m) => SearchFieldItem(
                                  guid: m.guid!,
                                  name: m.name!,
                                  onTap: (int index) {
                                    onSelectCadMaterial(SimpleType((b) => b
                                      ..name = m.name!
                                      ..guid = m.guid!));
                                    setState(() {
                                      _selectedCadMaterial = m;
                                      _setVisibility(materialField: true, countField: true);
                                    });
                                  },
                                ))
                            .toList(),
                        value: '',
                      ),
              ),
            ),

            /// Элемент количество материала
            Visibility(
              visible: _isCadMaterialCountFieldVisible && _selectedCadCategory?.isQuantitative == true,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: _spaceBetweenFormField),
                child: TextFormField(
                  textCapitalization: TextCapitalization.sentences,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: textInputDecoration(context: context).copyWith(
                    labelText: 'Количество',
                    hintText: 'Количество',
                  ),
                  onChanged: (String? value) {
                    onSetMaterialCount(value!.trim().isEmpty ? null : value);
                  },
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
