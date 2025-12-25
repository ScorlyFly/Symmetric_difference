import 'package:symmetric_difference/symmetric_difference.dart';

void main() {
  Set set1 = {1, 3, 4, ""};
  Set set2 = {2, 3, "e"};
  Set set3 = {2, 3, "e"};

  // 1. search for unique items // {1, 4}
  print(SymmetricSet.multiSymmetricDifference([set1, set2, set3]));

  // 2. search for dublicate items in all sets  {3}
  print(
    SymmetricSet.multiSymmetricDifference([
      set1,
      set2,
      set3,
    ], intersection: true),
  );

  // 3. search for items that are repeated at 2 times in all    {2, e}
  // when setting 1, we will get unique elements, as in the case of not using the intersection parameters.

  print(
    SymmetricSet.multiSymmetricDifference(
      [set1, set2, set3],
      intersection: true,
      intersectionElem: 2,
    ),
  );

  // 4. look for elements that are repeated at least 2 or more times.   {3, 2, e}
  // when setting 1, we will get unique elements, as in the case of not using the intersection parameters.
  print(
    SymmetricSet.multiSymmetricDifference(
      [set1, set2, set3],
      intersection: true,
      intersectionElem: 2,
      intersectionElemMinMax: "max",
    ),
  );
}
