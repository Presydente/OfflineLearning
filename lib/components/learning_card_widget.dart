import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'learning_card_model.dart';
export 'learning_card_model.dart';

class LearningCardWidget extends StatefulWidget {
  const LearningCardWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String? image;
  final String? title;
  final String? description;

  @override
  State<LearningCardWidget> createState() => _LearningCardWidgetState();
}

class _LearningCardWidgetState extends State<LearningCardWidget> {
  late LearningCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LearningCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: Image.network(
              widget.image!,
              width: double.infinity,
              height: 250.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 200.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD8F0E3),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.dotCircle,
                              color: FlutterFlowTheme.of(context).secondary,
                              size: 24.0,
                            ),
                            Text(
                              'Published',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    fontSize: 24.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ].divide(const SizedBox(width: 15.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'Title',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 28.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.description,
                    'description',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 24.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ]
                  .divide(const SizedBox(height: 25.0))
                  .addToStart(const SizedBox(height: 20.0)),
            ),
          ),
        ].addToEnd(const SizedBox(height: 20.0)),
      ),
    );
  }
}
