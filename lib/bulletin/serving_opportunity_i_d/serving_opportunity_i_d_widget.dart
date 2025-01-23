import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'serving_opportunity_i_d_model.dart';
export 'serving_opportunity_i_d_model.dart';

class ServingOpportunityIDWidget extends StatefulWidget {
  const ServingOpportunityIDWidget({
    super.key,
    this.servingOpportunityID,
  });

  final String? servingOpportunityID;

  @override
  State<ServingOpportunityIDWidget> createState() =>
      _ServingOpportunityIDWidgetState();
}

class _ServingOpportunityIDWidgetState
    extends State<ServingOpportunityIDWidget> {
  late ServingOpportunityIDModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServingOpportunityIDModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetServingOpportunitiesIDCall.call(
        authToken: currentAuthenticationToken,
        servingopportunitiesId: widget!.servingOpportunityID,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ),
            ),
          );
        }
        final servingOpportunityIDGetServingOpportunitiesIDResponse =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  GetServingOpportunitiesIDCall
                                      .servingOpportunityTitle(
                                    servingOpportunityIDGetServingOpportunitiesIDResponse
                                        .jsonBody,
                                  ),
                                  'title',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.notoSans(),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                              ),
                              Text(
                                '${GetServingOpportunitiesIDCall.createdByName(
                                  servingOpportunityIDGetServingOpportunitiesIDResponse
                                      .jsonBody,
                                )}',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.workSans(),
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (valueOrDefault<bool>(
                    GetServingOpportunitiesIDCall.servingOpportunityPhotoURL(
                              servingOpportunityIDGetServingOpportunitiesIDResponse
                                  .jsonBody,
                            ) !=
                            null &&
                        GetServingOpportunitiesIDCall
                                .servingOpportunityPhotoURL(
                              servingOpportunityIDGetServingOpportunitiesIDResponse
                                  .jsonBody,
                            ) !=
                            '',
                    true,
                  ))
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        GetServingOpportunitiesIDCall
                            .servingOpportunityPhotoURL(
                          servingOpportunityIDGetServingOpportunitiesIDResponse
                              .jsonBody,
                        )!,
                        width: double.infinity,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (GetServingOpportunitiesIDCall.frequency(
                                  servingOpportunityIDGetServingOpportunitiesIDResponse
                                      .jsonBody,
                                ) ==
                                true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 20.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: ServingInAMinistryExistCall.call(
                                    authToken: currentAuthenticationToken,
                                    servingopportunitiesId:
                                        widget!.servingOpportunityID,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 12.0,
                                          height: 12.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final rowServingInAMinistryExistResponse =
                                        snapshot.data!;

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        if (ServingInAMinistryExistCall.exists(
                                              rowServingInAMinistryExistResponse
                                                  .jsonBody,
                                            ) ==
                                            false)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.onetimesignup =
                                                    await JoinAServingOpportunityTeamCall
                                                        .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                  servingopportunitiesId:
                                                      widget!
                                                          .servingOpportunityID,
                                                );

                                                safeSetState(() {});
                                              },
                                              text: 'I am available',
                                              icon: FaIcon(
                                                FontAwesomeIcons.peopleCarry,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 12.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSans(),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        if (ServingInAMinistryExistCall.exists(
                                              rowServingInAMinistryExistResponse
                                                  .jsonBody,
                                            ) ==
                                            true)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text:
                                                  'You have committed to complete this',
                                              icon: FaIcon(
                                                FontAwesomeIcons.peopleCarry,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 12.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSans(),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            if (GetServingOpportunitiesIDCall.frequency(
                                  servingOpportunityIDGetServingOpportunitiesIDResponse
                                      .jsonBody,
                                ) ==
                                false)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 10.0, 20.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: ServingInAMinistryExistCall.call(
                                    authToken: currentAuthenticationToken,
                                    servingopportunitiesId:
                                        widget!.servingOpportunityID,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 12.0,
                                          height: 12.0,
                                          child: CircularProgressIndicator(
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              FlutterFlowTheme.of(context)
                                                  .secondary,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    final rowServingInAMinistryExistResponse =
                                        snapshot.data!;

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        if (ServingInAMinistryExistCall.exists(
                                              rowServingInAMinistryExistResponse
                                                  .jsonBody,
                                            ) ==
                                            false)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.joining =
                                                    await JoinAServingOpportunityTeamCall
                                                        .call(
                                                  authToken:
                                                      currentAuthenticationToken,
                                                  servingopportunitiesId:
                                                      widget!
                                                          .servingOpportunityID,
                                                );

                                                safeSetState(() {});
                                              },
                                              text: 'Serve Now',
                                              icon: FaIcon(
                                                FontAwesomeIcons.peopleCarry,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                size: 12.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSans(),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        if (ServingInAMinistryExistCall.exists(
                                              rowServingInAMinistryExistResponse
                                                  .jsonBody,
                                            ) ==
                                            true)
                                          Align(
                                            alignment:
                                                AlignmentDirectional(1.0, 1.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Actively Serving',
                                              icon: FaIcon(
                                                FontAwesomeIcons.peopleCarry,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 12.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .notoSans(),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 0.0, 20.0),
                            child: Text(
                              valueOrDefault<String>(
                                GetServingOpportunitiesIDCall
                                    .servingOpportunityDescription(
                                  servingOpportunityIDGetServingOpportunitiesIDResponse
                                      .jsonBody,
                                ),
                                'bulletinID',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.workSans(),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 0.0, 20.0),
                              child: Text(
                                'Ministry Leader: ${GetServingOpportunitiesIDCall.leaderName(
                                  servingOpportunityIDGetServingOpportunitiesIDResponse
                                      .jsonBody,
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.workSans(),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        if (GetServingOpportunitiesIDCall.frequency(
                              servingOpportunityIDGetServingOpportunitiesIDResponse
                                  .jsonBody,
                            ) ==
                            false)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 0.0, 20.0),
                                child: Text(
                                  'Day of the Week: ${GetServingOpportunitiesIDCall.dayoftheweek(
                                    servingOpportunityIDGetServingOpportunitiesIDResponse
                                        .jsonBody,
                                  )}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.workSans(),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        if (GetServingOpportunitiesIDCall.frequency(
                              servingOpportunityIDGetServingOpportunitiesIDResponse
                                  .jsonBody,
                            ) ==
                            true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 20.0, 0.0, 20.0),
                                child: Text(
                                  'Due Date: ${dateTimeFormat(
                                    "yMMMMEEEEd",
                                    DateTime.fromMillisecondsSinceEpoch(
                                        valueOrDefault<int>(
                                      GetServingOpportunitiesIDCall.dueDate(
                                        servingOpportunityIDGetServingOpportunitiesIDResponse
                                            .jsonBody,
                                      ),
                                      1,
                                    )),
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  )}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.workSans(),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${GetServingOpportunitiesIDCall.servingOpportunityTitle(
                                    servingOpportunityIDGetServingOpportunitiesIDResponse
                                        .jsonBody,
                                  )} Team',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.workSans(),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    height: 50.0,
                                    decoration: BoxDecoration(),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future:
                                          TeamDirectoryCOuntServingCall.call(
                                        authToken: currentAuthenticationToken,
                                        servingopportunitiesId:
                                            widget!.servingOpportunityID,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 12.0,
                                              height: 12.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final rowTeamDirectoryCOuntServingResponse =
                                            snapshot.data!;

                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              valueOrDefault<String>(
                                                TeamDirectoryCOuntServingCall
                                                    .count(
                                                  rowTeamDirectoryCOuntServingResponse
                                                      .jsonBody,
                                                )?.toString(),
                                                '0',
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.workSans(),
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Serving',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .workSans(),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 120.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
