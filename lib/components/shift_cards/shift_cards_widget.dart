import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shift_cards_model.dart';
export 'shift_cards_model.dart';

class ShiftCardsWidget extends StatefulWidget {
  const ShiftCardsWidget({
    super.key,
    required this.shiftName,
    required this.startDAte,
    required this.endDate,
    required this.shiftWorkingDayes,
    bool? acive,
  }) : this.acive = acive ?? false;

  final String? shiftName;
  final String? startDAte;
  final String? endDate;
  final List<String>? shiftWorkingDayes;
  final bool acive;

  @override
  State<ShiftCardsWidget> createState() => _ShiftCardsWidgetState();
}

class _ShiftCardsWidgetState extends State<ShiftCardsWidget> {
  late ShiftCardsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShiftCardsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(
            FlutterFlowTheme.of(context).designToken.radius.lg),
        border: Border.all(
          color: FlutterFlowTheme.of(context).divider,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.all(FlutterFlowTheme.of(context).designToken.spacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.shiftName,
                    'Shift Name',
                  ),
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).secondary,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleMedium.fontStyle,
                      ),
                ),
                FlutterFlowIconButton(
                  borderRadius:
                      FlutterFlowTheme.of(context).designToken.radius.md,
                  buttonSize: 40.0,
                  fillColor: FlutterFlowTheme.of(context).primaryBackground,
                  icon: Icon(
                    Icons.edit_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed(
                      ShiftSettingsWidget.routeName,
                      queryParameters: {
                        'newShift': serializeParam(
                          false,
                          ParamType.bool,
                        ),
                        'workingDays': serializeParam(
                          widget.shiftWorkingDayes,
                          ParamType.String,
                          isList: true,
                        ),
                        'active': serializeParam(
                          widget.acive,
                          ParamType.bool,
                        ),
                        'shiftName': serializeParam(
                          widget.shiftName,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.schedule_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 18.0,
                    ),
                    Text(
                      valueOrDefault<String>(
                        '${widget.startDAte} - ${widget.endDate}',
                        '8:00 - 16:00',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.manrope(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(
                      width:
                          FlutterFlowTheme.of(context).designToken.spacing.sm)),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 18.0,
                    ),
                    Builder(
                      builder: (context) {
                        final itemAtIndex = widget.shiftWorkingDayes!.toList();

                        return Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(itemAtIndex.length,
                              (itemAtIndexIndex) {
                            final itemAtIndexItem =
                                itemAtIndex[itemAtIndexIndex];
                            return Text(
                              valueOrDefault<String>(
                                widget.shiftWorkingDayes
                                    ?.elementAtOrNull(itemAtIndexIndex),
                                'Mon',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            );
                          }).divide(SizedBox(width: 10.0)),
                        );
                      },
                    ),
                  ].divide(SizedBox(
                      width:
                          FlutterFlowTheme.of(context).designToken.spacing.sm)),
                ),
              ].divide(SizedBox(
                  height: FlutterFlowTheme.of(context).designToken.spacing.sm)),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: valueOrDefault<Color>(
                      widget.acive
                          ? FlutterFlowTheme.of(context).success
                          : FlutterFlowTheme.of(context).warning,
                      FlutterFlowTheme.of(context).warning,
                    ),
                    borderRadius: BorderRadius.circular(
                        FlutterFlowTheme.of(context).designToken.radius.full),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.acive ? 'Active' : 'Disable',
                        'Disable',
                      ),
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            font: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .fontStyle,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ].divide(SizedBox(
              height: FlutterFlowTheme.of(context).designToken.spacing.md)),
        ),
      ),
    );
  }
}
