<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

## Features

TODO: Just module which solves the problem of the lack of a built-in</br>symmetric difference in the language

## Getting started

TODO: startin work import package</br>
import 'package:symmetric_difference/symmetric_difference.dart'

## Usage

the main functions for the module operation</br>

import 'package:symmetric_difference/symmetric_difference.dart';</br>

void main() {</br>
&nbsp;&nbsp;&nbsp;&nbsp;Set set1 = {1, 3, 4, ""};</br>
&nbsp;&nbsp;&nbsp;&nbsp;Set set2 = {2, 3, "e"};</br>
&nbsp;&nbsp;&nbsp;&nbsp;Set set3 = {2, 3, "e"};</br>

&nbsp;&nbsp;&nbsp;&nbsp;1. search for unique items // {1, 4}</br>
&nbsp;&nbsp;&nbsp;&nbsp;print(SymmetricSet.multiSymmetricDifference([set1, set2, set3]));</br>

---

&nbsp;&nbsp;&nbsp;&nbsp;2. search for dublicate items in all sets {3}</br>
&nbsp;&nbsp;&nbsp;&nbsp;print( SymmetricSet.multiSymmetricDifference([set1,set2,set3,], intersection: true),);</br>

---

&nbsp;&nbsp;&nbsp;&nbsp;3. search for items that are repeated at 2 times in all {2, e}</br>
&nbsp;&nbsp;&nbsp;&nbsp;when setting 1, we will get unique elements, as in the case of not using the intersection parameters.</br>

&nbsp;&nbsp;&nbsp;&nbsp;print(SymmetricSet.multiSymmetricDifference( [set1, set2, set3], intersection: true, intersectionElem: 2));

&nbsp;&nbsp;&nbsp;&nbsp;4. look for elements that are repeated at least 2 or more times. {3, 2, e}</br>
when setting 1, we will get unique elements, as in the case of not using the intersection parameters.</br>
&nbsp;&nbsp;&nbsp;&nbsp; print( SymmetricSet.multiSymmetricDifference( [set1, set2, set3], intersection: true, intersectionElem: 2, intersectionElemMinMax: "max",)
);
}</br>

## return type

it is important that the data being restored will be with the **Set** data type!!!
