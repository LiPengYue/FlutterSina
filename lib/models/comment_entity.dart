
class CommentEntity {
	int totalNumber;
	int nextCursor;
	List<CommantCommants> comments;
	String maxIdStr;
	bool hasvisible;
	String previousCursorStr;
	List<Null> marks;
	int sinceId;
	int previousCursor;
	String sinceIdStr;
	String nextCursorStr;
	int maxId;
	CommentStatus status;

	CommentEntity({this.totalNumber, this.nextCursor, this.comments, this.maxIdStr, this.hasvisible, this.previousCursorStr, this.marks, this.sinceId, this.previousCursor, this.sinceIdStr, this.nextCursorStr, this.maxId, this.status});

	CommentEntity.fromJson(Map<String, dynamic> json) {
		totalNumber = json['total_number'];
		nextCursor = json['next_cursor'];
		if (json['comments'] != null) {
			comments = new List<CommantCommants>();(json['comments'] as List).forEach((v) { comments.add(new CommantCommants.fromJson(v)); });
		}
		maxIdStr = json['max_id_str'];
		hasvisible = json['hasvisible'];
		previousCursorStr = json['previous_cursor_str'];
		if (json['marks'] != null) {
			marks = new List<Null>();
		}
		sinceId = json['since_id'];
		previousCursor = json['previous_cursor'];
		sinceIdStr = json['since_id_str'];
		nextCursorStr = json['next_cursor_str'];
		maxId = json['max_id'];
		status = json['status'] != null ? new CommentStatus.fromJson(json['status']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total_number'] = this.totalNumber;
		data['next_cursor'] = this.nextCursor;
		if (this.comments != null) {
      data['comments'] =  this.comments.map((v) => v.toJson()).toList();
    }
		data['max_id_str'] = this.maxIdStr;
		data['hasvisible'] = this.hasvisible;
		data['previous_cursor_str'] = this.previousCursorStr;
		if (this.marks != null) {
      data['marks'] =  [];
    }
		data['since_id'] = this.sinceId;
		data['previous_cursor'] = this.previousCursor;
		data['since_id_str'] = this.sinceIdStr;
		data['next_cursor_str'] = this.nextCursorStr;
		data['max_id'] = this.maxId;
		if (this.status != null) {
      data['status'] = this.status.toJson();
    }
		return data;
	}
}

class CommantCommants {
	String idstr;
	int rootid;
	int disableReply;
	String createdAt;
	String mid;
	int floorNumber;
	int id;
	String text;
	String rootidstr;
	CommentCommentsUser user;
	CommentCommentsStatus status;
	String readtimetype;

	CommantCommants({this.idstr, this.rootid, this.disableReply, this.createdAt, this.mid, this.floorNumber, this.id, this.text, this.rootidstr, this.user, this.status, this.readtimetype});

	CommantCommants.fromJson(Map<String, dynamic> json) {
		idstr = json['idstr'];
		rootid = json['rootid'];
		disableReply = json['disable_reply'];
		createdAt = json['created_at'];
		mid = json['mid'];
		floorNumber = json['floor_number'];
		id = json['id'];
		text = json['text'];
		rootidstr = json['rootidstr'];
		user = json['user'] != null ? new CommentCommentsUser.fromJson(json['user']) : null;
		status = json['status'] != null ? new CommentCommentsStatus.fromJson(json['status']) : null;
		readtimetype = json['readtimetype'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['idstr'] = this.idstr;
		data['rootid'] = this.rootid;
		data['disable_reply'] = this.disableReply;
		data['created_at'] = this.createdAt;
		data['mid'] = this.mid;
		data['floor_number'] = this.floorNumber;
		data['id'] = this.id;
		data['text'] = this.text;
		data['rootidstr'] = this.rootidstr;
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		if (this.status != null) {
      data['status'] = this.status.toJson();
    }
		data['readtimetype'] = this.readtimetype;
		return data;
	}
}

class CommentCommentsUser {
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
	bool like;
	int verifiedType;
	String tabManage;
	int pagefriendsCount;
	String domain;
	bool following;
	String name;
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
	int star;
	bool allowAllComment;
	int onlineStatus;
	bool verified;
	String profileImageUrl;
	int blockApp;
	String url;
	String avatarLarge;
	int statusesCount;
	int vclubMember;
	int followersCount;
	int isGuardian;
	String location;
	CommentCommentsUserInsecurity insecurity;
	String verifiedSource;

	CommentCommentsUser({this.isTeenager, this.allowAllActMsg, this.favouritesCount, this.urank, this.verifiedTrade, this.weihao, this.verifiedSourceUrl, this.province, this.screenName, this.id, this.geoEnabled, this.likeMe, this.like, this.verifiedType, this.tabManage, this.pagefriendsCount, this.domain, this.following, this.name, this.coverImagePhone, this.idstr, this.followMe, this.friendsCount, this.creditScore, this.gender, this.city, this.profileUrl, this.description, this.createdAt, this.remark, this.ptype, this.verifiedReasonUrl, this.blockWord, this.avatarHd, this.mbtype, this.biFollowersCount, this.userAbility, this.isTeenagerList, this.verifiedReason, this.storyReadState, this.videoStatusCount, this.mbrank, this.lang, this.xClass, this.star, this.allowAllComment, this.onlineStatus, this.verified, this.profileImageUrl, this.blockApp, this.url, this.avatarLarge, this.statusesCount, this.vclubMember, this.followersCount, this.isGuardian, this.location, this.insecurity, this.verifiedSource});

	CommentCommentsUser.fromJson(Map<String, dynamic> json) {
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
		like = json['like'];
		verifiedType = json['verified_type'];
		tabManage = json['tab_manage'];
		pagefriendsCount = json['pagefriends_count'];
		domain = json['domain'];
		following = json['following'];
		name = json['name'];
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
		star = json['star'];
		allowAllComment = json['allow_all_comment'];
		onlineStatus = json['online_status'];
		verified = json['verified'];
		profileImageUrl = json['profile_image_url'];
		blockApp = json['block_app'];
		url = json['url'];
		avatarLarge = json['avatar_large'];
		statusesCount = json['statuses_count'];
		vclubMember = json['vclub_member'];
		followersCount = json['followers_count'];
		isGuardian = json['is_guardian'];
		location = json['location'];
		insecurity = json['insecurity'] != null ? new CommentCommentsUserInsecurity.fromJson(json['insecurity']) : null;
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
		data['like'] = this.like;
		data['verified_type'] = this.verifiedType;
		data['tab_manage'] = this.tabManage;
		data['pagefriends_count'] = this.pagefriendsCount;
		data['domain'] = this.domain;
		data['following'] = this.following;
		data['name'] = this.name;
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
		data['star'] = this.star;
		data['allow_all_comment'] = this.allowAllComment;
		data['online_status'] = this.onlineStatus;
		data['verified'] = this.verified;
		data['profile_image_url'] = this.profileImageUrl;
		data['block_app'] = this.blockApp;
		data['url'] = this.url;
		data['avatar_large'] = this.avatarLarge;
		data['statuses_count'] = this.statusesCount;
		data['vclub_member'] = this.vclubMember;
		data['followers_count'] = this.followersCount;
		data['is_guardian'] = this.isGuardian;
		data['location'] = this.location;
		if (this.insecurity != null) {
      data['insecurity'] = this.insecurity.toJson();
    }
		data['verified_source'] = this.verifiedSource;
		return data;
	}
}

class CommentCommentsUserInsecurity {
	bool sexualContent;

	CommentCommentsUserInsecurity({this.sexualContent});

	CommentCommentsUserInsecurity.fromJson(Map<String, dynamic> json) {
		sexualContent = json['sexual_content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sexual_content'] = this.sexualContent;
		return data;
	}
}

class CommentCommentsStatus {
	String idstr;
	bool isLongText;
	List<Null> hotWeiboTags;
	List<Null> textTagTips;
	String inReplyToStatusId;
	String createdAt;
	String mid;
	int mblogtype;
	String source;
	int attitudesCount;
	String bmiddlePic;
	dynamic geo;
	int positiveRecomFlag;
	int isShowBulletin;
	int hideFlag;
	List<Null> darwinTags;
	int pendingApprovalCount;
	String inReplyToScreenName;
	int mlevel;
	int picNum;
	String inReplyToUserId;
	int hasActionTypeCard;
	int id;
	String text;
	bool isPaid;
	int repostsCount;
	int rewardExhibitionType;
	bool favorited;
	int mblogVipType;
	int contentAuth;
	CommentCommentsStatusVisible visible;
	String gifIds;
	String thumbnailPic;
	String originalPic;
	bool canEdit;
	int textLength;
	bool truncated;
	int sourceType;
	List<CommantCommantsStatusPicUrls> picUrls;
	CommentCommentsStatusNumberDisplayStrategy numberDisplayStrategy;
	int bizFeature;
	int sourceAllowclick;
	int commentsCount;
	int showAdditionalIndication;
	CommentCommentsStatusCommentManageInfo commentManageInfo;
	int userType;
	CommentCommentsStatusUser user;
	int moreInfoType;

	CommentCommentsStatus({this.idstr, this.isLongText, this.hotWeiboTags, this.textTagTips, this.inReplyToStatusId, this.createdAt, this.mid, this.mblogtype, this.source, this.attitudesCount, this.bmiddlePic, this.geo, this.positiveRecomFlag, this.isShowBulletin, this.hideFlag, this.darwinTags, this.pendingApprovalCount, this.inReplyToScreenName, this.mlevel, this.picNum, this.inReplyToUserId, this.hasActionTypeCard, this.id, this.text, this.isPaid, this.repostsCount, this.rewardExhibitionType, this.favorited, this.mblogVipType, this.contentAuth, this.visible, this.gifIds, this.thumbnailPic, this.originalPic, this.canEdit, this.textLength, this.truncated, this.sourceType, this.picUrls, this.numberDisplayStrategy, this.bizFeature, this.sourceAllowclick, this.commentsCount, this.showAdditionalIndication, this.commentManageInfo, this.userType, this.user, this.moreInfoType});

	CommentCommentsStatus.fromJson(Map<String, dynamic> json) {
		idstr = json['idstr'];
		isLongText = json['isLongText'];
		if (json['hot_weibo_tags'] != null) {
			hotWeiboTags = new List<Null>();
		}
		if (json['text_tag_tips'] != null) {
			textTagTips = new List<Null>();
		}
		inReplyToStatusId = json['in_reply_to_status_id'];
		createdAt = json['created_at'];
		mid = json['mid'];
		mblogtype = json['mblogtype'];
		source = json['source'];
		attitudesCount = json['attitudes_count'];
		bmiddlePic = json['bmiddle_pic'];
		geo = json['geo'];
		positiveRecomFlag = json['positive_recom_flag'];
		isShowBulletin = json['is_show_bulletin'];
		hideFlag = json['hide_flag'];
		if (json['darwin_tags'] != null) {
			darwinTags = new List<Null>();
		}
		pendingApprovalCount = json['pending_approval_count'];
		inReplyToScreenName = json['in_reply_to_screen_name'];
		mlevel = json['mlevel'];
		picNum = json['pic_num'];
		inReplyToUserId = json['in_reply_to_user_id'];
		hasActionTypeCard = json['hasActionTypeCard'];
		id = json['id'];
		text = json['text'];
		isPaid = json['is_paid'];
		repostsCount = json['reposts_count'];
		rewardExhibitionType = json['reward_exhibition_type'];
		favorited = json['favorited'];
		mblogVipType = json['mblog_vip_type'];
		contentAuth = json['content_auth'];
		visible = json['visible'] != null ? new CommentCommentsStatusVisible.fromJson(json['visible']) : null;
		gifIds = json['gif_ids'];
		thumbnailPic = json['thumbnail_pic'];
		originalPic = json['original_pic'];
		canEdit = json['can_edit'];
		textLength = json['textLength'];
		truncated = json['truncated'];
		sourceType = json['source_type'];
		if (json['pic_urls'] != null) {
			picUrls = new List<CommantCommantsStatusPicUrls>();(json['pic_urls'] as List).forEach((v) { picUrls.add(new CommantCommantsStatusPicUrls.fromJson(v)); });
		}
		numberDisplayStrategy = json['number_display_strategy'] != null ? new CommentCommentsStatusNumberDisplayStrategy.fromJson(json['number_display_strategy']) : null;
		bizFeature = json['biz_feature'];
		sourceAllowclick = json['source_allowclick'];
		commentsCount = json['comments_count'];
		showAdditionalIndication = json['show_additional_indication'];
		commentManageInfo = json['comment_manage_info'] != null ? new CommentCommentsStatusCommentManageInfo.fromJson(json['comment_manage_info']) : null;
		userType = json['userType'];
		user = json['user'] != null ? new CommentCommentsStatusUser.fromJson(json['user']) : null;
		moreInfoType = json['more_info_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['idstr'] = this.idstr;
		data['isLongText'] = this.isLongText;
		if (this.hotWeiboTags != null) {
      data['hot_weibo_tags'] =  [];
    }
		if (this.textTagTips != null) {
      data['text_tag_tips'] =  [];
    }
		data['in_reply_to_status_id'] = this.inReplyToStatusId;
		data['created_at'] = this.createdAt;
		data['mid'] = this.mid;
		data['mblogtype'] = this.mblogtype;
		data['source'] = this.source;
		data['attitudes_count'] = this.attitudesCount;
		data['bmiddle_pic'] = this.bmiddlePic;
		data['geo'] = this.geo;
		data['positive_recom_flag'] = this.positiveRecomFlag;
		data['is_show_bulletin'] = this.isShowBulletin;
		data['hide_flag'] = this.hideFlag;
		if (this.darwinTags != null) {
      data['darwin_tags'] =  [];
    }
		data['pending_approval_count'] = this.pendingApprovalCount;
		data['in_reply_to_screen_name'] = this.inReplyToScreenName;
		data['mlevel'] = this.mlevel;
		data['pic_num'] = this.picNum;
		data['in_reply_to_user_id'] = this.inReplyToUserId;
		data['hasActionTypeCard'] = this.hasActionTypeCard;
		data['id'] = this.id;
		data['text'] = this.text;
		data['is_paid'] = this.isPaid;
		data['reposts_count'] = this.repostsCount;
		data['reward_exhibition_type'] = this.rewardExhibitionType;
		data['favorited'] = this.favorited;
		data['mblog_vip_type'] = this.mblogVipType;
		data['content_auth'] = this.contentAuth;
		if (this.visible != null) {
      data['visible'] = this.visible.toJson();
    }
		data['gif_ids'] = this.gifIds;
		data['thumbnail_pic'] = this.thumbnailPic;
		data['original_pic'] = this.originalPic;
		data['can_edit'] = this.canEdit;
		data['textLength'] = this.textLength;
		data['truncated'] = this.truncated;
		data['source_type'] = this.sourceType;
		if (this.picUrls != null) {
      data['pic_urls'] =  this.picUrls.map((v) => v.toJson()).toList();
    }
		if (this.numberDisplayStrategy != null) {
      data['number_display_strategy'] = this.numberDisplayStrategy.toJson();
    }
		data['biz_feature'] = this.bizFeature;
		data['source_allowclick'] = this.sourceAllowclick;
		data['comments_count'] = this.commentsCount;
		data['show_additional_indication'] = this.showAdditionalIndication;
		if (this.commentManageInfo != null) {
      data['comment_manage_info'] = this.commentManageInfo.toJson();
    }
		data['userType'] = this.userType;
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		data['more_info_type'] = this.moreInfoType;
		return data;
	}
}

class CommentCommentsStatusVisible {
	int listId;
	int type;

	CommentCommentsStatusVisible({this.listId, this.type});

	CommentCommentsStatusVisible.fromJson(Map<String, dynamic> json) {
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

class CommantCommantsStatusPicUrls {
	String thumbnailPic;

	CommantCommantsStatusPicUrls({this.thumbnailPic});

	CommantCommantsStatusPicUrls.fromJson(Map<String, dynamic> json) {
		thumbnailPic = json['thumbnail_pic'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['thumbnail_pic'] = this.thumbnailPic;
		return data;
	}
}

class CommentCommentsStatusNumberDisplayStrategy {
	int applyScenarioFlag;
	int displayTextMinNumber;
	String displayText;

	CommentCommentsStatusNumberDisplayStrategy({this.applyScenarioFlag, this.displayTextMinNumber, this.displayText});

	CommentCommentsStatusNumberDisplayStrategy.fromJson(Map<String, dynamic> json) {
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

class CommentCommentsStatusCommentManageInfo {
	int commentPermissionType;
	int approvalCommentType;

	CommentCommentsStatusCommentManageInfo({this.commentPermissionType, this.approvalCommentType});

	CommentCommentsStatusCommentManageInfo.fromJson(Map<String, dynamic> json) {
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

class CommentCommentsStatusUser {
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
	CommentCommentsStatusUserInsecurity insecurity;
	String verifiedReasonModified;
	String verifiedSource;

	CommentCommentsStatusUser({this.isTeenager, this.allowAllActMsg, this.favouritesCount, this.urank, this.verifiedTrade, this.weihao, this.verifiedSourceUrl, this.province, this.screenName, this.id, this.geoEnabled, this.likeMe, this.verifiedContactMobile, this.avatargjId, this.like, this.verifiedType, this.tabManage, this.verifiedTypeExt, this.pagefriendsCount, this.domain, this.following, this.name, this.verifiedContactEmail, this.coverImagePhone, this.idstr, this.followMe, this.friendsCount, this.creditScore, this.gender, this.city, this.profileUrl, this.description, this.createdAt, this.remark, this.ptype, this.verifiedReasonUrl, this.blockWord, this.verifiedState, this.avatarHd, this.mbtype, this.biFollowersCount, this.userAbility, this.isTeenagerList, this.verifiedReason, this.storyReadState, this.videoStatusCount, this.mbrank, this.lang, this.xClass, this.verifiedLevel, this.star, this.allowAllComment, this.hasServiceTel, this.onlineStatus, this.verified, this.profileImageUrl, this.blockApp, this.url, this.verifiedContactName, this.avatarLarge, this.statusesCount, this.vclubMember, this.followersCount, this.isGuardian, this.location, this.insecurity, this.verifiedReasonModified, this.verifiedSource});

	CommentCommentsStatusUser.fromJson(Map<String, dynamic> json) {
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
		insecurity = json['insecurity'] != null ? new CommentCommentsStatusUserInsecurity.fromJson(json['insecurity']) : null;
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

class CommentCommentsStatusUserInsecurity {
	bool sexualContent;

	CommentCommentsStatusUserInsecurity({this.sexualContent});

	CommentCommentsStatusUserInsecurity.fromJson(Map<String, dynamic> json) {
		sexualContent = json['sexual_content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sexual_content'] = this.sexualContent;
		return data;
	}
}

class CommentStatus {
	bool isLongText;
	List<Null> hotWeiboTags;
	String inReplyToStatusId;
	int mblogtype;
	String source;
	int attitudesCount;
	String bmiddlePic;
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
	CommentStatusVisible visible;
	String gifIds;
	int sourceType;
	List<CommantStatusPicUrls> picUrls;
	int bizFeature;
	int commentsCount;
	int userType;
	String idstr;
	List<Null> textTagTips;
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
	String thumbnailPic;
	String rewardScheme;
	String originalPic;
	bool canEdit;
	int textLength;
	bool truncated;
	CommentStatusNumberDisplayStrategy numberDisplayStrategy;
	int sourceAllowclick;
	int showAdditionalIndication;
	CommentStatusCommentManageInfo commentManageInfo;
	CommentStatusUser user;
	int moreInfoType;

	CommentStatus({this.isLongText, this.hotWeiboTags, this.inReplyToStatusId, this.mblogtype, this.source, this.attitudesCount, this.bmiddlePic, this.positiveRecomFlag, this.isShowBulletin, this.hideFlag, this.mlevel, this.inReplyToUserId, this.hasActionTypeCard, this.id, this.text, this.mblogVipType, this.contentAuth, this.visible, this.gifIds, this.sourceType, this.picUrls, this.bizFeature, this.commentsCount, this.userType, this.idstr, this.textTagTips, this.createdAt, this.mid, this.geo, this.darwinTags, this.pendingApprovalCount, this.inReplyToScreenName, this.picNum, this.isPaid, this.repostsCount, this.rewardExhibitionType, this.favorited, this.thumbnailPic, this.rewardScheme, this.originalPic, this.canEdit, this.textLength, this.truncated, this.numberDisplayStrategy, this.sourceAllowclick, this.showAdditionalIndication, this.commentManageInfo, this.user, this.moreInfoType});

	CommentStatus.fromJson(Map<String, dynamic> json) {
		isLongText = json['isLongText'];
		if (json['hot_weibo_tags'] != null) {
			hotWeiboTags = new List<Null>();
		}
		inReplyToStatusId = json['in_reply_to_status_id'];
		mblogtype = json['mblogtype'];
		source = json['source'];
		attitudesCount = json['attitudes_count'];
		bmiddlePic = json['bmiddle_pic'];
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
		visible = json['visible'] != null ? new CommentStatusVisible.fromJson(json['visible']) : null;
		gifIds = json['gif_ids'];
		sourceType = json['source_type'];
		if (json['pic_urls'] != null) {
			picUrls = new List<CommantStatusPicUrls>();(json['pic_urls'] as List).forEach((v) { picUrls.add(new CommantStatusPicUrls.fromJson(v)); });
		}
		bizFeature = json['biz_feature'];
		commentsCount = json['comments_count'];
		userType = json['userType'];
		idstr = json['idstr'];
		if (json['text_tag_tips'] != null) {
			textTagTips = new List<Null>();
		}
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
		thumbnailPic = json['thumbnail_pic'];
		rewardScheme = json['reward_scheme'];
		originalPic = json['original_pic'];
		canEdit = json['can_edit'];
		textLength = json['textLength'];
		truncated = json['truncated'];
		numberDisplayStrategy = json['number_display_strategy'] != null ? new CommentStatusNumberDisplayStrategy.fromJson(json['number_display_strategy']) : null;
		sourceAllowclick = json['source_allowclick'];
		showAdditionalIndication = json['show_additional_indication'];
		commentManageInfo = json['comment_manage_info'] != null ? new CommentStatusCommentManageInfo.fromJson(json['comment_manage_info']) : null;
		user = json['user'] != null ? new CommentStatusUser.fromJson(json['user']) : null;
		moreInfoType = json['more_info_type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['isLongText'] = this.isLongText;
		if (this.hotWeiboTags != null) {
      data['hot_weibo_tags'] =  [];
    }
		data['in_reply_to_status_id'] = this.inReplyToStatusId;
		data['mblogtype'] = this.mblogtype;
		data['source'] = this.source;
		data['attitudes_count'] = this.attitudesCount;
		data['bmiddle_pic'] = this.bmiddlePic;
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
      data['pic_urls'] =  this.picUrls.map((v) => v.toJson()).toList();
    }
		data['biz_feature'] = this.bizFeature;
		data['comments_count'] = this.commentsCount;
		data['userType'] = this.userType;
		data['idstr'] = this.idstr;
		if (this.textTagTips != null) {
      data['text_tag_tips'] =  [];
    }
		data['created_at'] = this.createdAt;
		data['mid'] = this.mid;
		data['geo'] = this.geo;
		if (this.darwinTags != null) {
      data['darwin_tags'] =  [];
    }
		data['pending_approval_count'] = this.pendingApprovalCount;
		data['in_reply_to_screen_name'] = this.inReplyToScreenName;
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
		return data;
	}
}

class CommentStatusVisible {
	int listId;
	int type;

	CommentStatusVisible({this.listId, this.type});

	CommentStatusVisible.fromJson(Map<String, dynamic> json) {
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

class CommantStatusPicUrls {
	String thumbnailPic;

	CommantStatusPicUrls({this.thumbnailPic});

	CommantStatusPicUrls.fromJson(Map<String, dynamic> json) {
		thumbnailPic = json['thumbnail_pic'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['thumbnail_pic'] = this.thumbnailPic;
		return data;
	}
}

class CommentStatusNumberDisplayStrategy {
	int applyScenarioFlag;
	int displayTextMinNumber;
	String displayText;

	CommentStatusNumberDisplayStrategy({this.applyScenarioFlag, this.displayTextMinNumber, this.displayText});

	CommentStatusNumberDisplayStrategy.fromJson(Map<String, dynamic> json) {
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

class CommentStatusCommentManageInfo {
	int commentPermissionType;
	int approvalCommentType;

	CommentStatusCommentManageInfo({this.commentPermissionType, this.approvalCommentType});

	CommentStatusCommentManageInfo.fromJson(Map<String, dynamic> json) {
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

class CommentStatusUser {
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
	CommentStatusUserInsecurity insecurity;
	String verifiedReasonModified;
	String verifiedSource;

	CommentStatusUser({this.isTeenager, this.allowAllActMsg, this.favouritesCount, this.urank, this.verifiedTrade, this.weihao, this.verifiedSourceUrl, this.province, this.screenName, this.id, this.geoEnabled, this.likeMe, this.verifiedContactMobile, this.avatargjId, this.like, this.verifiedType, this.tabManage, this.verifiedTypeExt, this.pagefriendsCount, this.domain, this.following, this.name, this.verifiedContactEmail, this.coverImagePhone, this.idstr, this.followMe, this.friendsCount, this.creditScore, this.gender, this.city, this.profileUrl, this.description, this.createdAt, this.remark, this.ptype, this.verifiedReasonUrl, this.blockWord, this.verifiedState, this.avatarHd, this.mbtype, this.biFollowersCount, this.userAbility, this.isTeenagerList, this.verifiedReason, this.storyReadState, this.videoStatusCount, this.mbrank, this.lang, this.xClass, this.verifiedLevel, this.star, this.allowAllComment, this.hasServiceTel, this.onlineStatus, this.verified, this.profileImageUrl, this.blockApp, this.url, this.verifiedContactName, this.avatarLarge, this.statusesCount, this.vclubMember, this.followersCount, this.isGuardian, this.location, this.insecurity, this.verifiedReasonModified, this.verifiedSource});

	CommentStatusUser.fromJson(Map<String, dynamic> json) {
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
		insecurity = json['insecurity'] != null ? new CommentStatusUserInsecurity.fromJson(json['insecurity']) : null;
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

class CommentStatusUserInsecurity {
	bool sexualContent;

	CommentStatusUserInsecurity({this.sexualContent});

	CommentStatusUserInsecurity.fromJson(Map<String, dynamic> json) {
		sexualContent = json['sexual_content'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sexual_content'] = this.sexualContent;
		return data;
	}
}
