import 'package:fetch_api_using_dio/models/hotel_detail_model.dart';
import 'package:fetch_api_using_dio/services/hotel_list_search_detail_service.dart';
import 'package:flutter/material.dart';

class HotelListSearchDetailProvider {
final int hotelID;
  HotelListSearchDetailProvider(this.hotelID);

  void getHotelDetail({
    Function() beforeSend,
    Function(dynamic hotelDetail) onSuccess,
    Function(dynamic error) onError,
  }) {
    var data = {
      "agency_id": "425",
      "agency_personel_id": 909,
      "language_type": "1",
      "channel_id": "1",
      "marketing_id": "1",
      "hotel_id": '$hotelID',
      "checkIn": "2018-07-10",
      "checkOut": "2018-07-16",
      "hotelLocationAirports": [
        {
          "hotel_name": null,
          "airport_name": null,
          "name": null
        },
        {
          "hotel_name": null,
          "airport_name": null,
          "name": null
        }
      ],
      "hotel_search_criteria_dto": {
        "check_in_date": "2018-07-10",
        "check_out_date": "2018-07-16",
        "rooms": [
          {
            "room_id": 0,
            "persons": [
              {
                "is_child": false,
                "is_men": false,
                "birth_date": "1985-01-01",
                "room_order_id": 0
              },
              {
                "is_child": false,
                "is_men": false,
                "birth_date": "1985-01-01",
                "room_order_id": 0
              }
            ],
            "search_detail": null
          }
        ],
        "marketing_id": "1",
        "channel_id": "1",
        "final_unit": null,
        "exchange_standart_id": null,
        "agency_id": "425",
        "agency_personel_id": 909,
        "calculate_agency_comission": false,
        "hotel_search_tag_list": {
          "room_id": 0,
          "persons": null,
          "search_detail": null
        },
        "is_all_room": null,
        "check_in_date_string": null,
        "price_search_application_type": 0
      }
    };
    HotelListSearchDetailService(url: 'https://apiacente.gezinomi.com/hotel-details/index', data: data).get(
        beforeSend: () => {if (beforeSend != null) beforeSend()},
        onSuccess: (data) {
          // debugPrint("We've Got details ${data}");
          var hotelDetailData = HotelDetailModel.fromJson(data);
          // debugPrint("Hotel detail data $hotelDetailData");
          onSuccess(hotelDetailData.data.results);
        },
        onError: (error) => {if (onError != null) onError(error)});
  }
}
