// To parse this JSON data, do
//
//     final hotelSearch = hotelSearchFromJson(jsonString);

import 'dart:convert';

HotelSearch hotelSearchFromJson(String str) => HotelSearch.fromJson(json.decode(str));

String hotelSearchToJson(HotelSearch data) => json.encode(data.toJson());

class HotelSearch {
  HotelSearch({
    this.status,
    this.data,
  });

  Status status;
  Data data;

  factory HotelSearch.fromJson(Map<String, dynamic> json) => HotelSearch(
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
  dynamic children;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    hotelName: json["hotel_name"],
    select: json["select"],
    id: json["id"],
    children: json["children"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_name": hotelName,
    "select": select,
    "id": id,
    "children": children,
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
  dynamic avgRate;
  String categorySliderPath;
  dynamic notDiscountedPrice;
  List<int> hotelCategoryIds;
  List<HotelPropertyProminent> hotelPropertyProminents;
  dynamic hotelOpenDate;
  dynamic hotelCloseDate;
  bool isHotelOpenInYear;
  String hotelOpenText;
  String childInfo;
  int childAge1Min;
  int childAge1Max;
  dynamic childAge2Min;
  dynamic childAge2Max;
  int discountRate;
  int priceInTl;
  int unitId;
  int price;
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
  dynamic minimumAcceptedAge;
  bool isVilla;
  List<HotelCampaign> hotelCampaigns;
  dynamic hotelValidCampaigns;
  dynamic saleCampaigns;
  dynamic insurances;
  List<dynamic> productActivities;
  bool hasEbInsurance;
  dynamic tegSoftCampaignId;

  factory HotelListCacheModel.fromJson(Map<String, dynamic> json) => HotelListCacheModel(
    id: json["id"],
    calcTypeId: json["calc_type_id"],
    priority: json["priority"],
    isSingleBay: json["is_single_bay"],
    avgRate: json["avg_rate"],
    categorySliderPath: json["category_slider_path"],
    notDiscountedPrice: json["not_discounted_price"],
    hotelCategoryIds: List<int>.from(json["hotel_category_ids"].map((x) => x)),
    hotelPropertyProminents: List<HotelPropertyProminent>.from(json["hotel_property_prominents"].map((x) => HotelPropertyProminent.fromJson(x))),
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
    minimumAcceptedAge: json["minimum_accepted_age"],
    isVilla: json["is_villa"],
    hotelCampaigns: List<HotelCampaign>.from(json["hotel_campaigns"].map((x) => HotelCampaign.fromJson(x))),
    hotelValidCampaigns: json["hotel_valid_campaigns"],
    saleCampaigns: json["sale_campaigns"],
    insurances: json["insurances"],
    productActivities: List<dynamic>.from(json["product_activities"].map((x) => x)),
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
    "hotel_category_ids": List<dynamic>.from(hotelCategoryIds.map((x) => x)),
    "hotel_property_prominents": List<dynamic>.from(hotelPropertyProminents.map((x) => x.toJson())),
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
    "minimum_accepted_age": minimumAcceptedAge,
    "is_villa": isVilla,
    "hotel_campaigns": List<dynamic>.from(hotelCampaigns.map((x) => x.toJson())),
    "hotel_valid_campaigns": hotelValidCampaigns,
    "sale_campaigns": saleCampaigns,
    "insurances": insurances,
    "product_activities": List<dynamic>.from(productActivities.map((x) => x)),
    "has_eb_insurance": hasEbInsurance,
    "teg_soft_campaign_id": tegSoftCampaignId,
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
    campaignsOfType: List<CampaignsOfType>.from(json["campaigns_of_type"].map((x) => CampaignsOfType.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "group_title": groupTitle,
    "class_name": className,
    "icon_class": iconClass,
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
    campaigins: List<Campaigin>.from(json["campaigins"].map((x) => Campaigin.fromJson(x))),
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
  dynamic descriptionDetail;
  int hotelPropertyProminentId;

  factory HotelPropertyProminent.fromJson(Map<String, dynamic> json) => HotelPropertyProminent(
    hotelId: json["hotel_id"],
    icon: json["icon"],
    description: json["description"],
    cssClassName: json["css_class_name"],
    descriptionDetail: json["description_detail"],
    hotelPropertyProminentId: json["hotel_property_prominent_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId,
    "icon": icon,
    "description": description,
    "css_class_name": cssClassName,
    "description_detail": descriptionDetail,
    "hotel_property_prominent_id": hotelPropertyProminentId,
  };
}

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
    this.children,
  });

  String yerAd;
  int hotelCount;
  bool select;
  String key;
  String id;
  List<Lokasyon> children;

  factory Lokasyon.fromJson(Map<String, dynamic> json) => Lokasyon(
    yerAd: json["yer_ad"],
    hotelCount: json["hotel_count"],
    select: json["select"],
    key: json["key"],
    id: json["id"],
    children: List<Lokasyon>.from(json["children"].map((x) => Lokasyon.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "yer_ad": yerAd,
    "hotel_count": hotelCount,
    "select": select,
    "key": key,
    "id": id,
    "children": List<dynamic>.from(children.map((x) => x.toJson())),
  };
}

class Price {
  Price({
    this.min,
    this.max,
  });

  int min;
  int max;

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
    icon: json["icon"],
    description: json["description"],
    descriptionDetail: json["description_detail"],
    cssClassName: json["css_class_name"],
    isSelected: json["is_selected"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "icon": icon,
    "description": description,
    "description_detail": descriptionDetail,
    "css_class_name": cssClassName,
    "is_selected": isSelected,
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
