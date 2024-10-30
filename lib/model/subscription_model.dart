
import 'dart:ui';

class TasksModel{
  String?employeeName;
  String?startDate;
  String?endDate;
  String price;
  String loadSize;
  String loadOwner;
  String?status;
  Color? statusBackColor;


  TasksModel({ required this.employeeName,required this.startDate,required this.endDate,required this.price,required this.loadSize,required this.loadOwner, required this.status,required this.statusBackColor});

}