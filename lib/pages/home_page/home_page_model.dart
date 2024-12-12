import '/components/learning_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for LearningCard component.
  late LearningCardModel learningCardModel1;
  // Model for LearningCard component.
  late LearningCardModel learningCardModel2;

  @override
  void initState(BuildContext context) {
    learningCardModel1 = createModel(context, () => LearningCardModel());
    learningCardModel2 = createModel(context, () => LearningCardModel());
  }

  @override
  void dispose() {
    learningCardModel1.dispose();
    learningCardModel2.dispose();
  }
}
