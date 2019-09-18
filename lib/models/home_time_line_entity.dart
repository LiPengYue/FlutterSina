

class HomeTimeLineEntity {
  int totalNumber;
  int nextCursor;
  List<Null> ad;
  int uveBlank;
  String maxIdStr;
  bool hasvisible;
  String previousCursorStr;
  List<Null> advertises;
  int sinceId;
  int previousCursor;
  int hasUnread;
  String sinceIdStr;
  List<HomeTimeLineStatus> statuses;
  String nextCursorStr;
  int maxId;
  int interval;

  HomeTimeLineEntity(
      {this.totalNumber,
      this.nextCursor,
      this.ad,
      this.uveBlank,
      this.maxIdStr,
      this.hasvisible,
      this.previousCursorStr,
      this.advertises,
      this.sinceId,
      this.previousCursor,
      this.hasUnread,
      this.sinceIdStr,
      this.statuses,
      this.nextCursorStr,
      this.maxId,
      this.interval});

  HomeTimeLineEntity.fromJson(Map<String, dynamic> json) {
    totalNumber = json['total_number'];
    nextCursor = json['next_cursor'];
    if (json['ad'] != null) {
      ad = new List<Null>();
    }
    uveBlank = json['uve_blank'];
    maxIdStr = json['max_id_str'];
    hasvisible = json['hasvisible'];
    previousCursorStr = json['previous_cursor_str'];
    if (json['advertises'] != null) {
      advertises = new List<Null>();
    }
    sinceId = json['since_id'];
    previousCursor = json['previous_cursor'];
    hasUnread = json['has_unread'];
    sinceIdStr = json['since_id_str'];
    if (json['statuses'] != null) {
      statuses = new List<HomeTimeLineStatus>();
      (json['statuses'] as List).forEach((v) {
        statuses.add(new HomeTimeLineStatus.fromJson(v));
      });
    }
    nextCursorStr = json['next_cursor_str'];
    maxId = json['max_id'];
    interval = json['interval'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_number'] = this.totalNumber;
    data['next_cursor'] = this.nextCursor;
    if (this.ad != null) {
      data['ad'] = [];
    }
    data['uve_blank'] = this.uveBlank;
    data['max_id_str'] = this.maxIdStr;
    data['hasvisible'] = this.hasvisible;
    data['previous_cursor_str'] = this.previousCursorStr;
    if (this.advertises != null) {
      data['advertises'] = [];
    }
    data['since_id'] = this.sinceId;
    data['previous_cursor'] = this.previousCursor;
    data['has_unread'] = this.hasUnread;
    data['since_id_str'] = this.sinceIdStr;
    if (this.statuses != null) {
      data['statuses'] = this.statuses.map((v) => v.toJson()).toList();
    }
    data['next_cursor_str'] = this.nextCursorStr;
    data['max_id'] = this.maxId;
    data['interval'] = this.interval;
    return data;
  }
}

class HomeTimeLineStatus {
  bool isLongText;
  List<Null> hotWeiboTags;
  String inReplyToStatusId;
  List<HomeTimeLineStatusesAnnotation> annotations;
  int mblogtype;
  String source;
  int attitudesCount;
  String rid;
  HomeTimeLineStatusesRetweetedStatus retweetedStatus;
  String bmiddlePic;
  int positiveRecomFlag;
  int isShowBulletin;
  int hideFlag;
  int mlevel;
  String inReplyToUserId;
  int hasActionTypeCard;
  int id;
  String text;
  String picStatus;
  int mblogVipType;
  int contentAuth;
  HomeTimeLineStatusesVisible visible;
  String gifIds;
  int sourceType;
  List<HomeTimeLineStatusesPicUrl> picUrls;
  int version;
  int bizFeature;
  int commentsCount;
  int userType;
  int editCount;
  List<int> bizIds;
  String idstr;
  List<Null> textTagTips;
  int pageType;
  String createdAt;
  String mid;
  HomeTimeLineStatusesGeo geo;
  List<Null> darwinTags;
  int pendingApprovalCount;
  int hideMultiAttitude;
  String inReplyToScreenName;
  String cardid;
  int picNum;
  bool isPaid;
  int repostsCount;
  int rewardExhibitionType;
  bool favorited;
  String thumbnailPic;
  String rewardScheme;
  String originalPic;
  bool canEdit;
  int textLength;
  bool truncated;
  HomeTimeLineStatusesNumberDisplayStrategy numberDisplayStrategy;
  int sourceAllowclick;
  int showAdditionalIndication;
  HomeTimeLineStatusesCommentManageInfo commentManageInfo;
  HomeTimeLineStatusesUser user;
  int moreInfoType;
  String editAt;

  HomeTimeLineStatus(
      {this.isLongText,
      this.hotWeiboTags,
      this.inReplyToStatusId,
      this.annotations,
      this.mblogtype,
      this.source,
      this.attitudesCount,
      this.rid,
      this.retweetedStatus,
      this.bmiddlePic,
      this.positiveRecomFlag,
      this.isShowBulletin,
      this.hideFlag,
      this.mlevel,
      this.inReplyToUserId,
      this.hasActionTypeCard,
      this.id,
      this.text,
      this.picStatus,
      this.mblogVipType,
      this.contentAuth,
      this.visible,
      this.gifIds,
      this.sourceType,
      this.picUrls,
      this.version,
      this.bizFeature,
      this.commentsCount,
      this.userType,
      this.editCount,
      this.bizIds,
      this.idstr,
      this.textTagTips,
      this.pageType,
      this.createdAt,
      this.mid,
      this.geo,
      this.darwinTags,
      this.pendingApprovalCount,
      this.hideMultiAttitude,
      this.inReplyToScreenName,
      this.cardid,
      this.picNum,
      this.isPaid,
      this.repostsCount,
      this.rewardExhibitionType,
      this.favorited,
      this.thumbnailPic,
      this.rewardScheme,
      this.originalPic,
      this.canEdit,
      this.textLength,
      this.truncated,
      this.numberDisplayStrategy,
      this.sourceAllowclick,
      this.showAdditionalIndication,
      this.commentManageInfo,
      this.user,
      this.moreInfoType,
      this.editAt});

  HomeTimeLineStatus.fromJson(Map<String, dynamic> json) {
    isLongText = json['isLongText'];
    if (json['hot_weibo_tags'] != null) {
      hotWeiboTags = new List<Null>();
    }
    inReplyToStatusId = json['in_reply_to_status_id'];
    if (json['annotations'] != null) {
      annotations = new List<HomeTimeLineStatusesAnnotation>();
      (json['annotations'] as List).forEach((v) {
        annotations.add(new HomeTimeLineStatusesAnnotation.fromJson(v));
      });
    }
    mblogtype = json['mblogtype'];
    source = json['source'];
    attitudesCount = json['attitudes_count'];
    rid = json['rid'];
    retweetedStatus = json['retweeted_status'] != null
        ? new HomeTimeLineStatusesRetweetedStatus.fromJson(
            json['retweeted_status'])
        : null;
    bmiddlePic = json['bmiddle_pic'];
    positiveRecomFlag = json['positive_recom_flag'];
    isShowBulletin = json['is_show_bulletin'];
    hideFlag = json['hide_flag'];
    mlevel = json['mlevel'];
    inReplyToUserId = json['in_reply_to_user_id'];
    hasActionTypeCard = json['hasActionTypeCard'];
    id = json['id'];
    text = json['text'];
    picStatus = json['picStatus'];
    mblogVipType = json['mblog_vip_type'];
    contentAuth = json['content_auth'];
    visible = json['visible'] != null
        ? new HomeTimeLineStatusesVisible.fromJson(json['visible'])
        : null;
    gifIds = json['gif_ids'];
    sourceType = json['source_type'];
    if (json['pic_urls'] != null) {
      picUrls = new List<HomeTimeLineStatusesPicUrl>();
      (json['pic_urls'] as List).forEach((v) {
        picUrls.add(new HomeTimeLineStatusesPicUrl.fromJson(v));
      });
    }
    version = json['version'];
    bizFeature = json['biz_feature'];
    commentsCount = json['comments_count'];
    userType = json['userType'];
    editCount = json['edit_count'];
    bizIds = json['biz_ids']?.cast<int>();
    idstr = json['idstr'];
    if (json['text_tag_tips'] != null) {
      textTagTips = new List<Null>();
    }
    pageType = json['page_type'];
    createdAt = json['created_at'];
    mid = json['mid'];
    geo = json['geo'] != null
        ? new HomeTimeLineStatusesGeo.fromJson(json['geo'])
        : null;
    if (json['darwin_tags'] != null) {
      darwinTags = new List<Null>();
    }
    pendingApprovalCount = json['pending_approval_count'];
    hideMultiAttitude = json['hide_multi_attitude'];
    inReplyToScreenName = json['in_reply_to_screen_name'];
    cardid = json['cardid'];
    picNum = json['pic_num'];
    isPaid = json['is_paid'];
    repostsCount = json['reposts_count'];
    rewardExhibitionType = json['reward_exhibition_type'];
    favorited = json['favorited'];
    thumbnailPic = json['thumbnail_pic'];
    rewardScheme = json['reward_scheme'];
    originalPic = json['original_pic'];
    canEdit = json['can_edit'];
    textLength = json['textLength'];
    truncated = json['truncated'];
    numberDisplayStrategy = json['number_display_strategy'] != null
        ? new HomeTimeLineStatusesNumberDisplayStrategy.fromJson(
            json['number_display_strategy'])
        : null;
    sourceAllowclick = json['source_allowclick'];
    showAdditionalIndication = json['show_additional_indication'];
    commentManageInfo = json['comment_manage_info'] != null
        ? new HomeTimeLineStatusesCommentManageInfo.fromJson(
            json['comment_manage_info'])
        : null;
    user = json['user'] != null
        ? new HomeTimeLineStatusesUser.fromJson(json['user'])
        : null;
    moreInfoType = json['more_info_type'];
    editAt = json['edit_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isLongText'] = this.isLongText;
    if (this.hotWeiboTags != null) {
      data['hot_weibo_tags'] = [];
    }
    data['in_reply_to_status_id'] = this.inReplyToStatusId;
    if (this.annotations != null) {
      data['annotations'] = this.annotations.map((v) => v.toJson()).toList();
    }
    data['mblogtype'] = this.mblogtype;
    data['source'] = this.source;
    data['attitudes_count'] = this.attitudesCount;
    data['rid'] = this.rid;
    if (this.retweetedStatus != null) {
      data['retweeted_status'] = this.retweetedStatus.toJson();
    }
    data['bmiddle_pic'] = this.bmiddlePic;
    data['positive_recom_flag'] = this.positiveRecomFlag;
    data['is_show_bulletin'] = this.isShowBulletin;
    data['hide_flag'] = this.hideFlag;
    data['mlevel'] = this.mlevel;
    data['in_reply_to_user_id'] = this.inReplyToUserId;
    data['hasActionTypeCard'] = this.hasActionTypeCard;
    data['id'] = this.id;
    data['text'] = this.text;
    data['picStatus'] = this.picStatus;
    data['mblog_vip_type'] = this.mblogVipType;
    data['content_auth'] = this.contentAuth;
    if (this.visible != null) {
      data['visible'] = this.visible.toJson();
    }
    data['gif_ids'] = this.gifIds;
    data['source_type'] = this.sourceType;
    if (this.picUrls != null) {
      data['pic_urls'] = this.picUrls.map((v) => v.toJson()).toList();
    }
    data['version'] = this.version;
    data['biz_feature'] = this.bizFeature;
    data['comments_count'] = this.commentsCount;
    data['userType'] = this.userType;
    data['edit_count'] = this.editCount;
    data['biz_ids'] = this.bizIds;
    data['idstr'] = this.idstr;
    if (this.textTagTips != null) {
      data['text_tag_tips'] = [];
    }
    data['page_type'] = this.pageType;
    data['created_at'] = this.createdAt;
    data['mid'] = this.mid;
    if (this.geo != null) {
      data['geo'] = this.geo.toJson();
    }
    if (this.darwinTags != null) {
      data['darwin_tags'] = [];
    }
    data['pending_approval_count'] = this.pendingApprovalCount;
    data['hide_multi_attitude'] = this.hideMultiAttitude;
    data['in_reply_to_screen_name'] = this.inReplyToScreenName;
    data['cardid'] = this.cardid;
    data['pic_num'] = this.picNum;
    data['is_paid'] = this.isPaid;
    data['reposts_count'] = this.repostsCount;
    data['reward_exhibition_type'] = this.rewardExhibitionType;
    data['favorited'] = this.favorited;
    data['thumbnail_pic'] = this.thumbnailPic;
    data['reward_scheme'] = this.rewardScheme;
    data['original_pic'] = this.originalPic;
    data['can_edit'] = this.canEdit;
    data['textLength'] = this.textLength;
    data['truncated'] = this.truncated;
    if (this.numberDisplayStrategy != null) {
      data['number_display_strategy'] = this.numberDisplayStrategy.toJson();
    }
    data['source_allowclick'] = this.sourceAllowclick;
    data['show_additional_indication'] = this.showAdditionalIndication;
    if (this.commentManageInfo != null) {
      data['comment_manage_info'] = this.commentManageInfo.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['more_info_type'] = this.moreInfoType;
    data['edit_at'] = this.editAt;
    return data;
  }
}

class HomeTimeLineStatusesAnnotation {
  bool mapiRequest;
  int shooting;
  String clientMblogid;

  HomeTimeLineStatusesAnnotation(
      {this.mapiRequest, this.shooting, this.clientMblogid});

  HomeTimeLineStatusesAnnotation.fromJson(Map<String, dynamic> json) {
    mapiRequest = json['mapi_request'];
    shooting = json['shooting'];
    clientMblogid = json['client_mblogid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mapi_request'] = this.mapiRequest;
    data['shooting'] = this.shooting;
    data['client_mblogid'] = this.clientMblogid;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatus {
  bool isLongText;
  List<Null> hotWeiboTags;
  String inReplyToStatusId;
  List<HomeTimeLineStatusesRetweetedStatusAnnotation> annotations;
  int mblogtype;
  String source;
  int attitudesCount;
  int positiveRecomFlag;
  int isShowBulletin;
  int hideFlag;
  int mlevel;
  String inReplyToUserId;
  int hasActionTypeCard;
  int id;
  String text;
  int mblogVipType;
  int contentAuth;
  HomeTimeLineStatusesRetweetedStatusVisible visible;
  String gifIds;
  int sourceType;
  List<Null> picUrls;
  int version;
  int bizFeature;
  int commentsCount;
  int userType;
  List<int> bizIds;
  String idstr;
  List<Null> textTagTips;
  int pageType;
  String createdAt;
  String mid;
  dynamic geo;
  List<Null> darwinTags;
  int pendingApprovalCount;
  String inReplyToScreenName;
  int picNum;
  bool isPaid;
  int repostsCount;
  int rewardExhibitionType;
  bool favorited;
  bool canEdit;
  int textLength;
  bool truncated;
  HomeTimeLineStatusesRetweetedStatusNumberDisplayStrategy
      numberDisplayStrategy;
  int sourceAllowclick;
  int showAdditionalIndication;
  HomeTimeLineStatusesRetweetedStatusCommentManageInfo commentManageInfo;
  HomeTimeLineStatusesRetweetedStatusUser user;
  int moreInfoType;

  HomeTimeLineStatusesRetweetedStatus(
      {this.isLongText,
      this.hotWeiboTags,
      this.inReplyToStatusId,
      this.annotations,
      this.mblogtype,
      this.source,
      this.attitudesCount,
      this.positiveRecomFlag,
      this.isShowBulletin,
      this.hideFlag,
      this.mlevel,
      this.inReplyToUserId,
      this.hasActionTypeCard,
      this.id,
      this.text,
      this.mblogVipType,
      this.contentAuth,
      this.visible,
      this.gifIds,
      this.sourceType,
      this.picUrls,
      this.version,
      this.bizFeature,
      this.commentsCount,
      this.userType,
      this.bizIds,
      this.idstr,
      this.textTagTips,
      this.pageType,
      this.createdAt,
      this.mid,
      this.geo,
      this.darwinTags,
      this.pendingApprovalCount,
      this.inReplyToScreenName,
      this.picNum,
      this.isPaid,
      this.repostsCount,
      this.rewardExhibitionType,
      this.favorited,
      this.canEdit,
      this.textLength,
      this.truncated,
      this.numberDisplayStrategy,
      this.sourceAllowclick,
      this.showAdditionalIndication,
      this.commentManageInfo,
      this.user,
      this.moreInfoType});

  HomeTimeLineStatusesRetweetedStatus.fromJson(Map<String, dynamic> json) {
    isLongText = json['isLongText'];
    if (json['hot_weibo_tags'] != null) {
      hotWeiboTags = new List<Null>();
    }
    inReplyToStatusId = json['in_reply_to_status_id'];
    if (json['annotations'] != null) {
      annotations = new List<HomeTimeLineStatusesRetweetedStatusAnnotation>();
      (json['annotations'] as List).forEach((v) {
        annotations
            .add(new HomeTimeLineStatusesRetweetedStatusAnnotation.fromJson(v));
      });
    }
    mblogtype = json['mblogtype'];
    source = json['source'];
    attitudesCount = json['attitudes_count'];
    positiveRecomFlag = json['positive_recom_flag'];
    isShowBulletin = json['is_show_bulletin'];
    hideFlag = json['hide_flag'];
    mlevel = json['mlevel'];
    inReplyToUserId = json['in_reply_to_user_id'];
    hasActionTypeCard = json['hasActionTypeCard'];
    id = json['id'];
    text = json['text'];
    mblogVipType = json['mblog_vip_type'];
    contentAuth = json['content_auth'];
    visible = json['visible'] != null
        ? new HomeTimeLineStatusesRetweetedStatusVisible.fromJson(
            json['visible'])
        : null;
    gifIds = json['gif_ids'];
    sourceType = json['source_type'];
    if (json['pic_urls'] != null) {
      picUrls = new List<Null>();
    }
    version = json['version'];
    bizFeature = json['biz_feature'];
    commentsCount = json['comments_count'];
    userType = json['userType'];
    bizIds = json['biz_ids']?.cast<int>();
    idstr = json['idstr'];
    if (json['text_tag_tips'] != null) {
      textTagTips = new List<Null>();
    }
    pageType = json['page_type'];
    createdAt = json['created_at'];
    mid = json['mid'];
    geo = json['geo'];
    if (json['darwin_tags'] != null) {
      darwinTags = new List<Null>();
    }
    pendingApprovalCount = json['pending_approval_count'];
    inReplyToScreenName = json['in_reply_to_screen_name'];
    picNum = json['pic_num'];
    isPaid = json['is_paid'];
    repostsCount = json['reposts_count'];
    rewardExhibitionType = json['reward_exhibition_type'];
    favorited = json['favorited'];
    canEdit = json['can_edit'];
    textLength = json['textLength'];
    truncated = json['truncated'];
    numberDisplayStrategy = json['number_display_strategy'] != null
        ? new HomeTimeLineStatusesRetweetedStatusNumberDisplayStrategy.fromJson(
            json['number_display_strategy'])
        : null;
    sourceAllowclick = json['source_allowclick'];
    showAdditionalIndication = json['show_additional_indication'];
    commentManageInfo = json['comment_manage_info'] != null
        ? new HomeTimeLineStatusesRetweetedStatusCommentManageInfo.fromJson(
            json['comment_manage_info'])
        : null;
    user = json['user'] != null
        ? new HomeTimeLineStatusesRetweetedStatusUser.fromJson(json['user'])
        : null;
    moreInfoType = json['more_info_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isLongText'] = this.isLongText;
    if (this.hotWeiboTags != null) {
      data['hot_weibo_tags'] = [];
    }
    data['in_reply_to_status_id'] = this.inReplyToStatusId;
    if (this.annotations != null) {
      data['annotations'] = this.annotations.map((v) => v.toJson()).toList();
    }
    data['mblogtype'] = this.mblogtype;
    data['source'] = this.source;
    data['attitudes_count'] = this.attitudesCount;
    data['positive_recom_flag'] = this.positiveRecomFlag;
    data['is_show_bulletin'] = this.isShowBulletin;
    data['hide_flag'] = this.hideFlag;
    data['mlevel'] = this.mlevel;
    data['in_reply_to_user_id'] = this.inReplyToUserId;
    data['hasActionTypeCard'] = this.hasActionTypeCard;
    data['id'] = this.id;
    data['text'] = this.text;
    data['mblog_vip_type'] = this.mblogVipType;
    data['content_auth'] = this.contentAuth;
    if (this.visible != null) {
      data['visible'] = this.visible.toJson();
    }
    data['gif_ids'] = this.gifIds;
    data['source_type'] = this.sourceType;
    if (this.picUrls != null) {
      data['pic_urls'] = [];
    }
    data['version'] = this.version;
    data['biz_feature'] = this.bizFeature;
    data['comments_count'] = this.commentsCount;
    data['userType'] = this.userType;
    data['biz_ids'] = this.bizIds;
    data['idstr'] = this.idstr;
    if (this.textTagTips != null) {
      data['text_tag_tips'] = [];
    }
    data['page_type'] = this.pageType;
    data['created_at'] = this.createdAt;
    data['mid'] = this.mid;
    data['geo'] = this.geo;
    if (this.darwinTags != null) {
      data['darwin_tags'] = [];
    }
    data['pending_approval_count'] = this.pendingApprovalCount;
    data['in_reply_to_screen_name'] = this.inReplyToScreenName;
    data['pic_num'] = this.picNum;
    data['is_paid'] = this.isPaid;
    data['reposts_count'] = this.repostsCount;
    data['reward_exhibition_type'] = this.rewardExhibitionType;
    data['favorited'] = this.favorited;
    data['can_edit'] = this.canEdit;
    data['textLength'] = this.textLength;
    data['truncated'] = this.truncated;
    if (this.numberDisplayStrategy != null) {
      data['number_display_strategy'] = this.numberDisplayStrategy.toJson();
    }
    data['source_allowclick'] = this.sourceAllowclick;
    data['show_additional_indication'] = this.showAdditionalIndication;
    if (this.commentManageInfo != null) {
      data['comment_manage_info'] = this.commentManageInfo.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['more_info_type'] = this.moreInfoType;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusAnnotation {
  bool mapiRequest;

  HomeTimeLineStatusesRetweetedStatusAnnotation({this.mapiRequest});

  HomeTimeLineStatusesRetweetedStatusAnnotation.fromJson(
      Map<String, dynamic> json) {
    mapiRequest = json['mapi_request'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mapi_request'] = this.mapiRequest;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusVisible {
  int listId;
  int type;

  HomeTimeLineStatusesRetweetedStatusVisible({this.listId, this.type});

  HomeTimeLineStatusesRetweetedStatusVisible.fromJson(
      Map<String, dynamic> json) {
    listId = json['list_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list_id'] = this.listId;
    data['type'] = this.type;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusNumberDisplayStrategy {
  int applyScenarioFlag;
  int displayTextMinNumber;
  String displayText;

  HomeTimeLineStatusesRetweetedStatusNumberDisplayStrategy(
      {this.applyScenarioFlag, this.displayTextMinNumber, this.displayText});

  HomeTimeLineStatusesRetweetedStatusNumberDisplayStrategy.fromJson(
      Map<String, dynamic> json) {
    applyScenarioFlag = json['apply_scenario_flag'];
    displayTextMinNumber = json['display_text_min_number'];
    displayText = json['display_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apply_scenario_flag'] = this.applyScenarioFlag;
    data['display_text_min_number'] = this.displayTextMinNumber;
    data['display_text'] = this.displayText;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusCommentManageInfo {
  int commentPermissionType;
  int approvalCommentType;

  HomeTimeLineStatusesRetweetedStatusCommentManageInfo(
      {this.commentPermissionType, this.approvalCommentType});

  HomeTimeLineStatusesRetweetedStatusCommentManageInfo.fromJson(
      Map<String, dynamic> json) {
    commentPermissionType = json['comment_permission_type'];
    approvalCommentType = json['approval_comment_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment_permission_type'] = this.commentPermissionType;
    data['approval_comment_type'] = this.approvalCommentType;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusUser {
  int isTeenager;
  bool allowAllActMsg;
  int favouritesCount;
  int urank;
  String verifiedTrade;
  String weihao;
  String verifiedSourceUrl;
  String province;
  String screenName;
  int id;
  bool geoEnabled;
  bool likeMe;
  String verifiedContactMobile;
  bool like;
  int verifiedType;
  String tabManage;
  int verifiedTypeExt;
  int pagefriendsCount;
  String domain;
  bool following;
  String name;
  String verifiedContactEmail;
  String coverImagePhone;
  String idstr;
  bool followMe;
  int friendsCount;
  int creditScore;
  String gender;
  String city;
  String profileUrl;
  String description;
  String createdAt;
  String remark;
  int ptype;
  String verifiedReasonUrl;
  int blockWord;
  int verifiedState;
  String avatarHd;
  int mbtype;
  int biFollowersCount;
  int userAbility;
  int isTeenagerList;
  String verifiedReason;
  int storyReadState;
  int videoStatusCount;
  int mbrank;
  String lang;
  int xClass;
  int verifiedLevel;
  int star;
  bool allowAllComment;
  bool hasServiceTel;
  int onlineStatus;
  bool verified;
  String profileImageUrl;
  int blockApp;
  String url;
  String verifiedContactName;
  String avatarLarge;
  int statusesCount;
  int vclubMember;
  int followersCount;
  int isGuardian;
  String location;
  HomeTimeLineStatusesRetweetedStatusUserInsecurity insecurity;
  String verifiedReasonModified;
  String verifiedSource;

  HomeTimeLineStatusesRetweetedStatusUser(
      {this.isTeenager,
      this.allowAllActMsg,
      this.favouritesCount,
      this.urank,
      this.verifiedTrade,
      this.weihao,
      this.verifiedSourceUrl,
      this.province,
      this.screenName,
      this.id,
      this.geoEnabled,
      this.likeMe,
      this.verifiedContactMobile,
      this.like,
      this.verifiedType,
      this.tabManage,
      this.verifiedTypeExt,
      this.pagefriendsCount,
      this.domain,
      this.following,
      this.name,
      this.verifiedContactEmail,
      this.coverImagePhone,
      this.idstr,
      this.followMe,
      this.friendsCount,
      this.creditScore,
      this.gender,
      this.city,
      this.profileUrl,
      this.description,
      this.createdAt,
      this.remark,
      this.ptype,
      this.verifiedReasonUrl,
      this.blockWord,
      this.verifiedState,
      this.avatarHd,
      this.mbtype,
      this.biFollowersCount,
      this.userAbility,
      this.isTeenagerList,
      this.verifiedReason,
      this.storyReadState,
      this.videoStatusCount,
      this.mbrank,
      this.lang,
      this.xClass,
      this.verifiedLevel,
      this.star,
      this.allowAllComment,
      this.hasServiceTel,
      this.onlineStatus,
      this.verified,
      this.profileImageUrl,
      this.blockApp,
      this.url,
      this.verifiedContactName,
      this.avatarLarge,
      this.statusesCount,
      this.vclubMember,
      this.followersCount,
      this.isGuardian,
      this.location,
      this.insecurity,
      this.verifiedReasonModified,
      this.verifiedSource});

  HomeTimeLineStatusesRetweetedStatusUser.fromJson(Map<String, dynamic> json) {
    isTeenager = json['is_teenager'];
    allowAllActMsg = json['allow_all_act_msg'];
    favouritesCount = json['favourites_count'];
    urank = json['urank'];
    verifiedTrade = json['verified_trade'];
    weihao = json['weihao'];
    verifiedSourceUrl = json['verified_source_url'];
    province = json['province'];
    screenName = json['screen_name'];
    id = json['id'];
    geoEnabled = json['geo_enabled'];
    likeMe = json['like_me'];
    verifiedContactMobile = json['verified_contact_mobile'];
    like = json['like'];
    verifiedType = json['verified_type'];
    tabManage = json['tab_manage'];
    verifiedTypeExt = json['verified_type_ext'];
    pagefriendsCount = json['pagefriends_count'];
    domain = json['domain'];
    following = json['following'];
    name = json['name'];
    verifiedContactEmail = json['verified_contact_email'];
    coverImagePhone = json['cover_image_phone'];
    idstr = json['idstr'];
    followMe = json['follow_me'];
    friendsCount = json['friends_count'];
    creditScore = json['credit_score'];
    gender = json['gender'];
    city = json['city'];
    profileUrl = json['profile_url'];
    description = json['description'];
    createdAt = json['created_at'];
    remark = json['remark'];
    ptype = json['ptype'];
    verifiedReasonUrl = json['verified_reason_url'];
    blockWord = json['block_word'];
    verifiedState = json['verified_state'];
    avatarHd = json['avatar_hd'];
    mbtype = json['mbtype'];
    biFollowersCount = json['bi_followers_count'];
    userAbility = json['user_ability'];
    isTeenagerList = json['is_teenager_list'];
    verifiedReason = json['verified_reason'];
    storyReadState = json['story_read_state'];
    videoStatusCount = json['video_status_count'];
    mbrank = json['mbrank'];
    lang = json['lang'];
    xClass = json['class'];
    verifiedLevel = json['verified_level'];
    star = json['star'];
    allowAllComment = json['allow_all_comment'];
    hasServiceTel = json['has_service_tel'];
    onlineStatus = json['online_status'];
    verified = json['verified'];
    profileImageUrl = json['profile_image_url'];
    blockApp = json['block_app'];
    url = json['url'];
    verifiedContactName = json['verified_contact_name'];
    avatarLarge = json['avatar_large'];
    statusesCount = json['statuses_count'];
    vclubMember = json['vclub_member'];
    followersCount = json['followers_count'];
    isGuardian = json['is_guardian'];
    location = json['location'];
    insecurity = json['insecurity'] != null
        ? new HomeTimeLineStatusesRetweetedStatusUserInsecurity.fromJson(
            json['insecurity'])
        : null;
    verifiedReasonModified = json['verified_reason_modified'];
    verifiedSource = json['verified_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_teenager'] = this.isTeenager;
    data['allow_all_act_msg'] = this.allowAllActMsg;
    data['favourites_count'] = this.favouritesCount;
    data['urank'] = this.urank;
    data['verified_trade'] = this.verifiedTrade;
    data['weihao'] = this.weihao;
    data['verified_source_url'] = this.verifiedSourceUrl;
    data['province'] = this.province;
    data['screen_name'] = this.screenName;
    data['id'] = this.id;
    data['geo_enabled'] = this.geoEnabled;
    data['like_me'] = this.likeMe;
    data['verified_contact_mobile'] = this.verifiedContactMobile;
    data['like'] = this.like;
    data['verified_type'] = this.verifiedType;
    data['tab_manage'] = this.tabManage;
    data['verified_type_ext'] = this.verifiedTypeExt;
    data['pagefriends_count'] = this.pagefriendsCount;
    data['domain'] = this.domain;
    data['following'] = this.following;
    data['name'] = this.name;
    data['verified_contact_email'] = this.verifiedContactEmail;
    data['cover_image_phone'] = this.coverImagePhone;
    data['idstr'] = this.idstr;
    data['follow_me'] = this.followMe;
    data['friends_count'] = this.friendsCount;
    data['credit_score'] = this.creditScore;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['profile_url'] = this.profileUrl;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['remark'] = this.remark;
    data['ptype'] = this.ptype;
    data['verified_reason_url'] = this.verifiedReasonUrl;
    data['block_word'] = this.blockWord;
    data['verified_state'] = this.verifiedState;
    data['avatar_hd'] = this.avatarHd;
    data['mbtype'] = this.mbtype;
    data['bi_followers_count'] = this.biFollowersCount;
    data['user_ability'] = this.userAbility;
    data['is_teenager_list'] = this.isTeenagerList;
    data['verified_reason'] = this.verifiedReason;
    data['story_read_state'] = this.storyReadState;
    data['video_status_count'] = this.videoStatusCount;
    data['mbrank'] = this.mbrank;
    data['lang'] = this.lang;
    data['class'] = this.xClass;
    data['verified_level'] = this.verifiedLevel;
    data['star'] = this.star;
    data['allow_all_comment'] = this.allowAllComment;
    data['has_service_tel'] = this.hasServiceTel;
    data['online_status'] = this.onlineStatus;
    data['verified'] = this.verified;
    data['profile_image_url'] = this.profileImageUrl;
    data['block_app'] = this.blockApp;
    data['url'] = this.url;
    data['verified_contact_name'] = this.verifiedContactName;
    data['avatar_large'] = this.avatarLarge;
    data['statuses_count'] = this.statusesCount;
    data['vclub_member'] = this.vclubMember;
    data['followers_count'] = this.followersCount;
    data['is_guardian'] = this.isGuardian;
    data['location'] = this.location;
    if (this.insecurity != null) {
      data['insecurity'] = this.insecurity.toJson();
    }
    data['verified_reason_modified'] = this.verifiedReasonModified;
    data['verified_source'] = this.verifiedSource;
    return data;
  }
}

class HomeTimeLineStatusesRetweetedStatusUserInsecurity {
  bool sexualContent;

  HomeTimeLineStatusesRetweetedStatusUserInsecurity({this.sexualContent});

  HomeTimeLineStatusesRetweetedStatusUserInsecurity.fromJson(
      Map<String, dynamic> json) {
    sexualContent = json['sexual_content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sexual_content'] = this.sexualContent;
    return data;
  }
}

class HomeTimeLineStatusesVisible {
  int listId;
  int type;

  HomeTimeLineStatusesVisible({this.listId, this.type});

  HomeTimeLineStatusesVisible.fromJson(Map<String, dynamic> json) {
    listId = json['list_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['list_id'] = this.listId;
    data['type'] = this.type;
    return data;
  }
}

class HomeTimeLineStatusesPicUrl {
  String thumbnailPic;

  HomeTimeLineStatusesPicUrl({this.thumbnailPic});

  HomeTimeLineStatusesPicUrl.fromJson(Map<String, dynamic> json) {
    thumbnailPic = json['thumbnail_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail_pic'] = this.thumbnailPic;
    return data;
  }
}

class HomeTimeLineStatusesGeo {
  List<double> coordinates;
  String type;

  HomeTimeLineStatusesGeo({this.coordinates, this.type});

  HomeTimeLineStatusesGeo.fromJson(Map<String, dynamic> json) {
    coordinates = json['coordinates']?.cast<double>();
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coordinates'] = this.coordinates;
    data['type'] = this.type;
    return data;
  }
}

class HomeTimeLineStatusesNumberDisplayStrategy {
  int applyScenarioFlag;
  int displayTextMinNumber;
  String displayText;

  HomeTimeLineStatusesNumberDisplayStrategy(
      {this.applyScenarioFlag, this.displayTextMinNumber, this.displayText});

  HomeTimeLineStatusesNumberDisplayStrategy.fromJson(
      Map<String, dynamic> json) {
    applyScenarioFlag = json['apply_scenario_flag'];
    displayTextMinNumber = json['display_text_min_number'];
    displayText = json['display_text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apply_scenario_flag'] = this.applyScenarioFlag;
    data['display_text_min_number'] = this.displayTextMinNumber;
    data['display_text'] = this.displayText;
    return data;
  }
}

class HomeTimeLineStatusesCommentManageInfo {
  int commentPermissionType;
  int approvalCommentType;

  HomeTimeLineStatusesCommentManageInfo(
      {this.commentPermissionType, this.approvalCommentType});

  HomeTimeLineStatusesCommentManageInfo.fromJson(Map<String, dynamic> json) {
    commentPermissionType = json['comment_permission_type'];
    approvalCommentType = json['approval_comment_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment_permission_type'] = this.commentPermissionType;
    data['approval_comment_type'] = this.approvalCommentType;
    return data;
  }
}

class HomeTimeLineStatusesUser {
  int isTeenager;
  bool allowAllActMsg;
  int favouritesCount;
  int urank;
  String verifiedTrade;
  String weihao;
  String verifiedSourceUrl;
  String province;
  String screenName;
  int id;
  bool geoEnabled;
  bool likeMe;
  String verifiedContactMobile;
  String avatargjId;
  bool like;
  int verifiedType;
  String tabManage;
  int verifiedTypeExt;
  int pagefriendsCount;
  String domain;
  bool following;
  String name;
  String verifiedContactEmail;
  String coverImagePhone;
  String idstr;
  bool followMe;
  int friendsCount;
  int creditScore;
  String gender;
  String city;
  String profileUrl;
  String description;
  String createdAt;
  String remark;
  int ptype;
  String verifiedReasonUrl;
  int blockWord;
  int verifiedState;
  String avatarHd;
  int mbtype;
  int biFollowersCount;
  int userAbility;
  String cardid;
  int isTeenagerList;
  String verifiedReason;
  int storyReadState;
  int videoStatusCount;
  int mbrank;
  String lang;
  int xClass;
  int verifiedLevel;
  int star;
  bool allowAllComment;
  bool hasServiceTel;
  int onlineStatus;
  bool verified;
  String profileImageUrl;
  int blockApp;
  String url;
  String verifiedContactName;
  String avatarLarge;
  int statusesCount;
  int vclubMember;
  int followersCount;
  int isGuardian;
  String location;
  HomeTimeLineStatusesUserInsecurity insecurity;
  String verifiedReasonModified;
  String verifiedSource;

  HomeTimeLineStatusesUser(
      {this.isTeenager,
      this.allowAllActMsg,
      this.favouritesCount,
      this.urank,
      this.verifiedTrade,
      this.weihao,
      this.verifiedSourceUrl,
      this.province,
      this.screenName,
      this.id,
      this.geoEnabled,
      this.likeMe,
      this.verifiedContactMobile,
      this.avatargjId,
      this.like,
      this.verifiedType,
      this.tabManage,
      this.verifiedTypeExt,
      this.pagefriendsCount,
      this.domain,
      this.following,
      this.name,
      this.verifiedContactEmail,
      this.coverImagePhone,
      this.idstr,
      this.followMe,
      this.friendsCount,
      this.creditScore,
      this.gender,
      this.city,
      this.profileUrl,
      this.description,
      this.createdAt,
      this.remark,
      this.ptype,
      this.verifiedReasonUrl,
      this.blockWord,
      this.verifiedState,
      this.avatarHd,
      this.mbtype,
      this.biFollowersCount,
      this.userAbility,
      this.cardid,
      this.isTeenagerList,
      this.verifiedReason,
      this.storyReadState,
      this.videoStatusCount,
      this.mbrank,
      this.lang,
      this.xClass,
      this.verifiedLevel,
      this.star,
      this.allowAllComment,
      this.hasServiceTel,
      this.onlineStatus,
      this.verified,
      this.profileImageUrl,
      this.blockApp,
      this.url,
      this.verifiedContactName,
      this.avatarLarge,
      this.statusesCount,
      this.vclubMember,
      this.followersCount,
      this.isGuardian,
      this.location,
      this.insecurity,
      this.verifiedReasonModified,
      this.verifiedSource});

  HomeTimeLineStatusesUser.fromJson(Map<String, dynamic> json) {
    isTeenager = json['is_teenager'];
    allowAllActMsg = json['allow_all_act_msg'];
    favouritesCount = json['favourites_count'];
    urank = json['urank'];
    verifiedTrade = json['verified_trade'];
    weihao = json['weihao'];
    verifiedSourceUrl = json['verified_source_url'];
    province = json['province'];
    screenName = json['screen_name'];
    id = json['id'];
    geoEnabled = json['geo_enabled'];
    likeMe = json['like_me'];
    verifiedContactMobile = json['verified_contact_mobile'];
    avatargjId = json['avatargj_id'];
    like = json['like'];
    verifiedType = json['verified_type'];
    tabManage = json['tab_manage'];
    verifiedTypeExt = json['verified_type_ext'];
    pagefriendsCount = json['pagefriends_count'];
    domain = json['domain'];
    following = json['following'];
    name = json['name'];
    verifiedContactEmail = json['verified_contact_email'];
    coverImagePhone = json['cover_image_phone'];
    idstr = json['idstr'];
    followMe = json['follow_me'];
    friendsCount = json['friends_count'];
    creditScore = json['credit_score'];
    gender = json['gender'];
    city = json['city'];
    profileUrl = json['profile_url'];
    description = json['description'];
    createdAt = json['created_at'];
    remark = json['remark'];
    ptype = json['ptype'];
    verifiedReasonUrl = json['verified_reason_url'];
    blockWord = json['block_word'];
    verifiedState = json['verified_state'];
    avatarHd = json['avatar_hd'];
    mbtype = json['mbtype'];
    biFollowersCount = json['bi_followers_count'];
    userAbility = json['user_ability'];
    cardid = json['cardid'];
    isTeenagerList = json['is_teenager_list'];
    verifiedReason = json['verified_reason'];
    storyReadState = json['story_read_state'];
    videoStatusCount = json['video_status_count'];
    mbrank = json['mbrank'];
    lang = json['lang'];
    xClass = json['class'];
    verifiedLevel = json['verified_level'];
    star = json['star'];
    allowAllComment = json['allow_all_comment'];
    hasServiceTel = json['has_service_tel'];
    onlineStatus = json['online_status'];
    verified = json['verified'];
    profileImageUrl = json['profile_image_url'];
    blockApp = json['block_app'];
    url = json['url'];
    verifiedContactName = json['verified_contact_name'];
    avatarLarge = json['avatar_large'];
    statusesCount = json['statuses_count'];
    vclubMember = json['vclub_member'];
    followersCount = json['followers_count'];
    isGuardian = json['is_guardian'];
    location = json['location'];
    insecurity = json['insecurity'] != null
        ? new HomeTimeLineStatusesUserInsecurity.fromJson(json['insecurity'])
        : null;
    verifiedReasonModified = json['verified_reason_modified'];
    verifiedSource = json['verified_source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_teenager'] = this.isTeenager;
    data['allow_all_act_msg'] = this.allowAllActMsg;
    data['favourites_count'] = this.favouritesCount;
    data['urank'] = this.urank;
    data['verified_trade'] = this.verifiedTrade;
    data['weihao'] = this.weihao;
    data['verified_source_url'] = this.verifiedSourceUrl;
    data['province'] = this.province;
    data['screen_name'] = this.screenName;
    data['id'] = this.id;
    data['geo_enabled'] = this.geoEnabled;
    data['like_me'] = this.likeMe;
    data['verified_contact_mobile'] = this.verifiedContactMobile;
    data['avatargj_id'] = this.avatargjId;
    data['like'] = this.like;
    data['verified_type'] = this.verifiedType;
    data['tab_manage'] = this.tabManage;
    data['verified_type_ext'] = this.verifiedTypeExt;
    data['pagefriends_count'] = this.pagefriendsCount;
    data['domain'] = this.domain;
    data['following'] = this.following;
    data['name'] = this.name;
    data['verified_contact_email'] = this.verifiedContactEmail;
    data['cover_image_phone'] = this.coverImagePhone;
    data['idstr'] = this.idstr;
    data['follow_me'] = this.followMe;
    data['friends_count'] = this.friendsCount;
    data['credit_score'] = this.creditScore;
    data['gender'] = this.gender;
    data['city'] = this.city;
    data['profile_url'] = this.profileUrl;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['remark'] = this.remark;
    data['ptype'] = this.ptype;
    data['verified_reason_url'] = this.verifiedReasonUrl;
    data['block_word'] = this.blockWord;
    data['verified_state'] = this.verifiedState;
    data['avatar_hd'] = this.avatarHd;
    data['mbtype'] = this.mbtype;
    data['bi_followers_count'] = this.biFollowersCount;
    data['user_ability'] = this.userAbility;
    data['cardid'] = this.cardid;
    data['is_teenager_list'] = this.isTeenagerList;
    data['verified_reason'] = this.verifiedReason;
    data['story_read_state'] = this.storyReadState;
    data['video_status_count'] = this.videoStatusCount;
    data['mbrank'] = this.mbrank;
    data['lang'] = this.lang;
    data['class'] = this.xClass;
    data['verified_level'] = this.verifiedLevel;
    data['star'] = this.star;
    data['allow_all_comment'] = this.allowAllComment;
    data['has_service_tel'] = this.hasServiceTel;
    data['online_status'] = this.onlineStatus;
    data['verified'] = this.verified;
    data['profile_image_url'] = this.profileImageUrl;
    data['block_app'] = this.blockApp;
    data['url'] = this.url;
    data['verified_contact_name'] = this.verifiedContactName;
    data['avatar_large'] = this.avatarLarge;
    data['statuses_count'] = this.statusesCount;
    data['vclub_member'] = this.vclubMember;
    data['followers_count'] = this.followersCount;
    data['is_guardian'] = this.isGuardian;
    data['location'] = this.location;
    if (this.insecurity != null) {
      data['insecurity'] = this.insecurity.toJson();
    }
    data['verified_reason_modified'] = this.verifiedReasonModified;
    data['verified_source'] = this.verifiedSource;
    return data;
  }
}

class HomeTimeLineStatusesUserInsecurity {
  bool sexualContent;

  HomeTimeLineStatusesUserInsecurity({this.sexualContent});

  HomeTimeLineStatusesUserInsecurity.fromJson(Map<String, dynamic> json) {
    sexualContent = json['sexual_content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sexual_content'] = this.sexualContent;
    return data;
  }
}
