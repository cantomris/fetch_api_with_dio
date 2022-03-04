// To parse this JSON data, do
//
//     final hotelListSearchModel = hotelListSearchModelFromJson(jsonString);

import 'dart:convert';

HotelListSearchModel hotelListSearchModelFromJson(String str) => HotelListSearchModel.fromJson(json.decode(str));

String hotelListSearchModelToJson(HotelListSearchModel data) => json.encode(data.toJson());

class HotelListSearchModel {
  HotelListSearchModel({
    this.status,
    this.data,
  });

  Status status;
  Data data;

  factory HotelListSearchModel.fromJson(Map<String, dynamic> json) => HotelListSearchModel(
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
    this.tabId,
    this.listView,
    this.price,
    this.newPrice,
    this.concept,
    this.categories,
    this.discountKeys,
    this.lokasyon,
    this.errorMesaj,
    this.createDate,
    this.prominentFilter,
    this.hotelSearchResult,
    this.hotelListCacheModels,
    this.eventName,
    this.sortingName,
    this.sortingType,
    this.scrollComplete,
    this.tabTitle,
    this.mapsSearch,
    this.link,
    this.searchParameters,
    this.musaitType,
    this.isSingleBay,
    this.categoryId,
    this.locationId,
    this.saleCampaigns,
  });

  String tabId;
  ListView listView;
  Price price;
  Price newPrice;
  List<Concept> concept;
  List<Category> categories;
  List<DiscountKey> discountKeys;
  List<Lokasyon> lokasyon;
  dynamic errorMesaj;
  DateTime createDate;
  List<ProminentFilter> prominentFilter;
  dynamic hotelSearchResult;
  List<HotelListCacheModel> hotelListCacheModels;
  String eventName;
  dynamic sortingName;
  dynamic sortingType;
  bool scrollComplete;
  dynamic tabTitle;
  dynamic mapsSearch;
  String link;
  SearchParameters searchParameters;
  int musaitType;
  bool isSingleBay;
  int categoryId;
  int locationId;
  List<SaleCampaign> saleCampaigns;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    tabId: json["tab_id"],
    listView: ListView.fromJson(json["list_view"]),
    price: Price.fromJson(json["price"]),
    newPrice: Price.fromJson(json["new_price"]),
    concept: List<Concept>.from(json["concept"].map((x) => Concept.fromJson(x))),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    discountKeys: List<DiscountKey>.from(json["discount_keys"].map((x) => DiscountKey.fromJson(x))),
    lokasyon: List<Lokasyon>.from(json["lokasyon"].map((x) => Lokasyon.fromJson(x))),
    errorMesaj: json["error_mesaj"],
    createDate: DateTime.parse(json["create_date"]),
    prominentFilter: List<ProminentFilter>.from(json["prominent_filter"].map((x) => ProminentFilter.fromJson(x))),
    hotelSearchResult: json["hotel_search_result"],
    hotelListCacheModels: List<HotelListCacheModel>.from(json["hotel_list_cache_models"].map((x) => HotelListCacheModel.fromJson(x))),
    eventName: json["event_name"],
    sortingName: json["sorting_name"],
    sortingType: json["sorting_type"],
    scrollComplete: json["scroll_complete"],
    tabTitle: json["tab_title"],
    mapsSearch: json["maps_search"],
    link: json["link"],
    searchParameters: SearchParameters.fromJson(json["search_parameters"]),
    musaitType: json["musait_type"],
    isSingleBay: json["is_single_bay"],
    categoryId: json["category_id"],
    locationId: json["location_id"],
    saleCampaigns: List<SaleCampaign>.from(json["sale_campaigns"].map((x) => SaleCampaign.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "tab_id": tabId,
    "list_view": listView.toJson(),
    "price": price.toJson(),
    "new_price": newPrice.toJson(),
    "concept": List<dynamic>.from(concept.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "discount_keys": List<dynamic>.from(discountKeys.map((x) => x.toJson())),
    "lokasyon": List<dynamic>.from(lokasyon.map((x) => x.toJson())),
    "error_mesaj": errorMesaj,
    "create_date": createDate.toIso8601String(),
    "prominent_filter": List<dynamic>.from(prominentFilter.map((x) => x.toJson())),
    "hotel_search_result": hotelSearchResult,
    "hotel_list_cache_models": List<dynamic>.from(hotelListCacheModels.map((x) => x.toJson())),
    "event_name": eventName,
    "sorting_name": sortingName,
    "sorting_type": sortingType,
    "scroll_complete": scrollComplete,
    "tab_title": tabTitle,
    "maps_search": mapsSearch,
    "link": link,
    "search_parameters": searchParameters.toJson(),
    "musait_type": musaitType,
    "is_single_bay": isSingleBay,
    "category_id": categoryId,
    "location_id": locationId,
    "sale_campaigns": List<dynamic>.from(saleCampaigns.map((x) => x.toJson())),
  };
}

class Category {
  Category({
    this.hotelName,
    this.select,
    this.id,
    this.children,
  });

  String hotelName;
  bool select;
  String id;
  List<Category> children;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    hotelName: json["hotel_name"],
    select: json["select"],
    id: json["id"],
    children: json["children"] == null ? null : List<Category>.from(json["children"].map((x) => Category.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "hotel_name": hotelName,
    "select": select,
    "id": id,
    "children": children == null ? null : List<dynamic>.from(children.map((x) => x.toJson())),
  };
}

class Concept {
  Concept({
    this.name,
    this.status,
    this.id,
    this.hotelCount,
  });

  String name;
  bool status;
  String id;
  int hotelCount;

  factory Concept.fromJson(Map<String, dynamic> json) => Concept(
    name: json["name"],
    status: json["status"],
    id: json["id"],
    hotelCount: json["hotel_count"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "status": status,
    "id": id,
    "hotel_count": hotelCount,
  };
}

class DiscountKey {
  DiscountKey({
    this.id,
    this.name,
    this.status,
  });

  int id;
  String name;
  bool status;

  factory DiscountKey.fromJson(Map<String, dynamic> json) => DiscountKey(
    id: json["id"],
    name: json["name"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "status": status,
  };
}

class HotelListCacheModel {
  HotelListCacheModel({
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
  int calcTypeId;
  int priority;
  bool isSingleBay;
  double avgRate;
  String categorySliderPath;
  dynamic notDiscountedPrice;
  List<int> hotelCategoryIds;
  List<HotelPropertyProminent> hotelPropertyProminents;
  DateTime hotelOpenDate;
  DateTime hotelCloseDate;
  bool isHotelOpenInYear;
  HotelOpenText hotelOpenText;
  ChildInfo childInfo;
  int childAge1Min;
  int childAge1Max;
  int childAge2Min;
  int childAge2Max;
  double discountRate;
  double priceInTl;
  int unitId;
  double price;
  bool isContract;
  int hotelId;
  int productId;
  String name;
  String link;
  String imageUrl;
  String alt;
  String title;
  int marketingId;
  bool isAdultHotel;
  int channelId;
  dynamic priceDate;
  bool isRecommended;
  String hotelLocation;
  int hotelLocationId;
  String latitude;
  String longitude;
  String conceptName;
  int concepTypeId;
  int priceGroupId;
  int minimumAcceptedAge;
  bool isVilla;
  List<HotelCampaign> hotelCampaigns;
  dynamic hotelValidCampaigns;
  List<SaleCampaign> saleCampaigns;
  List<Insurance> insurances;
  List<dynamic> productActivities;
  bool hasEbInsurance;
  String tegSoftCampaignId;

  factory HotelListCacheModel.fromJson(Map<String, dynamic> json) => HotelListCacheModel(
    id: json["id"],
    calcTypeId: json["calc_type_id"],
    priority: json["priority"],
    isSingleBay: json["is_single_bay"],
    avgRate: json["avg_rate"] == null ? null : json["avg_rate"].toDouble(),
    categorySliderPath: json["category_slider_path"],
    notDiscountedPrice: json["not_discounted_price"],
    hotelCategoryIds: List<int>.from(json["hotel_category_ids"].map((x) => x)),
    hotelPropertyProminents: List<HotelPropertyProminent>.from(json["hotel_property_prominents"].map((x) => HotelPropertyProminent.fromJson(x))),
    hotelOpenDate: json["hotel_open_date"] == null ? null : DateTime.parse(json["hotel_open_date"]),
    hotelCloseDate: json["hotel_close_date"] == null ? null : DateTime.parse(json["hotel_close_date"]),
    isHotelOpenInYear: json["is_hotel_open_in_year"],
    hotelOpenText: hotelOpenTextValues.map[json["hotel_open_text"]],
    childInfo: childInfoValues.map[json["child_info"]],
    childAge1Min: json["child_age1_min"] == null ? null : json["child_age1_min"],
    childAge1Max: json["child_age1_max"] == null ? null : json["child_age1_max"],
    childAge2Min: json["child_age2_min"] == null ? null : json["child_age2_min"],
    childAge2Max: json["child_age2_max"] == null ? null : json["child_age2_max"],
    discountRate: json["discount_rate"],
    priceInTl: json["price_in_tl"],
    unitId: json["unit_id"],
    price: json["price"],
    isContract: json["is_contract"],
    hotelId: json["hotel_id"],
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
    minimumAcceptedAge: json["minimum_accepted_age"] == null ? null : json["minimum_accepted_age"],
    isVilla: json["is_villa"],
    hotelCampaigns: List<HotelCampaign>.from(json["hotel_campaigns"].map((x) => HotelCampaign.fromJson(x))),
    hotelValidCampaigns: json["hotel_valid_campaigns"],
    saleCampaigns: List<SaleCampaign>.from(json["sale_campaigns"].map((x) => SaleCampaign.fromJson(x))),
    insurances: json["insurances"] == null ? null : List<Insurance>.from(json["insurances"].map((x) => Insurance.fromJson(x))),
    productActivities: List<dynamic>.from(json["product_activities"].map((x) => x)),
    hasEbInsurance: json["has_eb_insurance"],
    tegSoftCampaignId: json["teg_soft_campaign_id"] == null ? null : json["teg_soft_campaign_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "calc_type_id": calcTypeId,
    "priority": priority,
    "is_single_bay": isSingleBay,
    "avg_rate": avgRate == null ? null : avgRate,
    "category_slider_path": categorySliderPath,
    "not_discounted_price": notDiscountedPrice,
    "hotel_category_ids": List<dynamic>.from(hotelCategoryIds.map((x) => x)),
    "hotel_property_prominents": List<dynamic>.from(hotelPropertyProminents.map((x) => x.toJson())),
    "hotel_open_date": hotelOpenDate == null ? null : hotelOpenDate.toIso8601String(),
    "hotel_close_date": hotelCloseDate == null ? null : hotelCloseDate.toIso8601String(),
    "is_hotel_open_in_year": isHotelOpenInYear,
    "hotel_open_text": hotelOpenTextValues.reverse[hotelOpenText],
    "child_info": childInfoValues.reverse[childInfo],
    "child_age1_min": childAge1Min == null ? null : childAge1Min,
    "child_age1_max": childAge1Max == null ? null : childAge1Max,
    "child_age2_min": childAge2Min == null ? null : childAge2Min,
    "child_age2_max": childAge2Max == null ? null : childAge2Max,
    "discount_rate": discountRate,
    "price_in_tl": priceInTl,
    "unit_id": unitId,
    "price": price,
    "is_contract": isContract,
    "hotel_id": hotelId,
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
    "minimum_accepted_age": minimumAcceptedAge == null ? null : minimumAcceptedAge,
    "is_villa": isVilla,
    "hotel_campaigns": List<dynamic>.from(hotelCampaigns.map((x) => x.toJson())),
    "hotel_valid_campaigns": hotelValidCampaigns,
    "sale_campaigns": List<dynamic>.from(saleCampaigns.map((x) => x.toJson())),
    "insurances": insurances == null ? null : List<dynamic>.from(insurances.map((x) => x.toJson())),
    "product_activities": List<dynamic>.from(productActivities.map((x) => x)),
    "has_eb_insurance": hasEbInsurance,
    "teg_soft_campaign_id": tegSoftCampaignId == null ? null : tegSoftCampaignId,
  };
}

enum ChildInfo { CRETSIZ_OCUK_YALAR_DNEMSEL_DEIKENLIK_GSTEREBILMEKTEDIR, EMPTY }

final childInfoValues = EnumValues({
  "Ücretsiz çocuk yaşları dönemsel değişkenlik gösterebilmektedir.": ChildInfo.CRETSIZ_OCUK_YALAR_DNEMSEL_DEIKENLIK_GSTEREBILMEKTEDIR,
  "": ChildInfo.EMPTY
});

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
  ClassName className;
  IconClass iconClass;
  int count;
  int discountTypeCategoryEnum;
  int discountTypeCategory;
  bool isExtraDiscount;
  List<CampaignsOfType> campaignsOfType;

  factory HotelCampaign.fromJson(Map<String, dynamic> json) => HotelCampaign(
    groupTitle: json["group_title"],
    className: classNameValues.map[json["class_name"]],
    iconClass: iconClassValues.map[json["icon_class"]],
    count: json["count"],
    discountTypeCategoryEnum: json["discount_type_category_enum"],
    discountTypeCategory: json["discount_type_category"],
    isExtraDiscount: json["is_extra_discount"],
    campaignsOfType: List<CampaignsOfType>.from(json["campaigns_of_type"].map((x) => CampaignsOfType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "group_title": groupTitle,
    "class_name": classNameValues.reverse[className],
    "icon_class": iconClassValues.reverse[iconClass],
    "count": count,
    "discount_type_category_enum": discountTypeCategoryEnum,
    "discount_type_category": discountTypeCategory,
    "is_extra_discount": isExtraDiscount,
    "campaigns_of_type": List<dynamic>.from(campaignsOfType.map((x) => x.toJson())),
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
  double saleValue;
  int stayDay;
  int paidDay;
  HotelCampaignName hotelCampaignName;
  bool isExtraDiscount;
  List<Campaigin> campaigins;
  String hotelCampaignDescription;
  int discountKeyId;

  factory CampaignsOfType.fromJson(Map<String, dynamic> json) => CampaignsOfType(
    hotelCampaignId: json["hotel_campaign_id"],
    saleValue: json["sale_value"].toDouble(),
    stayDay: json["stay_day"],
    paidDay: json["paid_day"],
    hotelCampaignName: hotelCampaignNameValues.map[json["hotel_campaign_name"]],
    isExtraDiscount: json["is_extra_discount"],
    campaigins: List<Campaigin>.from(json["campaigins"].map((x) => Campaigin.fromJson(x))),
    hotelCampaignDescription: json["hotel_campaign_description"],
    discountKeyId: json["discount_key_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_campaign_id": hotelCampaignId,
    "sale_value": saleValue,
    "stay_day": stayDay,
    "paid_day": paidDay,
    "hotel_campaign_name": hotelCampaignNameValues.reverse[hotelCampaignName],
    "is_extra_discount": isExtraDiscount,
    "campaigins": List<dynamic>.from(campaigins.map((x) => x.toJson())),
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

enum HotelCampaignName { YAKN_DNEM_KONAKLAMA_NDIRIMI, ERKEN_REZERVASYON_NDIRIMI, UZUN_KONAKLAMA_NDIRIM, SEZON_NDIRIMI, ERKEN_REZRVASYON_NDIRIMI }

final hotelCampaignNameValues = EnumValues({
  "Erken Rezervasyon İndirimi": HotelCampaignName.ERKEN_REZERVASYON_NDIRIMI,
  "Erken Rezrvasyon İndirimi": HotelCampaignName.ERKEN_REZRVASYON_NDIRIMI,
  "Sezon İndirimi": HotelCampaignName.SEZON_NDIRIMI,
  "Uzun Konaklama İndirim": HotelCampaignName.UZUN_KONAKLAMA_NDIRIM,
  "Yakın Dönem Konaklama İndirimi": HotelCampaignName.YAKN_DNEM_KONAKLAMA_NDIRIMI
});

enum ClassName { EMPTY, EBINDIRIM }

final classNameValues = EnumValues({
  "ebindirim": ClassName.EBINDIRIM,
  "": ClassName.EMPTY
});

enum IconClass { SPRITE_SPRITE_DISCOUNT }

final iconClassValues = EnumValues({
  "sprite sprite-discount": IconClass.SPRITE_SPRITE_DISCOUNT
});

enum HotelOpenText { THE_12_AY_AK, HOTEL_OPEN_TEXT_12_AY_AK, EMPTY }

final hotelOpenTextValues = EnumValues({
  "": HotelOpenText.EMPTY,
  "12 ay açık": HotelOpenText.HOTEL_OPEN_TEXT_12_AY_AK,
  "12 Ay Açık": HotelOpenText.THE_12_AY_AK
});

class HotelPropertyProminent {
  HotelPropertyProminent({
    this.hotelId,
    this.icon,
    this.description,
    this.cssClassName,
    this.descriptionDetail,
    this.hotelPropertyProminentId,
  });

  int hotelId;
  String icon;
  String description;
  String cssClassName;
  String descriptionDetail;
  int hotelPropertyProminentId;

  factory HotelPropertyProminent.fromJson(Map<String, dynamic> json) => HotelPropertyProminent(
    hotelId: json["hotel_id"],
    icon: json["icon"] == null ? null : json["icon"],
    description: json["description"],
    cssClassName: json["css_class_name"] == null ? null : json["css_class_name"],
    descriptionDetail: json["description_detail"] == null ? null : json["description_detail"],
    hotelPropertyProminentId: json["hotel_property_prominent_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId,
    "icon": icon == null ? null : icon,
    "description": description,
    "css_class_name": cssClassName == null ? null : cssClassName,
    "description_detail": descriptionDetail == null ? null : descriptionDetail,
    "hotel_property_prominent_id": hotelPropertyProminentId,
  };
}

class Insurance {
  Insurance({
    this.insuranceId,
    this.title,
    this.description,
  });

  int insuranceId;
  Title title;
  Description description;

  factory Insurance.fromJson(Map<String, dynamic> json) => Insurance(
    insuranceId: json["insurance_id"],
    title: titleValues.map[json["title"]],
    description: descriptionValues.map[json["description"]],
  );

  Map<String, dynamic> toJson() => {
    "insurance_id": insuranceId,
    "title": titleValues.reverse[title],
    "description": descriptionValues.reverse[description],
  };
}

enum Description { THE_72_SAATE_KADAR_REZERVASYON_PTAL_HAKK }

final descriptionValues = EnumValues({
  "72 Saate Kadar Rezervasyon İptal Hakkı": Description.THE_72_SAATE_KADAR_REZERVASYON_PTAL_HAKK
});

enum Title { PTAL_HAKK }

final titleValues = EnumValues({
  "İptal Hakkı": Title.PTAL_HAKK
});

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
  CampaignName campaignName;
  dynamic campaignToolTipDescription;
  String campaignDescription;
  String campaignMiddleDesc;
  dynamic campaignIconPath;
  dynamic campaignImagePath;
  CampaignLink campaignLink;
  CampaignType campaignType;
  dynamic value;
  dynamic calcTypeId;
  String campaignLocation;
  bool isSaleCampaign;
  CampaignType className;
  int stayDay;
  int paidDay;
  Image1 image1;
  Image2 image2;
  Image3 image3;
  Image4 image4;

  factory SaleCampaign.fromJson(Map<String, dynamic> json) => SaleCampaign(
    campaignId: json["campaign_id"],
    campaignName: campaignNameValues.map[json["campaign_name"]],
    campaignToolTipDescription: json["campaign_tool_tip_description"],
    campaignDescription: json["campaign_description"],
    campaignMiddleDesc: json["campaign_middle_desc"],
    campaignIconPath: json["campaign_icon_path"],
    campaignImagePath: json["campaign_image_path"],
    campaignLink: campaignLinkValues.map[json["campaign_link"]],
    campaignType: campaignTypeValues.map[json["campaign_type"]],
    value: json["value"],
    calcTypeId: json["calc_type_id"],
    campaignLocation: json["campaign_location"],
    isSaleCampaign: json["is_sale_campaign"],
    className: campaignTypeValues.map[json["class_name"]],
    stayDay: json["stay_day"],
    paidDay: json["paid_day"],
    image1: image1Values.map[json["image1"]],
    image2: image2Values.map[json["image2"]],
    image3: image3Values.map[json["image3"]],
    image4: image4Values.map[json["image4"]],
  );

  Map<String, dynamic> toJson() => {
    "campaign_id": campaignId,
    "campaign_name": campaignNameValues.reverse[campaignName],
    "campaign_tool_tip_description": campaignToolTipDescription,
    "campaign_description": campaignDescription,
    "campaign_middle_desc": campaignMiddleDesc,
    "campaign_icon_path": campaignIconPath,
    "campaign_image_path": campaignImagePath,
    "campaign_link": campaignLinkValues.reverse[campaignLink],
    "campaign_type": campaignTypeValues.reverse[campaignType],
    "value": value,
    "calc_type_id": calcTypeId,
    "campaign_location": campaignLocation,
    "is_sale_campaign": isSaleCampaign,
    "class_name": campaignTypeValues.reverse[className],
    "stay_day": stayDay,
    "paid_day": paidDay,
    "image1": image1Values.reverse[image1],
    "image2": image2Values.reverse[image2],
    "image3": image3Values.reverse[image3],
    "image4": image4Values.reverse[image4],
  };
}

enum CampaignLink { PARAF_ILE_GEZINOMI_DE_400_TL_PARAFPARA, ERKEN_AL_GEC_ODE, KKTC_YE_GIRISLER_HAKKINDA_ONEMLI_BILGILENDIRME, KKTCYE_GIRISLERDE_YENI_TIP_KIMLIK_ZORUNLULUGU, KIBRISTA_UCRETSIZ_CIFT_YON_TRANSFER_KAMPANYASI }

final campaignLinkValues = EnumValues({
  "erken-al-gec-ode": CampaignLink.ERKEN_AL_GEC_ODE,
  "kibrista-ucretsiz-cift-yon-transfer-kampanyasi": CampaignLink.KIBRISTA_UCRETSIZ_CIFT_YON_TRANSFER_KAMPANYASI,
  "kktcye-girislerde-yeni-tip-kimlik-zorunlulugu": CampaignLink.KKTCYE_GIRISLERDE_YENI_TIP_KIMLIK_ZORUNLULUGU,
  "kktc’ye-girisler-hakkinda-onemli-bilgilendirme": CampaignLink.KKTC_YE_GIRISLER_HAKKINDA_ONEMLI_BILGILENDIRME,
  "paraf-ile-gezinomi’de-400-tl-parafpara": CampaignLink.PARAF_ILE_GEZINOMI_DE_400_TL_PARAFPARA
});

enum CampaignName { PARAF_ILE_GEZINOMI_DE_400_TL_PARAF_PARA, ERKEN_AL_GE_DE, KKTC_YE_GIRILER_HAKKNDA_NEMLI_BILGILENDIRME, KKTC_YE_GIRILERDE_YENI_TIP_KIMLIK_ZORUNLULUU, KBRS_TA_CRETSIZ_IFT_YN_TRANSFER_KAMPANYAS }

final campaignNameValues = EnumValues({
  "Erken Al, Geç Öde!": CampaignName.ERKEN_AL_GE_DE,
  "Kıbrıs'ta Ücretsiz Çift Yön Transfer Kampanyası": CampaignName.KBRS_TA_CRETSIZ_IFT_YN_TRANSFER_KAMPANYAS,
  "KKTC'ye Girişlerde Yeni Tip Kimlik Zorunluluğu ": CampaignName.KKTC_YE_GIRILERDE_YENI_TIP_KIMLIK_ZORUNLULUU,
  "KKTC’ye Girişler Hakkında Önemli Bilgilendirme!": CampaignName.KKTC_YE_GIRILER_HAKKNDA_NEMLI_BILGILENDIRME,
  "Paraf ile Gezinomi’de 400 TL ParafPara!": CampaignName.PARAF_ILE_GEZINOMI_DE_400_TL_PARAF_PARA
});

enum CampaignType { GENEL, EMPTY }

final campaignTypeValues = EnumValues({
  "": CampaignType.EMPTY,
  "Genel": CampaignType.GENEL
});

enum Image1 { SAL1_3032022100400_JPG, THE_115022022092246_JPG, THE_115022022092156_JPG, THE_114092021111423_JPG, THE_114092021111026_JPG, SAL1_23022022093315_JPG }

final image1Values = EnumValues({
  "sal1-23.02.2022093315.jpg": Image1.SAL1_23022022093315_JPG,
  "sal1-3.03.2022100400.jpg": Image1.SAL1_3032022100400_JPG,
  "1-14.09.2021111026.jpg": Image1.THE_114092021111026_JPG,
  "1-14.09.2021111423.jpg": Image1.THE_114092021111423_JPG,
  "1-15.02.2022092156.jpg": Image1.THE_115022022092156_JPG,
  "1-15.02.2022092246.jpg": Image1.THE_115022022092246_JPG
});

enum Image2 { SAL2_3032022100401_JPG, THE_215022022092247_JPG, THE_215022022092158_JPG, THE_214092021111425_JPG, THE_214092021111028_JPG, SAL2_23022022093316_JPG }

final image2Values = EnumValues({
  "sal2-23.02.2022093316.jpg": Image2.SAL2_23022022093316_JPG,
  "-sal2-3.03.2022100401.jpg": Image2.SAL2_3032022100401_JPG,
  "2-14.09.2021111028.jpg": Image2.THE_214092021111028_JPG,
  "2-14.09.2021111425.jpg": Image2.THE_214092021111425_JPG,
  "2-15.02.2022092158.jpg": Image2.THE_215022022092158_JPG,
  "2-15.02.2022092247.jpg": Image2.THE_215022022092247_JPG
});

enum Image3 { SAL4_3032022100402_JPG, ERKEN_AL_GEC_ODE_413122021122011_JPG, THE_428092021173243_JPG, THE_428092021173214_JPG, SAL4_23022022093319_JPG }

final image3Values = EnumValues({
  "erken-al-gec-ode-4-13.12.2021122011.jpg": Image3.ERKEN_AL_GEC_ODE_413122021122011_JPG,
  "sal4-23.02.2022093319.jpg": Image3.SAL4_23022022093319_JPG,
  "sal4-3.03.2022100402.jpg": Image3.SAL4_3032022100402_JPG,
  "4-28.09.2021173214.jpg": Image3.THE_428092021173214_JPG,
  "4-28.09.2021173243.jpg": Image3.THE_428092021173243_JPG
});

enum Image4 { SAL3_3032022100402_JPG, ERKEN_AL_GEC_ODE_313122021122011_JPG, THE_314092021111425_JPG, THE_314092021111028_JPG, SAL3_23022022093318_JPG }

final image4Values = EnumValues({
  "erken-al-gec-ode-3-13.12.2021122011.jpg": Image4.ERKEN_AL_GEC_ODE_313122021122011_JPG,
  "sal3-23.02.2022093318.jpg": Image4.SAL3_23022022093318_JPG,
  "sal3-3.03.2022100402.jpg": Image4.SAL3_3032022100402_JPG,
  "3-14.09.2021111028.jpg": Image4.THE_314092021111028_JPG,
  "3-14.09.2021111425.jpg": Image4.THE_314092021111425_JPG
});

class ListView {
  ListView({
    this.listCount,
    this.pageCount,
    this.activePage,
    this.totalHotelCount,
  });

  int listCount;
  int pageCount;
  int activePage;
  int totalHotelCount;

  factory ListView.fromJson(Map<String, dynamic> json) => ListView(
    listCount: json["list_count"],
    pageCount: json["page_count"],
    activePage: json["active_page"],
    totalHotelCount: json["total_hotel_count"],
  );

  Map<String, dynamic> toJson() => {
    "list_count": listCount,
    "page_count": pageCount,
    "active_page": activePage,
    "total_hotel_count": totalHotelCount,
  };
}

class Lokasyon {
  Lokasyon({
    this.yerAd,
    this.hotelCount,
    this.select,
    this.key,
    this.id,
    this.tur,
    this.children,
  });

  String yerAd;
  int hotelCount;
  bool select;
  String key;
  String id;
  dynamic tur;
  List<Lokasyon> children;

  factory Lokasyon.fromJson(Map<String, dynamic> json) => Lokasyon(
    yerAd: json["yer_ad"],
    hotelCount: json["hotel_count"],
    select: json["select"],
    key: json["key"],
    id: json["id"],
    tur: json["tur"],
    children: json["children"] == null ? null : List<Lokasyon>.from(json["children"].map((x) => Lokasyon.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "yer_ad": yerAd,
    "hotel_count": hotelCount,
    "select": select,
    "key": key,
    "id": id,
    "tur": tur,
    "children": children == null ? null : List<dynamic>.from(children.map((x) => x.toJson())),
  };
}

class Price {
  Price({
    this.min,
    this.max,
  });

  double min;
  double max;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
    min: json["min"],
    max: json["max"],
  );

  Map<String, dynamic> toJson() => {
    "min": min,
    "max": max,
  };
}

class ProminentFilter {
  ProminentFilter({
    this.id,
    this.icon,
    this.description,
    this.descriptionDetail,
    this.cssClassName,
    this.isSelected,
  });

  int id;
  String icon;
  String description;
  dynamic descriptionDetail;
  String cssClassName;
  bool isSelected;

  factory ProminentFilter.fromJson(Map<String, dynamic> json) => ProminentFilter(
    id: json["id"],
    icon: json["icon"] == null ? null : json["icon"],
    description: json["description"],
    descriptionDetail: json["description_detail"],
    cssClassName: json["css_class_name"] == null ? null : json["css_class_name"],
    isSelected: json["is_selected"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "icon": icon == null ? null : icon,
    "description": description,
    "description_detail": descriptionDetail,
    "css_class_name": cssClassName == null ? null : cssClassName,
    "is_selected": isSelected,
  };
}

class SearchParameters {
  SearchParameters({
    this.tabIdStr,
    this.tabId,
    this.checkIn,
    this.checkOut,
    this.name,
    this.uygunluk,
    this.rooms,
    this.hotelSearchType,
    this.isDefault,
    this.hepsiBay,
    this.criteriaId,
    this.type,
    this.dayCount,
    this.locationId,
    this.cacheString,
    this.requestGuid,
    this.checkInText,
    this.checkOutText,
    this.country,
    this.city,
    this.location,
    this.age,
    this.pHour,
    this.dHour,
    this.pickUpLocationId,
    this.dropOffLocationId,
  });

  String tabIdStr;
  dynamic tabId;
  dynamic checkIn;
  dynamic checkOut;
  dynamic name;
  dynamic uygunluk;
  dynamic rooms;
  int hotelSearchType;
  bool isDefault;
  dynamic hepsiBay;
  dynamic criteriaId;
  dynamic type;
  dynamic dayCount;
  dynamic locationId;
  dynamic cacheString;
  dynamic requestGuid;
  String checkInText;
  String checkOutText;
  dynamic country;
  dynamic city;
  dynamic location;
  dynamic age;
  dynamic pHour;
  dynamic dHour;
  dynamic pickUpLocationId;
  dynamic dropOffLocationId;

  factory SearchParameters.fromJson(Map<String, dynamic> json) => SearchParameters(
    tabIdStr: json["tab_id_str"],
    tabId: json["tab_id"],
    checkIn: json["check_in"],
    checkOut: json["check_out"],
    name: json["name"],
    uygunluk: json["uygunluk"],
    rooms: json["rooms"],
    hotelSearchType: json["hotel_search_type"],
    isDefault: json["is_default"],
    hepsiBay: json["hepsi_bay"],
    criteriaId: json["criteria_id"],
    type: json["type"],
    dayCount: json["day_count"],
    locationId: json["location_id"],
    cacheString: json["cache_string"],
    requestGuid: json["request_guid"],
    checkInText: json["check_in_text"],
    checkOutText: json["check_out_text"],
    country: json["country"],
    city: json["city"],
    location: json["location"],
    age: json["age"],
    pHour: json["p_hour"],
    dHour: json["d_hour"],
    pickUpLocationId: json["pick_up_location_id"],
    dropOffLocationId: json["drop_off_location_id"],
  );

  Map<String, dynamic> toJson() => {
    "tab_id_str": tabIdStr,
    "tab_id": tabId,
    "check_in": checkIn,
    "check_out": checkOut,
    "name": name,
    "uygunluk": uygunluk,
    "rooms": rooms,
    "hotel_search_type": hotelSearchType,
    "is_default": isDefault,
    "hepsi_bay": hepsiBay,
    "criteria_id": criteriaId,
    "type": type,
    "day_count": dayCount,
    "location_id": locationId,
    "cache_string": cacheString,
    "request_guid": requestGuid,
    "check_in_text": checkInText,
    "check_out_text": checkOutText,
    "country": country,
    "city": city,
    "location": location,
    "age": age,
    "p_hour": pHour,
    "d_hour": dHour,
    "pick_up_location_id": pickUpLocationId,
    "drop_off_location_id": dropOffLocationId,
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
    messages: List<Message>.from(json["messages"].map((x) => Message.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "request_id": requestId,
    "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
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
