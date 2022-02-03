import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/cubit/auth_cubit.dart';
import 'package:travel_app/cubit/destination_cubit.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/ui/widgets/destination_card.dart';
import 'package:travel_app/ui/widgets/destination_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    context.read<DestinationCubit>().fetchDestinations();
    super.initState();
  }

  Widget header() {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is AuthSuccess) {
          return Container(
            margin: EdgeInsets.only(
                right: defaultMargin, left: defaultMargin, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Howdy,\n${state.user.name}',
                            style: blackFont.copyWith(
                                fontSize: 24, fontWeight: semiBold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 5,
                            color: kWhiteColor,
                          ),
                          image: DecorationImage(
                              image: AssetImage('assets/image_profile.png'))),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where to fly today?',
                  style: greyFont.copyWith(fontWeight: light, fontSize: 16),
                )
              ],
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }

  Widget destinationSection(List<DestinationModel> destinations) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: destinations.map((DestinationModel destination) {
          return DestinationCard(destination);
        }).toList(),
      ),
    );
  }

  Widget newDestination(List<DestinationModel> destinations) {
    return Container(
      margin: EdgeInsets.only(
          bottom: 100, right: defaultMargin, left: defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackFont.copyWith(fontSize: 18, fontWeight: semiBold),
          ),
          Column(
            children: destinations.map((DestinationModel destination) {
              return DestinationTile(destination);
            }).toList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: kPinkColor, content: Text(state.error)));
        }
      },
      builder: (context, state) {
        if (state is DestinationSuccess) {
          return ListView(
            children: [
              header(),
              destinationSection(state.destinations),
              newDestination(state.destinations),
            ],
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
