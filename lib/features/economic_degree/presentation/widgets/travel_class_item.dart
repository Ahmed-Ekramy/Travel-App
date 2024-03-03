import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../flight/presentation/manager/flight_cubit.dart';
class TravelItemClass extends StatelessWidget {
   const TravelItemClass({
    super.key,
    required this.title,
    required this.value,
    required this.isSelected,
required this.name
  });
  final String title;
  final String name;
  final int value;
 final  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FlightCubit, FlightState>(
  builder: (context, state) {
    return ListTile(
      title: Text(title,style: TextStyle(color:isSelected?Colors.blue:  Colors.black ,fontWeight: FontWeight.w500),),
      trailing: isSelected ? const Icon(Icons.check, color: Colors.blue) : const SizedBox.shrink(),
      onTap: () {
        if(name=="Select Travel Go Class"){
          FlightCubit.get(context).onSelectTravelClass(value);
          FlightCubit.get(context).updateTask(value);
          Navigator.pop(context);
        }
        else if (name=="Select Travel Round Class"){
          FlightCubit.get(context).onSelectTravelGoClass(value);
          FlightCubit.get(context).updateRoundTask(value);
          Navigator.pop(context);
        }
      },
    );
  },
);
  }
}