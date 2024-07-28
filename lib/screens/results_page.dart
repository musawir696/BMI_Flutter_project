import 'package:bmi_calculator/component/Button-button.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/component/Reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpretation,@required this.bmiResult,@required this.resulttext});
 final String bmiResult;
 final String resulttext;
 final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Caluclator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:<Widget> [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child:Text('your Results',
                  style: kTitleTextStyle,
                ) ,
              ),
          ),
          Expanded(
              flex:5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget> [

                  Text(
                    resulttext.toUpperCase(),
                    style:  kResultTextStyle ,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                       interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),

                ],
              ),
            ),

          ),
          BottomButton(
              buttonTitle: 'RE-CALCULATE',
            onTap: ()
            {
             Navigator.pop(context);
            },
          )

        ],
      ),

    );
  }
}
