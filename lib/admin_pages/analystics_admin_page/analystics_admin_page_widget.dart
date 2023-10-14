import '/auth/firebase_auth/auth_util.dart';
import '/components/admin_side_bar/admin_side_bar_widget.dart';
import '/components/users_side_bar/users_side_bar_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'analystics_admin_page_model.dart';
export 'analystics_admin_page_model.dart';

class AnalysticsAdminPageWidget extends StatefulWidget {
  const AnalysticsAdminPageWidget({Key? key}) : super(key: key);

  @override
  _AnalysticsAdminPageWidgetState createState() =>
      _AnalysticsAdminPageWidgetState();
}

class _AnalysticsAdminPageWidgetState extends State<AnalysticsAdminPageWidget> {
  late AnalysticsAdminPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnalysticsAdminPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false) == false) {
        context.pushNamed(
          'onboardingScreen',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
            ),
          },
        );
      }
    });

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList4 = [
      Color(0xFF08992C),
      Color(0xFF036B2B),
      Color(0xFFA4D83D),
      Color(0xFF2FBE43),
      Color(0xFF9FDB5F)
    ];
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xDE000000),
        drawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.2,
          child: Drawer(
            elevation: 16.0,
            child: Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/373470874_1020327665763549_4529546911860803767_n.jpg',
                      width: double.infinity,
                      height: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  wrapWithModel(
                    model: _model.usersSideBarModel,
                    updateCallback: () => setState(() {}),
                    child: UsersSideBarWidget(),
                  ),
                  wrapWithModel(
                    model: _model.adminSideBarModel,
                    updateCallback: () => setState(() {}),
                    child: AdminSideBarWidget(
                      parameter1: false,
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      GoRouter.of(context).prepareAuthEvent();
                      await authManager.signOut();
                      GoRouter.of(context).clearRedirectLocation();

                      context.goNamedAuth('onboardingScreen', context.mounted);
                    },
                    text: 'Log out',
                    icon: Icon(
                      Icons.login,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 70.0,
                      padding: EdgeInsetsDirectional.fromSTEB(
                          24.0, 24.0, 24.0, 24.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).secondary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 28.0,
                              ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ].divide(SizedBox(height: 15.0)),
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(-1.00, 0.00),
                    child: FlutterFlowIconButton(
                      borderWidth: 1.0,
                      buttonSize: MediaQuery.sizeOf(context).width * 0.05,
                      fillColor: FlutterFlowTheme.of(context).success,
                      icon: Icon(
                        Icons.menu,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 45.0,
                      ),
                      onPressed: () async {
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Analytics',
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 50.0, 25.0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 0.8,
                    child: Stack(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: TextFormField(
                                  controller: _model.textController,
                                  autofocus: true,
                                  textInputAction: TextInputAction.search,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Lato',
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          fontSize: 24.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(26.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).accent3,
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      size: 30.0,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 24.0,
                                      ),
                                  minLines: 1,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          'Sales over the Past 5 Months',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 370.0,
                                        height: 230.0,
                                        child: FlutterFlowLineChart(
                                          data: [
                                            FFLineChartData(
                                              xData: FFAppState().XAxis,
                                              yData: FFAppState().YAxis,
                                              settings: LineChartBarData(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                barWidth: 2.0,
                                                isCurved: true,
                                                preventCurveOverShooting: true,
                                              ),
                                            )
                                          ],
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor: Color(0xE2E4E4E4),
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(),
                                          yAxisLabelInfo: AxisLabelInfo(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          'Top Best Seller Product',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 370.0,
                                        height: 230.0,
                                        child: FlutterFlowBarChart(
                                          barData: [
                                            FFBarChartData(
                                              yData: FFAppState().YAxis,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            )
                                          ],
                                          xLabels: FFAppState()
                                              .XAxis
                                              .map((e) => e.toString())
                                              .toList(),
                                          barWidth: 16.0,
                                          barBorderRadius:
                                              BorderRadius.circular(8.0),
                                          groupSpace: 8.0,
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor: Color(0xE2E4E4E4),
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(),
                                          yAxisLabelInfo: AxisLabelInfo(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          'Customer\'s Feedback',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 370.0,
                                        height: 230.0,
                                        child: FlutterFlowBarChart(
                                          barData: [
                                            FFBarChartData(
                                              yData: FFAppState().YAxis,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            )
                                          ],
                                          xLabels: FFAppState()
                                              .XAxis
                                              .map((e) => e.toString())
                                              .toList(),
                                          barWidth: 16.0,
                                          barBorderRadius:
                                              BorderRadius.circular(8.0),
                                          groupSpace: 8.0,
                                          chartStylingInfo: ChartStylingInfo(
                                            backgroundColor: Color(0xE2E4E4E4),
                                            showGrid: true,
                                            showBorder: false,
                                          ),
                                          axisBounds: AxisBounds(),
                                          xAxisLabelInfo: AxisLabelInfo(),
                                          yAxisLabelInfo: AxisLabelInfo(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 20.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          'Customers Over the Past 5 Months',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 26.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width: 370.0,
                                        height: 230.0,
                                        child: FlutterFlowPieChart(
                                          data: FFPieChartData(
                                            values: FFAppState().YAxis,
                                            colors: chartPieChartColorsList4,
                                            radius: [100.0],
                                          ),
                                          donutHoleRadius: 0.0,
                                          donutHoleColor: Colors.transparent,
                                          sectionLabelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.1,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      thickness: 3.0,
                      color: FlutterFlowTheme.of(context).accent3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
