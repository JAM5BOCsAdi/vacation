// OnBoarding Screen:
import 'package:vacation/models/frequently_visited_model.dart';

const String kSubtract = 'assets/images/subtract.png';

// Home Screen:
const String kProfileImg = 'assets/images/.png';
const String kMapImg = 'assets/images/bxs-map-1-1.png';
const String kBellImg = 'assets/images/action.png';
const String kFilterImg = 'assets/images/filter.png';
const String kAirportImg = 'assets/images/flight-1.png';
const String kTaxiImg = 'assets/images/car-1.png';
const String kHotelImg = 'assets/images/hotel-1.png';
const String kMoreImg = 'assets/images/category.png';

const String kFVMImg1 = 'assets/images/rectangle-22468-bg.png';
const String kFVMImg2 = 'assets/images/rectangle-22468-bg-ggF.png';
const String kFVMImg3 = 'assets/images/rectangle-22469-bg.png';
const String kFVMImg4 = 'assets/images/rectangle-22469-bg-jQs.png';
const String kFVMImg5 = 'assets/images/rectangle-22472-bg.png';
const String kFVMImg6 = 'assets/images/tropical-beach.png';

List<FrequentlyVisitedModel> frequentlyVisitedList = [
  FrequentlyVisitedModel(
    img: kFVMImg1,
    name: 'Tahiti Beach',
    address: 'Polynesia, French',
    price: '\$235',
    rating: '4.4 (32)',
  ),
  FrequentlyVisitedModel(
    img: kFVMImg2,
    name: 'St. Lucia Mountain',
    address: 'South America',
    price: '\$182',
    rating: '4.4 (41)',
  ),
  FrequentlyVisitedModel(
    img: kFVMImg3,
    name: 'Ledadu Beach',
    address: 'Australia',
    price: '\$342',
    rating: '4.5 (30)',
  ),
  FrequentlyVisitedModel(
    img: kFVMImg4,
    name: 'Endigada Beach',
    address: 'Australia',
    price: '\$123',
    rating: '3.4 (120)',
  ),
  FrequentlyVisitedModel(
    img: kFVMImg5,
    name: 'XY Beach',
    address: 'Austria',
    price: '\$101',
    rating: '2.5 (20)',
  ),
  FrequentlyVisitedModel(
    img: kFVMImg6,
    name: 'XY Beach2',
    address: 'Argentina',
    price: '\$121',
    rating: '3.6 (345)',
  ),
];
