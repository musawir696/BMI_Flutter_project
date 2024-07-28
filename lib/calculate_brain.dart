
import 'dart:math';
class CalculatorBrain{

  CalculatorBrain({this.height,this.weight});

  final int height;
   final int weight;

  double bmi;

   String calculateBMI()
   {
     bmi=weight/pow(height/100,2);
     return bmi.toStringAsFixed(1);


   }
   String getResult()
   {
     if(bmi >=25)
       {
         return 'overweight';


       }
       else if(bmi>18.5)
         {
           return 'normal';

         }

       else
         {

           return 'underweight';
         }

   }
String getInterpretation()
{


  if(bmi >=25)
  {
    return 'you have higher than normal body weight. try to exercise more';


  }
  else if(bmi>18.5)
  {
    return 'you have a normal body weight . good job!';

  }

  else
  {

    return 'you have a lower normal body weight. you eat a bit more';
  }




}

}