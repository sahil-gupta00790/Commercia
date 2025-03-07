import 'package:commercia/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:commercia/utilities/constants/colors.dart';
import 'package:commercia/utilities/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AppChoiceChip extends StatelessWidget {
  const AppChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=AppHelperFunctions.getColor(text)!=null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? AppColors.white : null),
        avatar: isColor
            ? AppCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: AppHelperFunctions.getColor(text)!,
              )
            : null,
        shape: isColor
            ? CircleBorder()
            : null,
        backgroundColor: isColor
            ? AppHelperFunctions.getColor(text)!
            : null,
        padding: isColor
            ? EdgeInsets.all(0)
            : null,
        labelPadding: isColor
            ? EdgeInsets.all(0)
            : null,
        selectedColor: Colors.green,
      ),
    );
  }
}
