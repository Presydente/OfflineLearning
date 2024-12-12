import '/components/learning_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(55.0, 0.0, 55.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100.0,
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Courses',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 48.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        Text(
                          'Find available learning module below',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 26.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('SpecificLearning');
                        },
                        child: wrapWithModel(
                          model: _model.learningCardModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: const LearningCardWidget(
                            image:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/offline-learning-22pwxh/assets/7yggonwx9p63/pexels-tima-miroshnichenko-5428003.jpg',
                            title: 'Product Design Fundamentals',
                            description:
                                'Learn the basic principles of product design as you find your personal...',
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('SpecificLearning');
                        },
                        child: wrapWithModel(
                          model: _model.learningCardModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: const LearningCardWidget(
                            image:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/offline-learning-22pwxh/assets/7lcvxi5s0on5/pexels-tima-miroshnichenko-5427862.jpg',
                            title: 'Brand Design strategy',
                            description:
                                'Materialize your ideas to better transform then into an actual product lorem ispum lorem ispum lorem ispum lorem ispum...',
                          ),
                        ),
                      ),
                    ],
                  ),
                ]
                    .divide(const SizedBox(height: 18.0))
                    .addToStart(const SizedBox(height: 55.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
