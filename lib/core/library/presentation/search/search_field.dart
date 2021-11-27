import 'dart:async';

// ignore: import_of_legacy_library_into_null_safe
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  final TextEditingController? controller;
  final InputDecoration decoration;
  final TextStyle? style;
  final FormFieldValidator<String> validator;
  final List<SearchFieldItem> items;
  final Widget prefixIcon;
  final int suggestionCount;
  final bool enabled;
  final String? value;
  final ValueChanged<String> onChange;

  const SearchField({
    Key? key,
    required this.items,
    this.controller,
    this.decoration = const InputDecoration(),
    this.style,
    required this.validator,
    required this.prefixIcon,
    this.suggestionCount = 3,
    this.enabled = true,
    this.value,
    required this.onChange,
  }) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late FocusNode _focusNode;
  late LayerLink _layerLink;
  late TextEditingController _controller;
  OverlayEntry? _overlayEntry;
  late List<SearchFieldItem> _filteredSuggestions;

  List<SearchFieldItem> filterSearchSuggestions({
    required String filter,
  }) {
    if (filter.isNotEmpty) {
      return widget.items
          .where((term) => term.name.toLowerCase().trim().contains(filter.toLowerCase().trim()))
          .toList();
    } else {
      return widget.items.toList();
    }
  }

  final _itemHeight = 56.0;

  late StreamController<List<SearchFieldItem>> streamController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _layerLink = LayerLink();
    _controller = widget.controller ?? TextEditingController(text: widget.value ?? '');

    _focusNode.addListener(() {
      if (_focusNode.hasFocus == true) {
        this._overlayEntry = this._createOverlayEntry();
        Overlay.of(context)!.insert(this._overlayEntry!);
      } else {
        this._overlayEntry!.remove();
        this._overlayEntry = null; // единственное, что помогло избавиться от ошибки _overlay == null
      }
    });
    streamController = new StreamController<List<SearchFieldItem>>.broadcast();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    _controller.dispose();
    streamController.close();
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox? renderBox = context.findRenderObject() as RenderBox;
    final Size size = renderBox.size;
    final suggestionCount = widget.suggestionCount;
    _filteredSuggestions = widget.items;
    return OverlayEntry(
        builder: (BuildContext context) => Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: this._layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height + 5.0),
                child: StreamBuilder<List<SearchFieldItem>>(
                    stream: streamController.stream,
                    builder: (context, snapshot) {
                      final suggestions = _filteredSuggestions;
                      return Material(
                        elevation: 4.0,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                              maxHeight: suggestions.length < suggestionCount
                                  ? _itemHeight * suggestions.length
                                  : _itemHeight * suggestionCount,
                              minHeight: 0.0),
                          child: Scrollbar(
                            child: ListView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: suggestions.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  final SearchFieldItem item = suggestions[index];
                                  return ListTile(
                                    title: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: AutoSizeText(
                                          '${item.name}',
                                          maxLines: 1,
                                          style: widget.style,
                                        )),
                                    onTap: () {
                                      _controller.text = item.name;
                                      _controller.selection =
                                          TextSelection.fromPosition(TextPosition(offset: item.name.length));
                                      _focusNode.unfocus();
                                      _filteredSuggestions = filterSearchSuggestions(filter: item.name);
                                      item.onTap(index);
                                    },
                                  );
                                }),
                          ),
                        ),
                      );
                    }),
              ),
            ));
  }

  @override
  void didUpdateWidget(SearchField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (widget.value != null)
        _controller.text = widget.value!;
      else
        _controller = TextEditingController();
    }
  }

  @override
  Widget build(BuildContext context) {
    final decoration = widget.decoration;
    final validator = widget.validator;
    final prefixIcon = widget.prefixIcon;
    final enabled = widget.enabled;
    final ValueChanged<String> onChange = widget.onChange;

    return CompositedTransformTarget(
      link: this._layerLink,
      child: TextFormField(
        enabled: enabled,
        style: widget.style,
        controller: _controller,
        focusNode: this._focusNode,
        textCapitalization: TextCapitalization.sentences,
        decoration: decoration.copyWith(
          prefixIcon: prefixIcon,
        ),
        onChanged: (filter) {
          onChange(filter);
          _filteredSuggestions = filterSearchSuggestions(filter: filter);
          streamController.sink.add(_filteredSuggestions);
        },
        validator: validator,
      ),
    );
  }
}

class SearchFieldItem {
  final String guid;
  final String name;
  final void Function(int) onTap;

  SearchFieldItem({required this.guid, required this.name, required this.onTap});
}
