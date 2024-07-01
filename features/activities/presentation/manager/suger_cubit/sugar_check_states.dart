import 'package:gluco/features/activities/data/Sugarcheck.dart';

abstract class SugarCheckStates {} 
class SugarCheckinitial extends SugarCheckStates{}
class SugarCheckloading extends SugarCheckStates{}
class haveData extends SugarCheckStates{
  List<double> beforemeal;
  List<double> aftermeal;
  List<Sugarcheck> sugardata;
  haveData(this.beforemeal,this.aftermeal,this.sugardata);
}
class nothaveData extends SugarCheckStates{}