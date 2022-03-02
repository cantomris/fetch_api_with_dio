// To parse this JSON data, do
//
//     final hotelItemModel = hotelItemModelFromJson(jsonString);

import 'dart:convert';

HotelItemModel hotelItemModelFromJson(String str) => HotelItemModel.fromJson(json.decode(str));

String hotelItemModelToJson(HotelItemModel data) => json.encode(data.toJson());

class HotelItemModel {
  HotelItemModel({
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
  dynamic minimumAcceptedAge;
  bool isVilla;
  List<HotelCampaign> hotelCampaigns;
  dynamic hotelValidCampaigns;
  List<dynamic> saleCampaigns;
  dynamic insurances;
  List<dynamic> productActivities;
  bool hasEbInsurance;
  dynamic tegSoftCampaignId;

  factory HotelItemModel.fromJson(Map<String, dynamic> json) => HotelItemModel(
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
    discountRate: json["discount_rate"].toDouble(),
    priceInTl: json["price_in_tl"].toDouble(),
    unitId: json["unit_id"],
    price: json["price"].toDouble(),
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
    saleCampaigns: List<dynamic>.from(json["sale_campaigns"].map((x) => x)),
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
    "sale_campaigns": List<dynamic>.from(saleCampaigns.map((x) => x)),
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
    icon: json["icon"] == null ? null : json["icon"],
    description: json["description"],
    cssClassName: json["css_class_name"] == null ? null : json["css_class_name"],
    descriptionDetail: json["description_detail"],
    hotelPropertyProminentId: json["hotel_property_prominent_id"],
  );

  Map<String, dynamic> toJson() => {
    "hotel_id": hotelId,
    "icon": icon == null ? null : icon,
    "description": description,
    "css_class_name": cssClassName == null ? null : cssClassName,
    "description_detail": descriptionDetail,
    "hotel_property_prominent_id": hotelPropertyProminentId,
  };
}
