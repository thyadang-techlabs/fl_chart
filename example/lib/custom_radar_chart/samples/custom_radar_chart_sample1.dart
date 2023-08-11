import 'package:example/custom_radar_chart/custom_radar_chart_page.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomRadarChartSample1 extends StatefulWidget {
  const CustomRadarChartSample1({super.key, required this.titleList, required this.scoreList});

  final List<String> titleList;
  final List<int> scoreList;

  @override
  State<CustomRadarChartSample1> createState() => _CustomRadarChartSample1State();
}

class _CustomRadarChartSample1State extends State<CustomRadarChartSample1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 300,
      child: RadarChart(
        swapAnimationDuration: const Duration(milliseconds:  400),
        RadarChartData(
          radarBackgroundColor: const Color(0xFFF4F7FE),
          radarShape: RadarShape.polygon,
          // 외곽 선 안 다각형 개수
          ticksTextStyle: const TextStyle(fontSize: 0, color: Colors.transparent),
          // 외곽선
          radarBorderData: const BorderSide(color: Colors.transparent),
          // 외곽선 안에 다각형
          tickBorderData: const BorderSide(color: Color(0xFFBCC3D3), width: 2),
          // 항목을 나타내는 사선
          gridBorderData: const BorderSide(color: Colors.transparent),
          dataSets: [
            RadarDataSet(
              // fillColor: Color.lerp(const Color(0xFF20DEE5).withOpacity(0.8), Colors.black.withOpacity(0.1), 0.33),
              fillColor: const Color(0xFF20DEE5).withOpacity(0.5),
              borderColor: Colors.black,
              entryRadius: 0,
              dataEntries: scoreList.map((score) => RadarEntry(value: score.toDouble())).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
