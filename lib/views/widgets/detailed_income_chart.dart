import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utls/styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPiechart()));
  }

  PieChartData getPiechart() {
    return PieChartData(
 

        pieTouchData: PieTouchData(
          
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sections: [
          PieChartSectionData(
         titlePositionPercentageOffset:activeIndex == 0 ? 1.4:null,
          title:activeIndex==0?"Design Service" :"40%"  ,
            value: 40,
            color: const Color(0xFF208BC7),
            radius: activeIndex == 0 ? 60 : 50,
           titleStyle: ResStyles.styleMedium16(context).copyWith(color:activeIndex == 0 ?null: Colors.white),
          ),
          PieChartSectionData(
            title:activeIndex==1?"Design Product" :"25%" ,
            value: 25,
             titlePositionPercentageOffset:activeIndex == 1 ? 1.4:null,
            color: const Color(0xFF4DB7F2),
            radius: activeIndex == 1 ? 60 : 50,
           titleStyle: ResStyles.styleMedium16(context).copyWith(color:activeIndex == 1 ?null: Colors.white),
          ),
          PieChartSectionData(
             titlePositionPercentageOffset:activeIndex ==2 ? 1.2:null,
          title:activeIndex==2?"Design Royaliti" :"20%"  ,
           titleStyle: ResStyles.styleMedium16(context).copyWith(color:activeIndex == 2 ?null: Colors.white),
            value: 20,
            color: const Color(0xFF064060),
            radius: activeIndex == 2 ? 60 : 50,
           
          ),
          PieChartSectionData(
            titlePositionPercentageOffset:activeIndex == 3 ? 1.4:null,
          title:activeIndex==3?"Other" :"22%"  ,
            value: 22,
            color: const Color(0xFFE2DECD),
            radius: activeIndex == 3 ? 60 : 50,
           titleStyle: ResStyles.styleMedium16(context).copyWith(color:activeIndex == 3 ?null: Colors.white),

          ),
        ]);
  }
}
