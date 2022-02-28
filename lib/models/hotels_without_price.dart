// To parse this JSON data, do
//
//     final hotelsWithoutPrice = hotelsWithoutPriceFromJson(jsonString);

import 'dart:convert';

HotelsWithoutPrice hotelsWithoutPriceFromJson(String str) => HotelsWithoutPrice.fromJson(json.decode(str));

String hotelsWithoutPriceToJson(HotelsWithoutPrice data) => json.encode(data.toJson());

class HotelsWithoutPrice {
  HotelsWithoutPrice({
    this.categoryId,
    this.isVilla,
    this.locationId,
    this.options,
  });

  int categoryId;
  bool isVilla;
  int locationId;
  Options options;

  factory HotelsWithoutPrice.fromJson(Map<String, dynamic> json) => HotelsWithoutPrice(
    categoryId: json["category_id"],
    isVilla: json["is_villa"],
    locationId: json["location_id"],
    options: Options.fromJson(json["options"]),
  );

  Map<String, dynamic> toJson() => {
    "category_id": categoryId,
    "is_villa": isVilla,
    "location_id": locationId,
    "options": options.toJson(),
  };
}

class Options {
  Options({
    this.eventName,
    this.filterData,
    this.link,
    this.moreHotels,
    this.tabId,
  });

  String eventName;
  FilterData filterData;
  String link;
  bool moreHotels;
  String tabId;

  factory Options.fromJson(Map<String, dynamic> json) => Options(
    eventName: json["Event_Name"],
    filterData: FilterData.fromJson(json["Filter_Data"]),
    link: json["Link"],
    moreHotels: json["More_Hotels"],
    tabId: json["tab_id"],
  );

  Map<String, dynamic> toJson() => {
    "Event_Name": eventName,
    "Filter_Data": filterData.toJson(),
    "Link": link,
    "More_Hotels": moreHotels,
    "tab_id": tabId,
  };
}

class FilterData {
  FilterData({
    this.categories,
    this.concepts,
    this.discountKeys,
    this.hotelPropertyProminentFilters,
    this.locationData,
    this.pageNumber,
    this.price,
    this.sortingData,
  });

  List<dynamic> categories;
  List<dynamic> concepts;
  List<dynamic> discountKeys;
  List<dynamic> hotelPropertyProminentFilters;
  List<dynamic> locationData;
  int pageNumber;
  dynamic price;
  SortingData sortingData;

  factory FilterData.fromJson(Map<String, dynamic> json) => FilterData(
    categories: List<dynamic>.from(json["Categories"].map((x) => x)),
    concepts: List<dynamic>.from(json["Concepts"].map((x) => x)),
    discountKeys: List<dynamic>.from(json["Discount_Keys"].map((x) => x)),
    hotelPropertyProminentFilters: List<dynamic>.from(json["Hotel_Property_Prominent_Filters"].map((x) => x)),
    locationData: List<dynamic>.from(json["Location_Data"].map((x) => x)),
    pageNumber: json["Page_Number"],
    price: json["Price"],
    sortingData: SortingData.fromJson(json["Sorting_Data"]),
  );

  Map<String, dynamic> toJson() => {
    "Categories": List<dynamic>.from(categories.map((x) => x)),
    "Concepts": List<dynamic>.from(concepts.map((x) => x)),
    "Discount_Keys": List<dynamic>.from(discountKeys.map((x) => x)),
    "Hotel_Property_Prominent_Filters": List<dynamic>.from(hotelPropertyProminentFilters.map((x) => x)),
    "Location_Data": List<dynamic>.from(locationData.map((x) => x)),
    "Page_Number": pageNumber,
    "Price": price,
    "Sorting_Data": sortingData.toJson(),
  };
}

class SortingData {
  SortingData();

  factory SortingData.fromJson(Map<String, dynamic> json) => SortingData(
  );

  Map<String, dynamic> toJson() => {
  };
}
