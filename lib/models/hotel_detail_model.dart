import 'dart:convert';

HotelDetailModel hotelDetailModelFromJson(String str) => HotelDetailModel.fromJson(json.decode(str));

String hotelDetailModelToJson(HotelDetailModel data) => json.encode(data.toJson());

class HotelDetailModel {
  HotelDetailModel({
    this.status,
    this.data,
  });

  Status status;
  Data data;

  factory HotelDetailModel.fromJson(Map<String, dynamic> json) => HotelDetailModel(
    status: Status.fromJson(json["status"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status.toJson(),
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.results,
  });

  Results results;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    results: Results.fromJson(json["results"]),
  );

  Map<String, dynamic> toJson() => {
    "results": results.toJson(),
  };
}

class Results {
  Results({
    this.rtData,
    this.isCyprusHotel,
    this.isNotShowPriceDetail,
    this.packageSearch,
    this.showComission,
    this.airportsForCyprus,
    this.airportsForDeparture,
    this.airportsForArrival,
    this.paymentConditions,
    this.hotelCampaigns,
    this.saleCampaigns,
    this.insurances,
    this.announcements,
  });

  RtData rtData;
  bool isCyprusHotel;
  bool isNotShowPriceDetail;
  bool packageSearch;
  bool showComission;
  dynamic airportsForCyprus;
  List<Airport> airportsForDeparture;
  List<Airport> airportsForArrival;
  List<dynamic> paymentConditions;
  List<HotelCampaign> hotelCampaigns;
  List<SaleCampaign> saleCampaigns;
  List<Insurance> insurances;
  List<Announcement> announcements;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    rtData: json["rt_data"] == null ? null : RtData.fromJson(json["rt_data"]),
    isCyprusHotel: json["is_cyprus_hotel"],
    isNotShowPriceDetail: json["is_not_show_price_detail"],
    packageSearch: json["package_search"],
    showComission: json["show_comission"],
    airportsForCyprus: json["airports_for_cyprus"],
    airportsForDeparture: json["airports_for_departure"] == null ? null : List<Airport>.from(json["airports_for_departure"].map((x) => Airport.fromJson(x))),
    airportsForArrival: json["airports_for_arrival"] == null ? null : List<Airport>.from(json["airports_for_arrival"].map((x) => Airport.fromJson(x))),
    paymentConditions: json["payment_conditions"] == null ? null : List<dynamic>.from(json["payment_conditions"].map((x) => x)),
    hotelCampaigns: json["hotel_campaigns"] == null ? null : List<HotelCampaign>.from(json["hotel_campaigns"].map((x) => HotelCampaign.fromJson(x))),
    saleCampaigns: json["sale_campaigns"] == null ? null : List<SaleCampaign>.from(json["sale_campaigns"].map((x) => SaleCampaign.fromJson(x))),
    insurances: json["insurances"] == null ? null : List<Insurance>.from(json["insurances"].map((x) => Insurance.fromJson(x))),
    announcements: json["announcements"] == null ? null : List<Announcement>.from(json["announcements"].map((x) => Announcement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "rt_data": rtData == null ? null : rtData.toJson(),
    "is_cyprus_hotel": isCyprusHotel,
    "is_not_show_price_detail": isNotShowPriceDetail,
    "package_search": packageSearch,
    "show_comission": showComission,
    "airports_for_cyprus": airportsForCyprus,
    "airports_for_departure": airportsForDeparture == null ? null : List<dynamic>.from(airportsForDeparture.map((x) => x.toJson())),
    "airports_for_arrival": airportsForArrival == null ? null : List<dynamic>.from(airportsForArrival.map((x) => x.toJson())),
    "payment_conditions": paymentConditions == null ? null : List<dynamic>.from(paymentConditions.map((x) => x)),
    "hotel_campaigns": hotelCampaigns == null ? null : List<dynamic>.from(hotelCampaigns.map((x) => x.toJson())),
    "sale_campaigns": saleCampaigns == null ? null : List<dynamic>.from(saleCampaigns.map((x) => x.toJson())),
    "insurances": insurances == null ? null : List<dynamic>.from(insurances.map((x) => x.toJson())),
    "announcements": announcements == null ? null : List<dynamic>.from(announcements.map((x) => x.toJson())),
  };
}

class Airport {
  Airport({
    this.countryId,
    this.countryName,
    this.cityCode,
    this.cityName,
    this.airportId,
    this.airportCode,
    this.airportName,
    this.isCity,
    this.type,
    this.countryCode,
  });

  int countryId;
  CountryName countryName;
  String cityCode;
  String cityName;
  int airportId;
  String airportCode;
  String airportName;
  bool isCity;
  dynamic type;
  CountryCode countryCode;

  factory Airport.fromJson(Map<String, dynamic> json) => Airport(
    countryId: json["country_id"],
    countryName: countryNameValues.map[json["country_name"]],
    cityCode: json["city_code"],
    cityName: json["city_name"],
    airportId: json["airport_id"],
    airportCode: json["airport_code"],
    airportName: json["airport_name"],
    isCity: json["is_city"],
    type: json["type"],
    countryCode: countryCodeValues.map[json["country_code"]],
  );

  Map<String, dynamic> toJson() => {
    "country_id": countryId,
    "country_name": countryNameValues.reverse[countryName],
    "city_code": cityCode,
    "city_name": cityName,
    "airport_id": airportId,
    "airport_code": airportCode,
    "airport_name": airportName,
    "is_city": isCity,
    "type": type,
    "country_code": countryCodeValues.reverse[countryCode],
  };
}

enum CountryCode { TR, CY }

final countryCodeValues = EnumValues({
  "CY": CountryCode.CY,
  "TR": CountryCode.TR
});

enum CountryName { TRKIYE, KBRS }

final countryNameValues = EnumValues({
  "Kıbrıs": CountryName.KBRS,
  "Türkiye": CountryName.TRKIYE
});

class Announcement {
  Announcement({
    this.translate,
    this.announcementReferences,
    this.announcementId,
    this.productGroupId,
    this.title,
    this.shortText,
    this.description,
    this.startDate,
    this.endDate,
    this.smallImagePath,
    this.bigImagePath,
    this.announcementTypeId,
    this.isPopUp,
    this.orderNumber,
    this.isIndefinite,
    this.isActive,
    this.isDeleted,
    this.applicationId,
    this.permalink,
    this.isInstant,
    this.isDefaultImage,
    this.imageTitle,
    this.imageSlogan,
    this.imageDetail,
    this.defaultImagePath,
    this.createdBy,
    this.changedBy,
    this.createdDate,
    this.changedDate,
  });

  List<dynamic> translate;
  dynamic announcementReferences;
  int announcementId;
  int productGroupId;
  String title;
  String shortText;
  String description;
  dynamic startDate;
  dynamic endDate;
  String smallImagePath;
  String bigImagePath;
  int announcementTypeId;
  bool isPopUp;
  int orderNumber;
  bool isIndefinite;
  bool isActive;
  bool isDeleted;
  int applicationId;
  String permalink;
  bool isInstant;
  dynamic isDefaultImage;
  dynamic imageTitle;
  dynamic imageSlogan;
  dynamic imageDetail;
  dynamic defaultImagePath;
  int createdBy;
  int changedBy;
  DateTime createdDate;
  DateTime changedDate;

  factory Announcement.fromJson(Map<String, dynamic> json) => Announcement(
    translate: json["translate"] == null ? null : List<dynamic>.from(json["translate"].map((x) => x)),
    announcementReferences: json["announcement_references"],
    announcementId: json["announcement_id"],
    productGroupId: json["product_group_id"],
    title: json["title"],
    shortText: json["short_text"],
    description: json["description"],
    startDate: json["start_date"],
    endDate: json["end_date"],
    smallImagePath: json["small_image_path"],
    bigImagePath: json["big_image_path"],
    announcementTypeId: json["announcement_type_id"],
    isPopUp: json["is_pop_up"],
    orderNumber: json["order_number"],
    isIndefinite: json["is_indefinite"],
    isActive: json["is_active"],
    isDeleted: json["is_deleted"],
    applicationId: json["application_id"],
    permalink: json["permalink"],
    isInstant: json["is_instant"],
    isDefaultImage: json["is_default_image"],
    imageTitle: json["image_title"],
    imageSlogan: json["image_slogan"],
    imageDetail: json["image_detail"],
    defaultImagePath: json["default_image_path"],
    createdBy: json["created_by"],
    changedBy: json["changed_by"],
    createdDate: DateTime.parse(json["created_date"]),
    changedDate: DateTime.parse(json["changed_date"]),
  );

  Map<String, dynamic> toJson() => {
    "translate": translate == null ? null : List<dynamic>.from(translate.map((x) => x)),
    "announcement_references": announcementReferences,
    "announcement_id": announcementId,
    "product_group_id": productGroupId,
    "title": title,
    "short_text": shortText,
    "description": description,
    "start_date": startDate,
    "end_date": endDate,
    "small_image_path": smallImagePath,
    "big_image_path": bigImagePath,
    "announcement_type_id": announcementTypeId,
    "is_pop_up": isPopUp,
    "order_number": orderNumber,
    "is_indefinite": isIndefinite,
    "is_active": isActive,
    "is_deleted": isDeleted,
    "application_id": applicationId,
    "permalink": permalink,
    "is_instant": isInstant,
    "is_default_image": isDefaultImage,
    "image_title": imageTitle,
    "image_slogan": imageSlogan,
    "image_detail": imageDetail,
    "default_image_path": defaultImagePath,
    "created_by": createdBy,
    "changed_by": changedBy,
    "created_date": createdDate.toIso8601String(),
    "changed_date": changedDate.toIso8601String(),
  };
}

class HotelCampaign {
  HotelCampaign({
    this.groupTitle,
    this.className,
    this.iconClass,
    this.count,
    this.discountTypeCategoryEnum,
    this.discountTypeCategory,
    this.isExtraDiscount,
    this.campaignsOfType,
  });

  String groupTitle;
  String className;
  String iconClass;
  int count;
  int discountTypeCategoryEnum;
  int discountTypeCategory;
  bool isExtraDiscount;
  List<CampaignsOfType> campaignsOfType;

  factory HotelCampaign.fromJson(Map<String, dynamic> json) => HotelCampaign(
    groupTitle: json["group_title"],
    className: json["class_name"],
    iconClass: json["icon_class"],
    count: json["count"],
    discountTypeCategoryEnum: json["discount_type_category_enum"],
    discountTypeCategory: json["discount_type_category"],
    isExtraDiscount: json["is_extra_discount"],
    campaignsOfType: json["campaigns_of_type"] == null ? null : List<CampaignsOfType>.from(json["campaigns_of_type"].map((x) => CampaignsOfType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "group_title": groupTitle,
    "class_name": className,
    "icon_class": iconClass,
    "count": count,
    "discount_type_category_enum": discountTypeCategoryEnum,
    "discount_type_category": discountTypeCategory,
    "is_extra_discount": isExtraDiscount,
    "campaigns_of_type": campaignsOfType == null ? null : List<dynamic>.from(campaignsOfType.map((x) => x.toJson())),
  };
}

class CampaignsOfType {
  CampaignsOfType({
    this.hotelCampaignId,
    this.saleValue,
    this.stayDay,
    this.paidDay,
    this.hotelCampaignName,
    this.isExtraDiscount,
    this.campaigins,
    this.hotelCampaignDescription,
    this.discountKeyId,
  });

  int hotelCampaignId;
  int saleValue;
  int stayDay;
  int paidDay;
  String hotelCampaignName;
  bool isExtraDiscount;
  List<Campaigin> campaigins;
  String hotelCampaignDescription;
  int discountKeyId;

  factory CampaignsOfType.fromJson(Map<String, dynamic> json) => CampaignsOfType(
    hotelCampaignId: json["hotel_campaign_id"],
    saleValue: json["sale_value"],
    stayDay: json["stay_day"],
    paidDay: json["paid_day"],
    hotelCampaignName: json["hotel_campaign_name"],
    isExtraDiscount: json["is_extra_discount"],
    campaigins: json["campaigins"] == null ? null : List<Campaigin>.from(json["campaigins"].map((x) => Campaigin.fromJson(x))),
    hotelCampaignDescription: json["hotel_campaign_description"],
    discountKeyId: json["discount_key_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_campaign_id": hotelCampaignId,
    "sale_value": saleValue,
    "stay_day": stayDay,
    "paid_day": paidDay,
    "hotel_campaign_name": hotelCampaignName,
    "is_extra_discount": isExtraDiscount,
    "campaigins": campaigins == null ? null : List<dynamic>.from(campaigins.map((x) => x.toJson())),
    "hotel_campaign_description": hotelCampaignDescription,
    "discount_key_id": discountKeyId,
  };
}

class Campaigin {
  Campaigin({
    this.hotelCampaignRuleDescription,
  });

  String hotelCampaignRuleDescription;

  factory Campaigin.fromJson(Map<String, dynamic> json) => Campaigin(
    hotelCampaignRuleDescription: json["hotel_campaign_rule_description"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_campaign_rule_description": hotelCampaignRuleDescription,
  };
}

class Insurance {
  Insurance({
    this.insuranceId,
    this.title,
    this.description,
  });

  int insuranceId;
  String title;
  String description;

  factory Insurance.fromJson(Map<String, dynamic> json) => Insurance(
    insuranceId: json["insurance_id"],
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "insurance_id": insuranceId,
    "title": title,
    "description": description,
  };
}

class RtData {
  RtData({
    this.hotelId,
    this.checkIn,
    this.checkOut,
    this.productId,
    this.productName,
    this.hotelName,
    this.defaultConceptName,
    this.navigationName,
    this.pictures,
    this.categories,
    this.returnItem,
    this.descriptions,
    this.propertyList,
    this.criterias,
    this.childAgeAndPriceDto,
    this.reservationInfos,
    this.virtualTourLink,
    this.ebInsurance,
    this.videoList,
    this.cheapestPriceUnitIcon,
    this.hotelConcepts,
    this.displayPrice,
    this.airports,
    this.latitude,
    this.longitude,
    this.isSingleMan,
    this.hotelProductActivityCache,
    this.hotelOpenDate,
    this.hotelCloseDate,
    this.hotelOpenText,
    this.isHotelOpenInYear,
    this.childInfo,
    this.hotelPropertyProminentCacheModels,
    this.hotelDetail,
    this.childAge1Min,
    this.childAge1Max,
    this.childAge2Max,
    this.isAdultHotel,
    this.childAge2Min,
    this.minimumAcceptedAge,
    this.breadCrumbDto,
  });

  int hotelId;
  String checkIn;
  String checkOut;
  int productId;
  String productName;
  String hotelName;
  dynamic defaultConceptName;
  String navigationName;
  List<Picture> pictures;
  List<Category> categories;
  dynamic returnItem;
  List<Description> descriptions;
  List<PropertyList> propertyList;
  Criterias criterias;
  ChildAgeAndPriceDto childAgeAndPriceDto;
  dynamic reservationInfos;
  String virtualTourLink;
  bool ebInsurance;
  List<VideoList> videoList;
  dynamic cheapestPriceUnitIcon;
  List<HotelConcept> hotelConcepts;
  DisplayPrice displayPrice;
  List<Airport> airports;
  String latitude;
  String longitude;
  bool isSingleMan;
  List<dynamic> hotelProductActivityCache;
  String hotelOpenDate;
  String hotelCloseDate;
  dynamic hotelOpenText;
  bool isHotelOpenInYear;
  String childInfo;
  List<HotelPropertyProminentCacheModel> hotelPropertyProminentCacheModels;
  HotelDetail hotelDetail;
  int childAge1Min;
  int childAge1Max;
  int childAge2Max;
  bool isAdultHotel;
  int childAge2Min;
  dynamic minimumAcceptedAge;
  BreadCrumbDto breadCrumbDto;

  factory RtData.fromJson(Map<String, dynamic> json) => RtData(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    checkIn: json["check_in"],
    checkOut: json["check_out"],
    productId: json["product_id"],
    productName: json["product_name"],
    hotelName: json["hotel_name"],
    defaultConceptName: json["default_concept_name"],
    navigationName: json["navigation_name"],
    pictures: json["pictures"] == null ? null : List<Picture>.from(json["pictures"].map((x) => Picture.fromJson(x))),
    categories: json["categories"] == null ? null : List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    returnItem: json["return_item"],
    descriptions: json["descriptions"] == null ? null : List<Description>.from(json["descriptions"].map((x) => Description.fromJson(x))),
    propertyList: json["property_list"] == null ? null : List<PropertyList>.from(json["property_list"].map((x) => PropertyList.fromJson(x))),
    criterias: Criterias.fromJson(json["criterias"]),
    childAgeAndPriceDto: ChildAgeAndPriceDto.fromJson(json["child_age_and_price_dto"]),
    reservationInfos: json["reservation_infos"],
    virtualTourLink: json["virtual_tour_link"],
    ebInsurance: json["eb_insurance"],
    videoList: json["video_list"] == null ? null : List<VideoList>.from(json["video_list"].map((x) => VideoList.fromJson(x))),
    cheapestPriceUnitIcon: json["cheapest_price_unit_icon"],
    hotelConcepts: json["hotel_concepts"] == null ? null : List<HotelConcept>.from(json["hotel_concepts"].map((x) => HotelConcept.fromJson(x))),
    displayPrice: DisplayPrice.fromJson(json["display_price"]),
    airports: json["airports"] == null ? null : List<Airport>.from(json["airports"].map((x) => Airport.fromJson(x))),
    latitude: json["latitude"],
    longitude: json["longitude"],
    isSingleMan: json["is_single_man"],
    hotelProductActivityCache: json["hotel_product_activity_cache"] == null ? null : List<dynamic>.from(json["hotel_product_activity_cache"].map((x) => x)),
    hotelOpenDate: json["hotel_open_date"],
    hotelCloseDate: json["hotel_close_date"],
    hotelOpenText: json["hotel_open_text"],
    isHotelOpenInYear: json["is_hotel_open_in_year"],
    childInfo: json["child_info"],
    hotelPropertyProminentCacheModels: json["hotel_property_prominent_cache_models"] == null ? null : List<HotelPropertyProminentCacheModel>.from(json["hotel_property_prominent_cache_models"].map((x) => HotelPropertyProminentCacheModel.fromJson(x))),
    hotelDetail: HotelDetail.fromJson(json["hotel_detail"]),
    childAge1Min: json["child_age1_min"],
    childAge1Max: json["child_age1_max"],
    childAge2Max: json["child_age2_max"],
    isAdultHotel: json["is_adult_hotel"],
    childAge2Min: json["child_age2_min"],
    minimumAcceptedAge: json["minimum_accepted_age"],
    breadCrumbDto: BreadCrumbDto.fromJson(json["bread_crumb_dto"]),
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "check_in": checkIn,
    "check_out": checkOut,
    "product_id": productId,
    "product_name": productName,
    "hotel_name": hotelName,
    "default_concept_name": defaultConceptName,
    "navigation_name": navigationName,
    "pictures": pictures == null ? null : List<dynamic>.from(pictures.map((x) => x.toJson())),
    "categories": categories == null ? null : List<dynamic>.from(categories.map((x) => x.toJson())),
    "return_item": returnItem,
    "descriptions": descriptions == null ? null : List<dynamic>.from(descriptions.map((x) => x.toJson())),
    "property_list": propertyList == null ? null : List<dynamic>.from(propertyList.map((x) => x.toJson())),
    "criterias": criterias.toJson(),
    "child_age_and_price_dto": childAgeAndPriceDto.toJson(),
    "reservation_infos": reservationInfos,
    "virtual_tour_link": virtualTourLink,
    "eb_insurance": ebInsurance,
    "video_list": videoList == null ? null : List<dynamic>.from(videoList.map((x) => x.toJson())),
    "cheapest_price_unit_icon": cheapestPriceUnitIcon,
    "hotel_concepts": hotelConcepts == null ? null : List<dynamic>.from(hotelConcepts.map((x) => x.toJson())),
    "display_price": displayPrice.toJson(),
    "airports": airports == null ? null : List<dynamic>.from(airports.map((x) => x.toJson())),
    "latitude": latitude,
    "longitude": longitude,
    "is_single_man": isSingleMan,
    "hotel_product_activity_cache": hotelProductActivityCache == null ? null : List<dynamic>.from(hotelProductActivityCache.map((x) => x)),
    "hotel_open_date": hotelOpenDate,
    "hotel_close_date": hotelCloseDate,
    "hotel_open_text": hotelOpenText,
    "is_hotel_open_in_year": isHotelOpenInYear,
    "child_info": childInfo,
    "hotel_property_prominent_cache_models": hotelPropertyProminentCacheModels == null ? null : List<dynamic>.from(hotelPropertyProminentCacheModels.map((x) => x.toJson())),
    "hotel_detail": hotelDetail.toJson(),
    "child_age1_min": childAge1Min,
    "child_age1_max": childAge1Max,
    "child_age2_max": childAge2Max,
    "is_adult_hotel": isAdultHotel,
    "child_age2_min": childAge2Min,
    "minimum_accepted_age": minimumAcceptedAge,
    "bread_crumb_dto": breadCrumbDto.toJson(),
  };
}

class BreadCrumbDto {
  BreadCrumbDto({
    this.mainRouter,
    this.displayName,
    this.cityLocation,
    this.districtLocation,
    this.streetLocation,
    this.hotelCategoryUrl,
    this.breadCrumbType,
    this.otelAnaSayfaRouter,
    this.tourCategoryRouter,
    this.otelRouter,
    this.yurtDisiOtelAnaSayfaRouter,
    this.yurtDisiOtelSearchResultsRouter,
    this.yurtDisiOtelRouter,
    this.hotelCategory,
    this.landingPageReferenceTypeId,
    this.hotelCategoryByApplication,
    this.turAnaSayfaRouter,
    this.turDetayRouter,
    this.turSearchResultRouter,
    this.turAnaKategori,
    this.turAltKategori,
    this.turCategoryList,
    this.landingPage,
  });

  dynamic mainRouter;
  dynamic displayName;
  Location cityLocation;
  Location districtLocation;
  Location streetLocation;
  dynamic hotelCategoryUrl;
  int breadCrumbType;
  dynamic otelAnaSayfaRouter;
  dynamic tourCategoryRouter;
  dynamic otelRouter;
  dynamic yurtDisiOtelAnaSayfaRouter;
  dynamic yurtDisiOtelSearchResultsRouter;
  dynamic yurtDisiOtelRouter;
  dynamic hotelCategory;
  dynamic landingPageReferenceTypeId;
  dynamic hotelCategoryByApplication;
  dynamic turAnaSayfaRouter;
  dynamic turDetayRouter;
  dynamic turSearchResultRouter;
  dynamic turAnaKategori;
  dynamic turAltKategori;
  dynamic turCategoryList;
  dynamic landingPage;

  factory BreadCrumbDto.fromJson(Map<String, dynamic> json) => BreadCrumbDto(
    mainRouter: json["main_router"],
    displayName: json["display_name"],
    cityLocation: Location.fromJson(json["city_location"]),
    districtLocation: Location.fromJson(json["district_location"]),
    streetLocation: Location.fromJson(json["street_location"]),
    hotelCategoryUrl: json["hotel_category_url"],
    breadCrumbType: json["bread_crumb_type"],
    otelAnaSayfaRouter: json["otel_ana_sayfa_router"],
    tourCategoryRouter: json["tour_category_router"],
    otelRouter: json["otel_router"],
    yurtDisiOtelAnaSayfaRouter: json["yurt_disi_otel_ana_sayfa_router"],
    yurtDisiOtelSearchResultsRouter: json["yurt_disi_otel_search_results_router"],
    yurtDisiOtelRouter: json["yurt_disi_otel_router"],
    hotelCategory: json["hotel_category"],
    landingPageReferenceTypeId: json["landing_page_reference_type_id"],
    hotelCategoryByApplication: json["hotel_category_by_application"],
    turAnaSayfaRouter: json["tur_ana_sayfa_router"],
    turDetayRouter: json["tur_detay_router"],
    turSearchResultRouter: json["tur_search_result_router"],
    turAnaKategori: json["tur_ana_kategori"],
    turAltKategori: json["tur_alt_kategori"],
    turCategoryList: json["tur_category_list"],
    landingPage: json["landing_page"],
  );

  Map<String, dynamic> toJson() => {
    "main_router": mainRouter,
    "display_name": displayName,
    "city_location": cityLocation.toJson(),
    "district_location": districtLocation.toJson(),
    "street_location": streetLocation.toJson(),
    "hotel_category_url": hotelCategoryUrl,
    "bread_crumb_type": breadCrumbType,
    "otel_ana_sayfa_router": otelAnaSayfaRouter,
    "tour_category_router": tourCategoryRouter,
    "otel_router": otelRouter,
    "yurt_disi_otel_ana_sayfa_router": yurtDisiOtelAnaSayfaRouter,
    "yurt_disi_otel_search_results_router": yurtDisiOtelSearchResultsRouter,
    "yurt_disi_otel_router": yurtDisiOtelRouter,
    "hotel_category": hotelCategory,
    "landing_page_reference_type_id": landingPageReferenceTypeId,
    "hotel_category_by_application": hotelCategoryByApplication,
    "tur_ana_sayfa_router": turAnaSayfaRouter,
    "tur_detay_router": turDetayRouter,
    "tur_search_result_router": turSearchResultRouter,
    "tur_ana_kategori": turAnaKategori,
    "tur_alt_kategori": turAltKategori,
    "tur_category_list": turCategoryList,
    "landing_page": landingPage,
  };
}

class Location {
  Location({
    this.hotelLocationId,
    this.parentId,
    this.name,
    this.navigationName,
    this.layer,
    this.cityId,
    this.distrinctId,
    this.streetId,
    this.link,
    this.seoIsPopular,
    this.seoShowInNavigationSub,
    this.hotelIds,
    this.id,
  });

  int hotelLocationId;
  int parentId;
  String name;
  String navigationName;
  int layer;
  int cityId;
  int distrinctId;
  int streetId;
  String link;
  bool seoIsPopular;
  bool seoShowInNavigationSub;
  List<int> hotelIds;
  int id;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
    hotelLocationId: json["hotel_location_id"],
    parentId: json["parent_id"],
    name: json["name"],
    navigationName: json["navigation_name"],
    layer: json["layer"],
    cityId: json["city_id"],
    distrinctId: json["distrinct_id"] == null ? null : json["distrinct_id"],
    streetId: json["street_id"] == null ? null : json["street_id"],
    link: json["link"],
    seoIsPopular: json["seo_is_popular"],
    seoShowInNavigationSub: json["seo_show_in_navigation_sub"],
    hotelIds: json["hotel_ids"] == null ? null : List<int>.from(json["hotel_ids"].map((x) => x)),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_location_id": hotelLocationId,
    "parent_id": parentId,
    "name": name,
    "navigation_name": navigationName,
    "layer": layer,
    "city_id": cityId,
    "distrinct_id": distrinctId == null ? null : distrinctId,
    "street_id": streetId == null ? null : streetId,
    "link": link,
    "seo_is_popular": seoIsPopular,
    "seo_show_in_navigation_sub": seoShowInNavigationSub,
    "hotel_ids": hotelIds == null ? null : List<dynamic>.from(hotelIds.map((x) => x)),
    "id": id,
  };
}

class Category {
  Category({
    this.hotelId,
    this.name,
    this.hotelCategoryId,
    this.permaLink,
    this.isChainHotelCategory,
    this.imagePath,
    this.orderId,
  });

  int hotelId;
  String name;
  int hotelCategoryId;
  String permaLink;
  bool isChainHotelCategory;
  String imagePath;
  int orderId;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    name: json["name"],
    hotelCategoryId: json["hotel_category_id"],
    permaLink: json["perma_link"],
    isChainHotelCategory: json["is_chain_hotel_category"],
    imagePath: json["image_path"] == null ? null : json["image_path"],
    orderId: json["order_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "name": name,
    "hotel_category_id": hotelCategoryId,
    "perma_link": permaLink,
    "is_chain_hotel_category": isChainHotelCategory,
    "image_path": imagePath == null ? null : imagePath,
    "order_id": orderId,
  };
}

class ChildAgeAndPriceDto {
  ChildAgeAndPriceDto({
    this.dpp,
    this.dppInTl,
    this.unitCode,
    this.unitCodeInTl,
    this.child1,
    this.child2,
  });

  int dpp;
  int dppInTl;
  dynamic unitCode;
  dynamic unitCodeInTl;
  dynamic child1;
  dynamic child2;

  factory ChildAgeAndPriceDto.fromJson(Map<String, dynamic> json) => ChildAgeAndPriceDto(
    dpp: json["dpp"],
    dppInTl: json["dpp_in_tl"],
    unitCode: json["unit_code"],
    unitCodeInTl: json["unit_code_in_tl"],
    child1: json["child1"],
    child2: json["child2"],
  );

  Map<String, dynamic> toJson() => {
    "dpp": dpp,
    "dpp_in_tl": dppInTl,
    "unit_code": unitCode,
    "unit_code_in_tl": unitCodeInTl,
    "child1": child1,
    "child2": child2,
  };
}

class Criterias {
  Criterias({
    this.checkInDate,
    this.checkOutDate,
    this.rooms,
    this.marketingId,
    this.channelId,
    this.finalUnit,
    this.exchangeStandartId,
    this.agencyId,
    this.agencyPersonelId,
    this.calculateAgencyComission,
    this.hotelSearchTagList,
    this.isAllRoom,
    this.checkInDateString,
    this.isVilla,
    this.priceSearchApplicationType,
  });

  DateTime checkInDate;
  DateTime checkOutDate;
  List<Room> rooms;
  int marketingId;
  int channelId;
  dynamic finalUnit;
  dynamic exchangeStandartId;
  int agencyId;
  int agencyPersonelId;
  bool calculateAgencyComission;
  dynamic hotelSearchTagList;
  dynamic isAllRoom;
  dynamic checkInDateString;
  bool isVilla;
  int priceSearchApplicationType;

  factory Criterias.fromJson(Map<String, dynamic> json) => Criterias(
    checkInDate: DateTime.parse(json["check_in_date"]),
    checkOutDate: DateTime.parse(json["check_out_date"]),
    rooms: json["rooms"] == null ? null : List<Room>.from(json["rooms"].map((x) => Room.fromJson(x))),
    marketingId: json["marketing_id"],
    channelId: json["channel_id"],
    finalUnit: json["final_unit"],
    exchangeStandartId: json["exchange_standart_id"],
    agencyId: json["agency_id"],
    agencyPersonelId: json["agency_personel_id"],
    calculateAgencyComission: json["calculate_agency_comission"],
    hotelSearchTagList: json["hotel_search_tag_list"],
    isAllRoom: json["is_all_room"],
    checkInDateString: json["check_in_date_string"],
    isVilla: json["is_villa"],
    priceSearchApplicationType: json["price_search_application_type"],
  );

  Map<String, dynamic> toJson() => {
    "check_in_date": checkInDate.toIso8601String(),
    "check_out_date": checkOutDate.toIso8601String(),
    "rooms": rooms == null ? null : List<dynamic>.from(rooms.map((x) => x.toJson())),
    "marketing_id": marketingId,
    "channel_id": channelId,
    "final_unit": finalUnit,
    "exchange_standart_id": exchangeStandartId,
    "agency_id": agencyId,
    "agency_personel_id": agencyPersonelId,
    "calculate_agency_comission": calculateAgencyComission,
    "hotel_search_tag_list": hotelSearchTagList,
    "is_all_room": isAllRoom,
    "check_in_date_string": checkInDateString,
    "is_villa": isVilla,
    "price_search_application_type": priceSearchApplicationType,
  };
}

class Room {
  Room({
    this.roomId,
    this.tourAccomodationBedTypeId,
    this.persons,
    this.searchDetail,
  });

  int roomId;
  int tourAccomodationBedTypeId;
  List<Person> persons;
  dynamic searchDetail;

  factory Room.fromJson(Map<String, dynamic> json) => Room(
    roomId: json["room_id"],
    tourAccomodationBedTypeId: json["tour_accomodation_bed_type_id"],
    persons: json["persons"] == null ? null : List<Person>.from(json["persons"].map((x) => Person.fromJson(x))),
    searchDetail: json["search_detail"],
  );

  Map<String, dynamic> toJson() => {
    "room_id": roomId,
    "tour_accomodation_bed_type_id": tourAccomodationBedTypeId,
    "persons": persons == null ? null : List<dynamic>.from(persons.map((x) => x.toJson())),
    "search_detail": searchDetail,
  };
}

class Person {
  Person({
    this.isChild,
    this.isMen,
    this.birthDate,
    this.age,
    this.roomOrderId,
  });

  bool isChild;
  bool isMen;
  DateTime birthDate;
  int age;
  int roomOrderId;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
    isChild: json["is_child"],
    isMen: json["is_men"],
    birthDate: DateTime.parse(json["birth_date"]),
    age: json["age"],
    roomOrderId: json["room_order_id"],
  );

  Map<String, dynamic> toJson() => {
    "is_child": isChild,
    "is_men": isMen,
    "birth_date": birthDate.toIso8601String(),
    "age": age,
    "room_order_id": roomOrderId,
  };
}

class Description {
  Description({
    this.descriptionText,
    this.descriptionId,
    this.orderNumber,
    this.typeName,
    this.descriptionTypeId,
    this.isShowAgave,
    this.isShowGezinomi,
  });

  String descriptionText;
  int descriptionId;
  int orderNumber;
  String typeName;
  int descriptionTypeId;
  bool isShowAgave;
  bool isShowGezinomi;

  factory Description.fromJson(Map<String, dynamic> json) => Description(
    descriptionText: json["description_text"],
    descriptionId: json["description_id"],
    orderNumber: json["order_number"],
    typeName: json["type_name"],
    descriptionTypeId: json["description_type_id"],
    isShowAgave: json["is_show_agave"],
    isShowGezinomi: json["is_show_gezinomi"],
  );

  Map<String, dynamic> toJson() => {
    "description_text": descriptionText,
    "description_id": descriptionId,
    "order_number": orderNumber,
    "type_name": typeName,
    "description_type_id": descriptionTypeId,
    "is_show_agave": isShowAgave,
    "is_show_gezinomi": isShowGezinomi,
  };
}

class DisplayPrice {
  DisplayPrice({
    this.id,
    this.calcTypeId,
    this.priority,
    this.isSingleBay,
    this.avgRate,
    this.categorySliderPath,
    this.notDiscountedPrice,
    this.hotelCategoryIds,
    this.hotelPropertyProminents,
    this.hotelOpenDate,
    this.hotelCloseDate,
    this.isHotelOpenInYear,
    this.hotelOpenText,
    this.childInfo,
    this.childAge1Min,
    this.childAge1Max,
    this.childAge2Min,
    this.childAge2Max,
    this.discountRate,
    this.priceInTl,
    this.unitId,
    this.price,
    this.isContract,
    this.hotelId,
    this.productId,
    this.name,
    this.link,
    this.imageUrl,
    this.alt,
    this.title,
    this.marketingId,
    this.isAdultHotel,
    this.channelId,
    this.priceDate,
    this.isRecommended,
    this.hotelLocation,
    this.hotelLocationId,
    this.latitude,
    this.longitude,
    this.conceptName,
    this.concepTypeId,
    this.priceGroupId,
    this.minimumAcceptedAge,
    this.isVilla,
    this.hotelCampaigns,
    this.hotelValidCampaigns,
    this.saleCampaigns,
    this.insurances,
    this.productActivities,
    this.hasEbInsurance,
    this.tegSoftCampaignId,
  });

  int id;
  dynamic calcTypeId;
  int priority;
  bool isSingleBay;
  dynamic avgRate;
  dynamic categorySliderPath;
  dynamic notDiscountedPrice;
  dynamic hotelCategoryIds;
  dynamic hotelPropertyProminents;
  dynamic hotelOpenDate;
  dynamic hotelCloseDate;
  dynamic isHotelOpenInYear;
  dynamic hotelOpenText;
  dynamic childInfo;
  dynamic childAge1Min;
  dynamic childAge1Max;
  dynamic childAge2Min;
  dynamic childAge2Max;
  dynamic discountRate;
  dynamic priceInTl;
  dynamic unitId;
  dynamic price;
  dynamic isContract;
  int hotelId;
  int productId;
  dynamic name;
  dynamic link;
  dynamic imageUrl;
  dynamic alt;
  dynamic title;
  int marketingId;
  bool isAdultHotel;
  dynamic channelId;
  dynamic priceDate;
  bool isRecommended;
  dynamic hotelLocation;
  dynamic hotelLocationId;
  dynamic latitude;
  dynamic longitude;
  dynamic conceptName;
  dynamic concepTypeId;
  int priceGroupId;
  dynamic minimumAcceptedAge;
  dynamic isVilla;
  dynamic hotelCampaigns;
  dynamic hotelValidCampaigns;
  dynamic saleCampaigns;
  dynamic insurances;
  dynamic productActivities;
  bool hasEbInsurance;
  dynamic tegSoftCampaignId;

  factory DisplayPrice.fromJson(Map<String, dynamic> json) => DisplayPrice(
    id: json["id"],
    calcTypeId: json["calc_type_id"],
    priority: json["priority"],
    isSingleBay: json["is_single_bay"],
    avgRate: json["avg_rate"],
    categorySliderPath: json["category_slider_path"],
    notDiscountedPrice: json["not_discounted_price"],
    hotelCategoryIds: json["hotel_category_ids"],
    hotelPropertyProminents: json["hotel_property_prominents"],
    hotelOpenDate: json["hotel_open_date"],
    hotelCloseDate: json["hotel_close_date"],
    isHotelOpenInYear: json["is_hotel_open_in_year"],
    hotelOpenText: json["hotel_open_text"],
    childInfo: json["child_info"],
    childAge1Min: json["child_age1_min"],
    childAge1Max: json["child_age1_max"],
    childAge2Min: json["child_age2_min"],
    childAge2Max: json["child_age2_max"],
    discountRate: json["discount_rate"],
    priceInTl: json["price_in_tl"],
    unitId: json["unit_id"],
    price: json["price"],
    isContract: json["is_contract"],
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    productId: json["product_id"],
    name: json["name"],
    link: json["link"],
    imageUrl: json["image_url"],
    alt: json["alt"],
    title: json["title"],
    marketingId: json["marketing_id"],
    isAdultHotel: json["is_adult_hotel"],
    channelId: json["channel_id"],
    priceDate: json["price_date"],
    isRecommended: json["is_recommended"],
    hotelLocation: json["hotel_location"],
    hotelLocationId: json["hotel_location_id"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    conceptName: json["concept_name"],
    concepTypeId: json["concep_type_id"],
    priceGroupId: json["price_group_id"],
    minimumAcceptedAge: json["minimum_accepted_age"],
    isVilla: json["is_villa"],
    hotelCampaigns: json["hotel_campaigns"],
    hotelValidCampaigns: json["hotel_valid_campaigns"],
    saleCampaigns: json["sale_campaigns"],
    insurances: json["insurances"],
    productActivities: json["product_activities"],
    hasEbInsurance: json["has_eb_insurance"],
    tegSoftCampaignId: json["teg_soft_campaign_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "calc_type_id": calcTypeId,
    "priority": priority,
    "is_single_bay": isSingleBay,
    "avg_rate": avgRate,
    "category_slider_path": categorySliderPath,
    "not_discounted_price": notDiscountedPrice,
    "hotel_category_ids": hotelCategoryIds,
    "hotel_property_prominents": hotelPropertyProminents,
    "hotel_open_date": hotelOpenDate,
    "hotel_close_date": hotelCloseDate,
    "is_hotel_open_in_year": isHotelOpenInYear,
    "hotel_open_text": hotelOpenText,
    "child_info": childInfo,
    "child_age1_min": childAge1Min,
    "child_age1_max": childAge1Max,
    "child_age2_min": childAge2Min,
    "child_age2_max": childAge2Max,
    "discount_rate": discountRate,
    "price_in_tl": priceInTl,
    "unit_id": unitId,
    "price": price,
    "is_contract": isContract,
    "hotel_id": hotelId == null ? null : hotelId,
    "product_id": productId,
    "name": name,
    "link": link,
    "image_url": imageUrl,
    "alt": alt,
    "title": title,
    "marketing_id": marketingId,
    "is_adult_hotel": isAdultHotel,
    "channel_id": channelId,
    "price_date": priceDate,
    "is_recommended": isRecommended,
    "hotel_location": hotelLocation,
    "hotel_location_id": hotelLocationId,
    "latitude": latitude,
    "longitude": longitude,
    "concept_name": conceptName,
    "concep_type_id": concepTypeId,
    "price_group_id": priceGroupId,
    "minimum_accepted_age": minimumAcceptedAge,
    "is_villa": isVilla,
    "hotel_campaigns": hotelCampaigns,
    "hotel_valid_campaigns": hotelValidCampaigns,
    "sale_campaigns": saleCampaigns,
    "insurances": insurances,
    "product_activities": productActivities,
    "has_eb_insurance": hasEbInsurance,
    "teg_soft_campaign_id": tegSoftCampaignId,
  };
}

class HotelConcept {
  HotelConcept({
    this.translate,
    this.conceptType,
    this.hotel,
    this.hotelConceptId,
    this.conceptTypeId,
    this.hotelId,
    this.isActive,
    this.isDefault,
    this.description,
    this.isDeleted,
    this.createdBy,
    this.changedBy,
    this.createdDate,
    this.changedDate,
  });

  List<dynamic> translate;
  ConceptType conceptType;
  dynamic hotel;
  int hotelConceptId;
  int conceptTypeId;
  int hotelId;
  dynamic isActive;
  bool isDefault;
  dynamic description;
  bool isDeleted;
  dynamic createdBy;
  dynamic changedBy;
  dynamic createdDate;
  dynamic changedDate;

  factory HotelConcept.fromJson(Map<String, dynamic> json) => HotelConcept(
    translate:json["translate"] == null ? null :  List<dynamic>.from(json["translate"].map((x) => x)),
    conceptType: ConceptType.fromJson(json["concept_type"]),
    hotel: json["hotel"],
    hotelConceptId: json["hotel_concept_id"],
    conceptTypeId: json["concept_type_id"],
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    isActive: json["is_active"],
    isDefault: json["is_default"],
    description: json["description"],
    isDeleted: json["is_deleted"],
    createdBy: json["created_by"],
    changedBy: json["changed_by"],
    createdDate: json["created_date"],
    changedDate: json["changed_date"],
  );

  Map<String, dynamic> toJson() => {
    "translate": translate == null ? null : List<dynamic>.from(translate.map((x) => x)),
    "concept_type": conceptType.toJson(),
    "hotel": hotel,
    "hotel_concept_id": hotelConceptId,
    "concept_type_id": conceptTypeId,
    "hotel_id": hotelId == null ? null : hotelId,
    "is_active": isActive,
    "is_default": isDefault,
    "description": description,
    "is_deleted": isDeleted,
    "created_by": createdBy,
    "changed_by": changedBy,
    "created_date": createdDate,
    "changed_date": changedDate,
  };
}

class ConceptType {
  ConceptType({
    this.translate,
    this.concepTypeId,
    this.name,
    this.groupCode,
    this.iconFileName,
    this.isActive,
    this.isDeleted,
    this.description,
    this.conceptTypeGroupId,
    this.conceptGroupName,
    this.conceptTypeGroup,
    this.createdBy,
    this.changedBy,
    this.createdDate,
    this.changedDate,
  });

  List<dynamic> translate;
  int concepTypeId;
  String name;
  dynamic groupCode;
  dynamic iconFileName;
  bool isActive;
  bool isDeleted;
  String description;
  dynamic conceptTypeGroupId;
  dynamic conceptGroupName;
  dynamic conceptTypeGroup;
  dynamic createdBy;
  dynamic changedBy;
  dynamic createdDate;
  dynamic changedDate;

  factory ConceptType.fromJson(Map<String, dynamic> json) => ConceptType(
    translate: json["translate"] == null ? null : List<dynamic>.from(json["translate"].map((x) => x)),
    concepTypeId: json["concep_type_id"],
    name: json["name"],
    groupCode: json["group_code"],
    iconFileName: json["icon_file_name"],
    isActive: json["is_active"],
    isDeleted: json["is_deleted"],
    description: json["description"],
    conceptTypeGroupId: json["concept_type_group_id"],
    conceptGroupName: json["concept_group_name"],
    conceptTypeGroup: json["concept_type_group"],
    createdBy: json["created_by"],
    changedBy: json["changed_by"],
    createdDate: json["created_date"],
    changedDate: json["changed_date"],
  );

  Map<String, dynamic> toJson() => {
    "translate": translate == null ? null : List<dynamic>.from(translate.map((x) => x)),
    "concep_type_id": concepTypeId,
    "name": name,
    "group_code": groupCode,
    "icon_file_name": iconFileName,
    "is_active": isActive,
    "is_deleted": isDeleted,
    "description": description,
    "concept_type_group_id": conceptTypeGroupId,
    "concept_group_name": conceptGroupName,
    "concept_type_group": conceptTypeGroup,
    "created_by": createdBy,
    "changed_by": changedBy,
    "created_date": createdDate,
    "changed_date": changedDate,
  };
}

class HotelDetail {
  HotelDetail({
    this.isHotelOpenInYear,
    this.hotelOpenDate,
    this.hotelCloseDate,
    this.hotelOpenText,
    this.callCenterMailBoxId,
    this.hotelId,
    this.isContract,
    this.productId,
    this.name,
    this.address,
    this.star,
    this.latitude,
    this.longitude,
    this.isSingleMan,
    this.priority,
    this.parentId,
    this.hotelLocationId,
    this.hotelLocation,
    this.link,
    this.virtualTourLink,
    this.isEBinsurance,
    this.isInsuranceExist,
    this.vatKeyId,
    this.mapCode,
    this.isMenWithChild,
    this.isWithoutWomen,
    this.isCyprusHotel,
    this.isActive,
    this.childInfo,
    this.totalPhoto,
    this.isRecommended,
    this.hotelCommandRating,
    this.hotelVideoCacheModels,
    this.hotelPictureCacheModels,
    this.hotelDescriptionCacheModels,
    this.hotelPropertyCacheModels,
    this.hotelRoomCacheModels,
    this.hotelCategoryIds,
    this.hotelConceptTypeCacheModel,
    this.hotelProductActivities,
    this.hotelPropertyProminentCacheModels,
    this.seoHotelCacheModels,
    this.hotelLocationAirportIds,
    this.childAge1Min,
    this.childAge1Max,
    this.childAge2Min,
    this.childAge2Max,
    this.isAdultHotel,
    this.isCityHotel,
    this.isVilla,
    this.minimumAcceptedAge,
    this.tax,
    this.isAgencyCommision,
    this.isAgencyPersonelCommision,
    this.checkChild,
    this.cityId,
    this.id,
  });

  bool isHotelOpenInYear;
  String hotelOpenDate;
  String hotelCloseDate;
  String hotelOpenText;
  int callCenterMailBoxId;
  int hotelId;
  bool isContract;
  int productId;
  String name;
  String address;
  String star;
  String latitude;
  String longitude;
  bool isSingleMan;
  int priority;
  int parentId;
  int hotelLocationId;
  String hotelLocation;
  String link;
  String virtualTourLink;
  bool isEBinsurance;
  bool isInsuranceExist;
  String vatKeyId;
  String mapCode;
  bool isMenWithChild;
  bool isWithoutWomen;
  bool isCyprusHotel;
  bool isActive;
  String childInfo;
  int totalPhoto;
  bool isRecommended;
  double hotelCommandRating;
  List<HotelVideoCacheModel> hotelVideoCacheModels;
  List<HotelPictureCacheModel> hotelPictureCacheModels;
  List<HotelDescriptionCacheModel> hotelDescriptionCacheModels;
  List<HotelPropertyCacheModel> hotelPropertyCacheModels;
  List<HotelRoomCacheModel> hotelRoomCacheModels;
  List<int> hotelCategoryIds;
  List<HotelConceptTypeCacheModel> hotelConceptTypeCacheModel;
  List<dynamic> hotelProductActivities;
  List<HotelPropertyProminentCacheModel> hotelPropertyProminentCacheModels;
  List<SeoHotelCacheModel> seoHotelCacheModels;
  List<int> hotelLocationAirportIds;
  int childAge1Min;
  int childAge1Max;
  int childAge2Min;
  int childAge2Max;
  bool isAdultHotel;
  bool isCityHotel;
  bool isVilla;
  dynamic minimumAcceptedAge;
  String tax;
  bool isAgencyCommision;
  bool isAgencyPersonelCommision;
  bool checkChild;
  int cityId;
  int id;

  factory HotelDetail.fromJson(Map<String, dynamic> json) => HotelDetail(
    isHotelOpenInYear: json["is_hotel_open_in_year"],
    hotelOpenDate: json["hotel_open_date"],
    hotelCloseDate: json["hotel_close_date"],
    hotelOpenText: json["hotel_open_text"],
    callCenterMailBoxId: json["call_center_mail_box_id"],
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    isContract: json["is_contract"],
    productId: json["product_id"],
    name: json["name"],
    address: json["address"],
    star: json["star"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    isSingleMan: json["is_single_man"],
    priority: json["priority"],
    parentId: json["parent_id"],
    hotelLocationId: json["hotel_location_id"],
    hotelLocation: json["hotel_location"],
    link: json["link"],
    virtualTourLink: json["virtual_tour_link"],
    isEBinsurance: json["is_e_binsurance"],
    isInsuranceExist: json["is_insurance_exist"],
    vatKeyId: json["vat_key_id"],
    mapCode: json["map_code"],
    isMenWithChild: json["is_men_with_child"],
    isWithoutWomen: json["is_without_women"],
    isCyprusHotel: json["is_cyprus_hotel"],
    isActive: json["is_active"],
    childInfo: json["child_info"],
    totalPhoto: json["total_photo"],
    isRecommended: json["is_recommended"],
    hotelCommandRating: json["hotel_command_rating"].toDouble(),
    hotelVideoCacheModels: json["hotel_video_cache_models"] == null ? null : List<HotelVideoCacheModel>.from(json["hotel_video_cache_models"].map((x) => HotelVideoCacheModel.fromJson(x))),
    hotelPictureCacheModels: json["hotel_picture_cache_models"] == null ? null : List<HotelPictureCacheModel>.from(json["hotel_picture_cache_models"].map((x) => HotelPictureCacheModel.fromJson(x))),
    hotelDescriptionCacheModels: json["hotel_description_cache_models"] == null ? null : List<HotelDescriptionCacheModel>.from(json["hotel_description_cache_models"].map((x) => HotelDescriptionCacheModel.fromJson(x))),
    hotelPropertyCacheModels: json["hotel_property_cache_models"] == null ? null : List<HotelPropertyCacheModel>.from(json["hotel_property_cache_models"].map((x) => HotelPropertyCacheModel.fromJson(x))),
    hotelRoomCacheModels: json["hotel_room_cache_models"] == null ? null : List<HotelRoomCacheModel>.from(json["hotel_room_cache_models"].map((x) => HotelRoomCacheModel.fromJson(x))),
    hotelCategoryIds: json["hotel_category_ids"] == null ? null : List<int>.from(json["hotel_category_ids"].map((x) => x)),
    hotelConceptTypeCacheModel: json["hotel_concept_type_cache_model"] == null ? null : List<HotelConceptTypeCacheModel>.from(json["hotel_concept_type_cache_model"].map((x) => HotelConceptTypeCacheModel.fromJson(x))),
    hotelProductActivities: json["hotel_product_activities"] == null ? null : List<dynamic>.from(json["hotel_product_activities"].map((x) => x)),
    hotelPropertyProminentCacheModels: json["hotel_property_prominent_cache_models"] == null ? null : List<HotelPropertyProminentCacheModel>.from(json["hotel_property_prominent_cache_models"].map((x) => HotelPropertyProminentCacheModel.fromJson(x))),
    seoHotelCacheModels: json["seo_hotel_cache_models"] == null ? null : List<SeoHotelCacheModel>.from(json["seo_hotel_cache_models"].map((x) => SeoHotelCacheModel.fromJson(x))),
    hotelLocationAirportIds: json["hotel_location_airport_ids"] == null ? null : List<int>.from(json["hotel_location_airport_ids"].map((x) => x)),
    childAge1Min: json["child_age1_min"],
    childAge1Max: json["child_age1_max"],
    childAge2Min: json["child_age2_min"],
    childAge2Max: json["child_age2_max"],
    isAdultHotel: json["is_adult_hotel"],
    isCityHotel: json["is_city_hotel"],
    isVilla: json["is_villa"],
    minimumAcceptedAge: json["minimum_accepted_age"],
    tax: json["tax"],
    isAgencyCommision: json["is_agency_commision"],
    isAgencyPersonelCommision: json["is_agency_personel_commision"],
    checkChild: json["check_child"],
    cityId: json["city_id"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "is_hotel_open_in_year": isHotelOpenInYear,
    "hotel_open_date": hotelOpenDate,
    "hotel_close_date": hotelCloseDate,
    "hotel_open_text": hotelOpenText,
    "call_center_mail_box_id": callCenterMailBoxId,
    "hotel_id": hotelId == null ? null : hotelId,
    "is_contract": isContract,
    "product_id": productId,
    "name": name,
    "address": address,
    "star": star,
    "latitude": latitude,
    "longitude": longitude,
    "is_single_man": isSingleMan,
    "priority": priority,
    "parent_id": parentId,
    "hotel_location_id": hotelLocationId,
    "hotel_location": hotelLocation,
    "link": link,
    "virtual_tour_link": virtualTourLink,
    "is_e_binsurance": isEBinsurance,
    "is_insurance_exist": isInsuranceExist,
    "vat_key_id": vatKeyId,
    "map_code": mapCode,
    "is_men_with_child": isMenWithChild,
    "is_without_women": isWithoutWomen,
    "is_cyprus_hotel": isCyprusHotel,
    "is_active": isActive,
    "child_info": childInfo,
    "total_photo": totalPhoto,
    "is_recommended": isRecommended,
    "hotel_command_rating": hotelCommandRating,
    "hotel_video_cache_models": hotelVideoCacheModels == null ? null : List<dynamic>.from(hotelVideoCacheModels.map((x) => x.toJson())),
    "hotel_picture_cache_models": hotelPictureCacheModels == null ? null : List<dynamic>.from(hotelPictureCacheModels.map((x) => x.toJson())),
    "hotel_description_cache_models": hotelDescriptionCacheModels == null ? null : List<dynamic>.from(hotelDescriptionCacheModels.map((x) => x.toJson())),
    "hotel_property_cache_models": hotelPropertyCacheModels == null ? null : List<dynamic>.from(hotelPropertyCacheModels.map((x) => x.toJson())),
    "hotel_room_cache_models": hotelRoomCacheModels == null ? null : List<dynamic>.from(hotelRoomCacheModels.map((x) => x.toJson())),
    "hotel_category_ids": hotelCategoryIds == null ? null : List<dynamic>.from(hotelCategoryIds.map((x) => x)),
    "hotel_concept_type_cache_model": hotelConceptTypeCacheModel == null ? null : List<dynamic>.from(hotelConceptTypeCacheModel.map((x) => x.toJson())),
    "hotel_product_activities": hotelProductActivities == null ? null : List<dynamic>.from(hotelProductActivities.map((x) => x)),
    "hotel_property_prominent_cache_models": hotelPropertyProminentCacheModels == null ? null : List<dynamic>.from(hotelPropertyProminentCacheModels.map((x) => x.toJson())),
    "seo_hotel_cache_models": seoHotelCacheModels == null ? null : List<dynamic>.from(seoHotelCacheModels.map((x) => x.toJson())),
    "hotel_location_airport_ids": hotelLocationAirportIds == null ? null : List<dynamic>.from(hotelLocationAirportIds.map((x) => x)),
    "child_age1_min": childAge1Min,
    "child_age1_max": childAge1Max,
    "child_age2_min": childAge2Min,
    "child_age2_max": childAge2Max,
    "is_adult_hotel": isAdultHotel,
    "is_city_hotel": isCityHotel,
    "is_villa": isVilla,
    "minimum_accepted_age": minimumAcceptedAge,
    "tax": tax,
    "is_agency_commision": isAgencyCommision,
    "is_agency_personel_commision": isAgencyPersonelCommision,
    "check_child": checkChild,
    "city_id": cityId,
    "id": id,
  };
}

class HotelConceptTypeCacheModel {
  HotelConceptTypeCacheModel({
    this.hotelId,
    this.conceptTypeId,
    this.isDefault,
    this.description,
  });

  int hotelId;
  int conceptTypeId;
  bool isDefault;
  String description;

  factory HotelConceptTypeCacheModel.fromJson(Map<String, dynamic> json) => HotelConceptTypeCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    conceptTypeId: json["concept_type_id"],
    isDefault: json["is_default"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "concept_type_id": conceptTypeId,
    "is_default": isDefault,
    "description": description,
  };
}

class HotelDescriptionCacheModel {
  HotelDescriptionCacheModel({
    this.productId,
    this.descriptionTypeId,
    this.descriptionTypeName,
    this.text,
    this.descriptionTypeOrderNumber,
    this.isShowAgave,
    this.isShowGezinomi,
  });

  int productId;
  int descriptionTypeId;
  String descriptionTypeName;
  String text;
  int descriptionTypeOrderNumber;
  bool isShowAgave;
  bool isShowGezinomi;

  factory HotelDescriptionCacheModel.fromJson(Map<String, dynamic> json) => HotelDescriptionCacheModel(
    productId: json["product_id"],
    descriptionTypeId: json["description_type_id"],
    descriptionTypeName: json["description_type_name"],
    text: json["text"],
    descriptionTypeOrderNumber: json["description_type_order_number"],
    isShowAgave: json["is_show_agave"],
    isShowGezinomi: json["is_show_gezinomi"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "description_type_id": descriptionTypeId,
    "description_type_name": descriptionTypeName,
    "text": text,
    "description_type_order_number": descriptionTypeOrderNumber,
    "is_show_agave": isShowAgave,
    "is_show_gezinomi": isShowGezinomi,
  };
}

class HotelPictureCacheModel {
  HotelPictureCacheModel({
    this.productId,
    this.name,
    this.isDefault,
    this.orderNumber,
    this.pictureCategoryId,
    this.pictureCategoryName,
    this.pictureCategoryOrderNumber,
    this.hotelRoomId,
    this.alt,
    this.title,
    this.isRoom,
    this.description,
  });

  int productId;
  String name;
  bool isDefault;
  int orderNumber;
  int pictureCategoryId;
  CategoryName pictureCategoryName;
  int pictureCategoryOrderNumber;
  int hotelRoomId;
  String alt;
  String title;
  bool isRoom;
  String description;

  factory HotelPictureCacheModel.fromJson(Map<String, dynamic> json) => HotelPictureCacheModel(
    productId: json["product_id"],
    name: json["name"],
    isDefault: json["is_default"],
    orderNumber: json["order_number"],
    pictureCategoryId: json["picture_category_id"],
    pictureCategoryName: categoryNameValues.map[json["picture_category_name"]],
    pictureCategoryOrderNumber: json["picture_category_order_number"],
    hotelRoomId: json["hotel_room_id"] == null ? null : json["hotel_room_id"],
    alt: json["alt"],
    title: json["title"],
    isRoom: json["is_room"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "product_id": productId,
    "name": name,
    "is_default": isDefault,
    "order_number": orderNumber,
    "picture_category_id": pictureCategoryId,
    "picture_category_name": categoryNameValues.reverse[pictureCategoryName],
    "picture_category_order_number": pictureCategoryOrderNumber,
    "hotel_room_id": hotelRoomId == null ? null : hotelRoomId,
    "alt": alt,
    "title": title,
    "is_room": isRoom,
    "description": description,
  };
}

enum CategoryName { ODA, GENEL, AKTIVITE, PLAJ_HAVUZ, YEME_ME, OCUK }

final categoryNameValues = EnumValues({
  "Aktivite": CategoryName.AKTIVITE,
  "Genel": CategoryName.GENEL,
  "Çocuk": CategoryName.OCUK,
  "Oda": CategoryName.ODA,
  "Plaj & Havuz": CategoryName.PLAJ_HAVUZ,
  "Yeme & İçme": CategoryName.YEME_ME
});

class HotelPropertyCacheModel {
  HotelPropertyCacheModel({
    this.hotelId,
    this.hotelPropertId,
    this.name,
    this.hotelPropertyGroupId,
    this.hotelPropertyGroupName,
    this.isFromDate,
    this.isThereAFee,
    this.description,
    this.value,
    this.iconPath,
    this.isNeededValue,
    this.unitId,
    this.validDaysList,
  });

  int hotelId;
  int hotelPropertId;
  String name;
  int hotelPropertyGroupId;
  PropertyGroupName hotelPropertyGroupName;
  bool isFromDate;
  bool isThereAFee;
  String description;
  int value;
  String iconPath;
  bool isNeededValue;
  int unitId;
  dynamic validDaysList;

  factory HotelPropertyCacheModel.fromJson(Map<String, dynamic> json) => HotelPropertyCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    hotelPropertId: json["hotel_propert_id"],
    name: json["name"],
    hotelPropertyGroupId: json["hotel_property_group_id"],
    hotelPropertyGroupName: propertyGroupNameValues.map[json["hotel_property_group_name"]],
    isFromDate: json["is_from_date"],
    isThereAFee: json["is_there_a_fee"],
    description: json["description"] == null ? null : json["description"],
    value: json["value"] == null ? null : json["value"],
    iconPath: json["icon_path"] == null ? null : json["icon_path"],
    isNeededValue: json["is_needed_value"],
    unitId: json["unit_id"] == null ? null : json["unit_id"],
    validDaysList: json["valid_days_list"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "hotel_propert_id": hotelPropertId,
    "name": name,
    "hotel_property_group_id": hotelPropertyGroupId,
    "hotel_property_group_name": propertyGroupNameValues.reverse[hotelPropertyGroupName],
    "is_from_date": isFromDate,
    "is_there_a_fee": isThereAFee,
    "description": description == null ? null : description,
    "value": value == null ? null : value,
    "icon_path": iconPath == null ? null : iconPath,
    "is_needed_value": isNeededValue,
    "unit_id": unitId == null ? null : unitId,
    "valid_days_list": validDaysList,
  };
}

enum PropertyGroupName { KONUM_BILGILERI, OTEL_ZELLIKLERI, SPA_SALK_HIZMETLERI, PLAJ_VE_HAVUZ_ZELLIKLERI, AKTIVITELER, OCUKLAR_IN }

final propertyGroupNameValues = EnumValues({
  "Aktiviteler": PropertyGroupName.AKTIVITELER,
  "Konum Bilgileri": PropertyGroupName.KONUM_BILGILERI,
  "Çocuklar İçin": PropertyGroupName.OCUKLAR_IN,
  "Otel Özellikleri": PropertyGroupName.OTEL_ZELLIKLERI,
  "Plaj ve Havuz Özellikleri": PropertyGroupName.PLAJ_VE_HAVUZ_ZELLIKLERI,
  "Spa - Sağlık Hizmetleri": PropertyGroupName.SPA_SALK_HIZMETLERI
});

class HotelPropertyProminentCacheModel {
  HotelPropertyProminentCacheModel({
    this.hotelId,
    this.icon,
    this.description,
    this.cssClassName,
    this.hotelPropertyProminentId,
    this.descriptionDetail,
  });

  int hotelId;
  String icon;
  String description;
  String cssClassName;
  int hotelPropertyProminentId;
  String descriptionDetail;

  factory HotelPropertyProminentCacheModel.fromJson(Map<String, dynamic> json) => HotelPropertyProminentCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    icon: json["icon"],
    description: json["description"],
    cssClassName: json["css_class_name"],
    hotelPropertyProminentId: json["hotel_property_prominent_id"],
    descriptionDetail: json["description_detail"] == null ? null : json["description_detail"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "icon": icon,
    "description": description,
    "css_class_name": cssClassName,
    "hotel_property_prominent_id": hotelPropertyProminentId,
    "description_detail": descriptionDetail == null ? null : descriptionDetail,
  };
}

class HotelRoomCacheModel {
  HotelRoomCacheModel({
    this.hotelId,
    this.hotelRoomId,
    this.name,
    this.isDefault,
    this.description,
    this.hotelRoomPropertyTypeCacheModels,
    this.isNotCancelable,
    this.groupName,
    this.capacity,
    this.roomCount,
    this.adultCount,
    this.description2,
  });

  int hotelId;
  int hotelRoomId;
  String name;
  bool isDefault;
  String description;
  List<HotelRoomPropertyTypeCacheModel> hotelRoomPropertyTypeCacheModels;
  bool isNotCancelable;
  String groupName;
  int capacity;
  int roomCount;
  int adultCount;
  dynamic description2;

  factory HotelRoomCacheModel.fromJson(Map<String, dynamic> json) => HotelRoomCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    hotelRoomId: json["hotel_room_id"],
    name: json["name"],
    isDefault: json["is_default"],
    description: json["description"],
    hotelRoomPropertyTypeCacheModels: json["hotel_room_property_type_cache_models"] == null ? null : List<HotelRoomPropertyTypeCacheModel>.from(json["hotel_room_property_type_cache_models"].map((x) => HotelRoomPropertyTypeCacheModel.fromJson(x))),
    isNotCancelable: json["is_not_cancelable"],
    groupName: json["group_name"],
    capacity: json["capacity"],
    roomCount: json["room_count"],
    adultCount: json["adult_count"],
    description2: json["description2"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "hotel_room_id": hotelRoomId,
    "name": name,
    "is_default": isDefault,
    "description": description,
    "hotel_room_property_type_cache_models": hotelRoomPropertyTypeCacheModels == null ? null : List<dynamic>.from(hotelRoomPropertyTypeCacheModels.map((x) => x.toJson())),
    "is_not_cancelable": isNotCancelable,
    "group_name": groupName,
    "capacity": capacity,
    "room_count": roomCount,
    "adult_count": adultCount,
    "description2": description2,
  };
}

class HotelRoomPropertyTypeCacheModel {
  HotelRoomPropertyTypeCacheModel({
    this.hotelRoomId,
    this.hotelRoomPropertyId,
    this.hotelRoomPropertyName,
  });

  int hotelRoomId;
  int hotelRoomPropertyId;
  String hotelRoomPropertyName;

  factory HotelRoomPropertyTypeCacheModel.fromJson(Map<String, dynamic> json) => HotelRoomPropertyTypeCacheModel(
    hotelRoomId: json["hotel_room_id"],
    hotelRoomPropertyId: json["hotel_room_property_id"],
    hotelRoomPropertyName: json["hotel_room_property_name"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_room_id": hotelRoomId,
    "hotel_room_property_id": hotelRoomPropertyId,
    "hotel_room_property_name": hotelRoomPropertyName,
  };
}

class HotelVideoCacheModel {
  HotelVideoCacheModel({
    this.hotelId,
    this.vimeoVideoId,
    this.title,
    this.imagePath,
    this.imagePathBig,
    this.imagePathMedium,
    this.imagePathSmall,
  });

  int hotelId;
  String vimeoVideoId;
  String title;
  dynamic imagePath;
  String imagePathBig;
  String imagePathMedium;
  String imagePathSmall;

  factory HotelVideoCacheModel.fromJson(Map<String, dynamic> json) => HotelVideoCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    vimeoVideoId: json["vimeo_video_id"],
    title: json["title"],
    imagePath: json["image_path"],
    imagePathBig: json["image_path_big"],
    imagePathMedium: json["image_path_medium"],
    imagePathSmall: json["image_path_small"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "vimeo_video_id": vimeoVideoId,
    "title": title,
    "image_path": imagePath,
    "image_path_big": imagePathBig,
    "image_path_medium": imagePathMedium,
    "image_path_small": imagePathSmall,
  };
}

class SeoHotelCacheModel {
  SeoHotelCacheModel({
    this.hotelId,
    this.refHotelId,
    this.refHotelLink,
    this.keyword,
  });

  int hotelId;
  int refHotelId;
  String refHotelLink;
  String keyword;

  factory SeoHotelCacheModel.fromJson(Map<String, dynamic> json) => SeoHotelCacheModel(
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    refHotelId: json["ref_hotel_id"],
    refHotelLink: json["ref_hotel_link"],
    keyword: json["keyword"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId == null ? null : hotelId,
    "ref_hotel_id": refHotelId,
    "ref_hotel_link": refHotelLink,
    "keyword": keyword,
  };
}

class Picture {
  Picture({
    this.pictureId,
    this.picPath,
    this.alt,
    this.title,
    this.categoryName,
    this.description,
    this.orderNumber,
    this.videoUrl,
    this.rel,
    this.isDefault,
    this.categoryId,
    this.categoryOrderNumber,
    this.isRoom,
  });

  int pictureId;
  String picPath;
  dynamic alt;
  dynamic title;
  CategoryName categoryName;
  String description;
  int orderNumber;
  dynamic videoUrl;
  dynamic rel;
  bool isDefault;
  int categoryId;
  int categoryOrderNumber;
  bool isRoom;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
    pictureId: json["picture_id"],
    picPath: json["pic_path"],
    alt: json["alt"],
    title: json["title"],
    categoryName: categoryNameValues.map[json["category_name"]],
    description: json["description"],
    orderNumber: json["order_number"],
    videoUrl: json["video_url"],
    rel: json["rel"],
    isDefault: json["is_default"],
    categoryId: json["category_id"],
    categoryOrderNumber: json["category_order_number"],
    isRoom: json["is_room"],
  );

  Map<String, dynamic> toJson() => {
    "picture_id": pictureId,
    "pic_path": picPath,
    "alt": alt,
    "title": title,
    "category_name": categoryNameValues.reverse[categoryName],
    "description": description,
    "order_number": orderNumber,
    "video_url": videoUrl,
    "rel": rel,
    "is_default": isDefault,
    "category_id": categoryId,
    "category_order_number": categoryOrderNumber,
    "is_room": isRoom,
  };
}

class PropertyList {
  PropertyList({
    this.hotelPropertyGroupId,
    this.hotelPropertyId,
    this.hotelId,
    this.isFromDate,
    this.isThereAFee,
    this.value,
    this.propertyName,
    this.isNeededValue,
    this.unitCode,
    this.propertyGroupName,
    this.validDays,
    this.description,
  });

  int hotelPropertyGroupId;
  int hotelPropertyId;
  int hotelId;
  bool isFromDate;
  bool isThereAFee;
  int value;
  String propertyName;
  bool isNeededValue;
  UnitCode unitCode;
  PropertyGroupName propertyGroupName;
  dynamic validDays;
  String description;

  factory PropertyList.fromJson(Map<String, dynamic> json) => PropertyList(
    hotelPropertyGroupId: json["hotel_property_group_id"],
    hotelPropertyId: json["hotel_property_id"],
    hotelId: json["hotel_id"] == null ? null : json["hotel_id"],
    isFromDate: json["is_from_date"],
    isThereAFee: json["is_there_a_fee"],
    value: json["value"] == null ? null : json["value"],
    propertyName: json["property_name"],
    isNeededValue: json["is_needed_value"],
    unitCode: unitCodeValues.map[json["unit_code"]],
    propertyGroupName: propertyGroupNameValues.map[json["property_group_name"]],
    validDays: json["valid_days"],
    description: json["description"] == null ? null : json["description"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_property_group_id": hotelPropertyGroupId,
    "hotel_property_id": hotelPropertyId,
    "hotel_id": hotelId == null ? null : hotelId,
    "is_from_date": isFromDate,
    "is_there_a_fee": isThereAFee,
    "value": value == null ? null : value,
    "property_name": propertyName,
    "is_needed_value": isNeededValue,
    "unit_code": unitCodeValues.reverse[unitCode],
    "property_group_name": propertyGroupNameValues.reverse[propertyGroupName],
    "valid_days": validDays,
    "description": description == null ? null : description,
  };
}

enum UnitCode { KM, M2, EMPTY, M, AD }

final unitCodeValues = EnumValues({
  "AD": UnitCode.AD,
  "": UnitCode.EMPTY,
  "km": UnitCode.KM,
  "m": UnitCode.M,
  "M2": UnitCode.M2
});

class VideoList {
  VideoList({
    this.createdBy,
    this.changedBy,
    this.createdDate,
    this.changedDate,
  });

  dynamic createdBy;
  dynamic changedBy;
  dynamic createdDate;
  dynamic changedDate;

  factory VideoList.fromJson(Map<String, dynamic> json) => VideoList(
    createdBy: json["created_by"],
    changedBy: json["changed_by"],
    createdDate: json["created_date"],
    changedDate: json["changed_date"],
  );

  Map<String, dynamic> toJson() => {
    "created_by": createdBy,
    "changed_by": changedBy,
    "created_date": createdDate,
    "changed_date": changedDate,
  };
}

class SaleCampaign {
  SaleCampaign({
    this.campaignId,
    this.campaignName,
    this.campaignToolTipDescription,
    this.campaignDescription,
    this.campaignMiddleDesc,
    this.campaignIconPath,
    this.campaignImagePath,
    this.campaignLink,
    this.campaignType,
    this.value,
    this.calcTypeId,
    this.campaignLocation,
    this.isSaleCampaign,
    this.className,
    this.stayDay,
    this.paidDay,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
  });

  int campaignId;
  String campaignName;
  dynamic campaignToolTipDescription;
  String campaignDescription;
  String campaignMiddleDesc;
  dynamic campaignIconPath;
  dynamic campaignImagePath;
  String campaignLink;
  String campaignType;
  dynamic value;
  dynamic calcTypeId;
  String campaignLocation;
  bool isSaleCampaign;
  String className;
  int stayDay;
  int paidDay;
  String image1;
  String image2;
  String image3;
  String image4;

  factory SaleCampaign.fromJson(Map<String, dynamic> json) => SaleCampaign(
    campaignId: json["campaign_id"],
    campaignName: json["campaign_name"],
    campaignToolTipDescription: json["campaign_tool_tip_description"],
    campaignDescription: json["campaign_description"],
    campaignMiddleDesc: json["campaign_middle_desc"],
    campaignIconPath: json["campaign_icon_path"],
    campaignImagePath: json["campaign_image_path"],
    campaignLink: json["campaign_link"],
    campaignType: json["campaign_type"],
    value: json["value"],
    calcTypeId: json["calc_type_id"],
    campaignLocation: json["campaign_location"],
    isSaleCampaign: json["is_sale_campaign"],
    className: json["class_name"],
    stayDay: json["stay_day"],
    paidDay: json["paid_day"],
    image1: json["image1"],
    image2: json["image2"],
    image3: json["image3"],
    image4: json["image4"],
  );

  Map<String, dynamic> toJson() => {
    "campaign_id": campaignId,
    "campaign_name": campaignName,
    "campaign_tool_tip_description": campaignToolTipDescription,
    "campaign_description": campaignDescription,
    "campaign_middle_desc": campaignMiddleDesc,
    "campaign_icon_path": campaignIconPath,
    "campaign_image_path": campaignImagePath,
    "campaign_link": campaignLink,
    "campaign_type": campaignType,
    "value": value,
    "calc_type_id": calcTypeId,
    "campaign_location": campaignLocation,
    "is_sale_campaign": isSaleCampaign,
    "class_name": className,
    "stay_day": stayDay,
    "paid_day": paidDay,
    "image1": image1,
    "image2": image2,
    "image3": image3,
    "image4": image4,
  };
}

class Status {
  Status({
    this.success,
    this.requestId,
    this.messages,
  });

  bool success;
  String requestId;
  List<Message> messages;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    success: json["success"],
    requestId: json["request_id"],
    messages: json["messages"] == null ? null : List<Message>.from(json["messages"].map((x) => Message.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "request_id": requestId,
    "messages": messages == null ? null : List<dynamic>.from(messages.map((x) => x.toJson())),
  };
}

class Message {
  Message({
    this.id,
    this.code,
    this.message,
    this.messageType,
  });

  int id;
  String code;
  String message;
  int messageType;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    id: json["id"],
    code: json["code"],
    message: json["message"],
    messageType: json["message_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "message": message,
    "message_type": messageType,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
