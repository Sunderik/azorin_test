import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';
import 'package:tecon_task/core/domain/objects/models.dart';
import 'package:tecon_task/core/library/presentation/material_settings/text_input_decoration.dart';

class CommonMaterialSettingsView extends StatefulWidget {
  final CommonEnumItem workCategory;
  final List<MaterialModel>? materials;
  final Function(MaterialModel) onMaterialSelect;
  final Function onMaterialRemove;
  final Function(String?) onSetMaterialCount;
  final Function(CommonEnumItem) onSelectMeasuringSystem;

  const CommonMaterialSettingsView({
    Key? key,
    this.materials,
    required this.onMaterialSelect,
    required this.onMaterialRemove,
    required this.onSetMaterialCount,
    required this.onSelectMeasuringSystem,
    required this.workCategory,
  }) : super(key: key);

  @override
  _CommonMaterialSettingsViewState createState() => _CommonMaterialSettingsViewState();
}

class _CommonMaterialSettingsViewState extends State<CommonMaterialSettingsView> {
  static const _spaceBetweenFormField = 8.0;

  bool _isMaterialNameFieldVisible = false;
  bool _isMaterialCountFieldVisible = false;
  bool _isMaterialMeasuringSystemFieldVisible = false;

  MaterialModel? _selectedMaterial;

  final CommonEnum? _measuringSystemEnum = CollectionEnums.getCommonEnumByGuid(CollectionEnums.measuringSystem.guid);

  void _setVisibility({nameField = false, countField = false, msField = false}) {
    _isMaterialNameFieldVisible = nameField;
    _isMaterialCountFieldVisible = countField;
    _isMaterialMeasuringSystemFieldVisible = msField;
  }

  void _hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  CommonEnumItem? _getMeasuringSystem(String measuringSystemGuid) {
    return _measuringSystemEnum?.getCommonEnumItemByGuid(measuringSystemGuid);
  }

  @override
  void didUpdateWidget(CommonMaterialSettingsView oldWidget) {
    if (this.widget.workCategory != oldWidget.workCategory) {
      _setVisibility();
      _selectedMaterial = null;
      this.widget.onMaterialRemove();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final List<MaterialModel>? materials = this.widget.materials;
    final Function(MaterialModel) onMaterialSelect = this.widget.onMaterialSelect;
    final Function onMaterialRemove = this.widget.onMaterialRemove;
    final Function(String? p1) onSetMaterialCount = this.widget.onSetMaterialCount;
    final Function(CommonEnumItem) onSelectMeasuringSystem = this.widget.onSelectMeasuringSystem;

    List<DropdownMenuItem<MaterialModel>> items = [
      ...materials!.map((value) {
        final materialName = value.name;
        final measuringSystem = _getMeasuringSystem(value.measuringSystem!)?.fullName;
        return DropdownMenuItem(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200,
            ),
            child: AutoSizeText(
              // ignore: unnecessary_null_comparison
              '$materialName ${measuringSystem != null ? '($measuringSystem)' : ''}'.trim(),
              maxLines: 1,
            ),
          ),
          value: value,
        );
      }).toList(),
      DropdownMenuItem(
          child: Text('Выбрать свой вариант'),
          value: MaterialModel((builder) => builder
            ..guid = null
            ..name = null))
    ];
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xFF770FB7),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: _spaceBetweenFormField, bottom: _spaceBetweenFormField),
            child: Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<MaterialModel>(
                      decoration: textInputDecoration(context: context).copyWith(
                        labelText: 'Материал',
                        hintText: 'Материал',
                        contentPadding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                      ),
                      validator: (MaterialModel? value) {
                        if (value == null) return 'Укажите материал';
                        return null;
                      },
                      onTap: () {
                        _hideKeyboard(context);
                      },
                      value: _selectedMaterial,
                      items: items,
                      onChanged: (MaterialModel? material) {
                        _selectedMaterial = material;
                        onMaterialSelect(material!);
                        setState(() {
                          if (material.guid == null && material.name == null) {
                            _setVisibility(nameField: true);
                          } else {
                            _setVisibility(countField: true);
                          }
                        });
                      }),
                ),
                Visibility(
                  visible: _selectedMaterial != null,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: IconButton(
                            splashRadius: 25.0,
                            icon: Icon(Icons.close),
                            onPressed: () {
                              setState(() {
                                _selectedMaterial = null;
                                onMaterialRemove();
                                _setVisibility();
                              });
                            })),
                  ),
                ),
              ],
            ),
          ),

          /// Текствовое поле с указанием своего материала
          Visibility(
            visible: _isMaterialNameFieldVisible,
            child: Padding(
              padding: const EdgeInsets.only(top: _spaceBetweenFormField),
              child: TextFormField(
                textCapitalization: TextCapitalization.sentences,
                keyboardType: TextInputType.text,
                decoration: textInputDecoration(context: context).copyWith(
                  labelText: 'Введите материал',
                  hintText: 'Введите материал',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) return 'Введите название материала';
                  return null;
                },
                onChanged: (String value) {
                  onMaterialSelect(MaterialModel((b) => b..name = value));
                  setState(() {
                    if (value.trim().isEmpty) {
                      _setVisibility(nameField: true);
                    } else {
                      _setVisibility(
                        nameField: true,
                        countField: true,
                        msField: true,
                      );
                    }
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Элемент количество материала
              Visibility(
                visible: _isMaterialCountFieldVisible,
                child: Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: _spaceBetweenFormField),
                  child: TextFormField(
                    validator: (String? value) {
                      if (value == null || value.isEmpty) return 'Укажите количество';
                      return null;
                    },
                    initialValue: null,
                    textCapitalization: TextCapitalization.sentences,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: textInputDecoration(context: context).copyWith(
                      labelText: 'Количество',
                      hintText: 'Количество',
                    ),
                    onChanged: (String value) {
                      onSetMaterialCount(value.trim().isEmpty ? null : value);
                    },
                  ),
                )),
              ),

              /// Элемент система измерения материала
              Visibility(
                visible: _isMaterialMeasuringSystemFieldVisible,
                child: Expanded(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(
                        _spaceBetweenFormField, _spaceBetweenFormField, 0.0, _spaceBetweenFormField),
                    child: DropdownButtonFormField(
                      decoration: textInputDecoration(context: context).copyWith(
                        contentPadding: EdgeInsets.symmetric(vertical: 17.5, horizontal: 15.0),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                      onTap: () {
                        _hideKeyboard(context);
                      },
                      value: _measuringSystemEnum?.elements?.first,
                      items: _measuringSystemEnum?.elements
                          ?.map((value) => DropdownMenuItem(
                                child: Text(value.fullName!),
                                value: value,
                              ))
                          .toList(),
                      onChanged: _isMaterialMeasuringSystemFieldVisible == false
                          ? null
                          : (CommonEnumItem? value) {
                              onSelectMeasuringSystem(value!);
                            },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
