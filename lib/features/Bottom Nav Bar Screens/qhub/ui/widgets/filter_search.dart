import 'package:flutter/material.dart';
import 'package:quebetrats/core/constant/app_styles.dart';

class FilterList extends StatefulWidget {
  final List<String> filterSearch;

  const FilterList({super.key, required this.filterSearch});

  @override
  _FilterListState createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selectedIndex == index ? Colors.white : Colors.transparent,
              border: Border.all(color: Colors.white, width: 1.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.filterSearch[index],
                style: AppTextStyle.aBeeZeefont16boldblue.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: selectedIndex == index ? Colors.blue : Colors.black,
                ),
              ),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: widget.filterSearch.length,
      ),
    );
  }
}
