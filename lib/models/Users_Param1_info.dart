// To parse this JSON data, do
//
//     final userInfo = userInfoFromJson(jsonString);

import 'dart:convert';

UserInfo userInfoFromJson(String str) => UserInfo.fromJson(json.decode(str));

String userInfoToJson(UserInfo data) => json.encode(data.toJson());

class UserInfo {
    UserInfo({
        required this.user,
        required this.status,
    });

    User user;
    String status;

    factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        user: User.fromJson(json["user"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "status": status,
    };
}

class User {
    User({
        required this.pk,
        required this.username,
        required this.fullName,
        required this.isPrivate,
        required this.pkId,
        required this.profilePicUrl,
        required this.profilePicId,
        required this.isVerified,
        required this.followFrictionType,
        required this.hasAnonymousProfilePicture,
        required this.mediaCount,
        required this.followerCount,
        required this.followingCount,
        required this.followingTagCount,
        required this.isSupervisionFeaturesEnabled,
        required this.biography,
        required this.canLinkEntitiesInBio,
      
        required this.externalUrl,
        required this.showFbLinkOnProfile,
        required this.primaryProfileLinkType,
        required this.canBoostPost,
        required this.canSeeOrganicInsights,
        required this.showInsightsTerms,
        required this.canConvertToBusiness,
        required this.canCreateSponsorTags,
        required this.isAllowedToCreateStandaloneNonprofitFundraisers,
        required this.isAllowedToCreateStandalonePersonalFundraisers,
        required this.canCreateNewStandaloneFundraiser,
        required this.canCreateNewStandalonePersonalFundraiser,
        required this.canBeTaggedAsSponsor,
        required this.canSeeSupportInbox,
        required this.canSeeSupportInboxV1,
        required this.totalIgtvVideos,
        required this.hasVideos,
        required this.totalClipsCount,
        required this.hasSavedItems,
        required this.totalArEffects,
        required this.reelAutoArchive,
        required this.isProfileActionNeeded,
        required this.usertagsCount,
        required this.usertagReviewEnabled,
        required this.isNeedy,
        required this.isInterestAccount,
        required this.hasChaining,
        required this.hdProfilePicVersions,
        required this.hdProfilePicUrlInfo,
        required this.hasPlacedOrders,
        required this.fbpayExperienceEnabled,
        required this.showConversionEditEntry,
        required this.aggregatePromoteEngagement,
        required this.allowedCommenterType,
        required this.hasHighlightReels,
        required this.hasGuides,
        required this.isEligibleToShowFbCrossSharingNux,
        this.pageIdForNewSumaBizAccount,
        required this.canTagProductsFromMerchants,
        required this.creatorShoppingInfo,
        required this.eligibleShoppingSignupEntrypoints,
        required this.isIgdProductPickerEnabled,
        required this.isEligibleForAffiliateShopOnboarding,
        required this.eligibleShoppingFormats,
        required this.needsToAcceptShoppingSellerOnboardingTerms,
        required this.isShoppingSettingsEnabled,
        required this.isShoppingCommunityContentEnabled,
        required this.isShoppingAutoHighlightEligible,
        required this.isShoppingCatalogSourceSelectionEnabled,
        required this.isBusiness,
        required this.professionalConversionSuggestedAccountType,
        required this.accountType,
        this.isCallToActionEnabled,
        required this.isCategoryTappable,
        required this.interopMessagingUserFbid,
        required this.bioLinks,
        required this.canAddFbGroupLinkOnProfile,
       
        required this.allowMentionSetting,
        required this.allowTagSetting,
        required this.limitedInteractionsEnabled,
        required this.isQuietModeEnabled,
        required this.isHideMoreCommentEnabled,
        required this.transparencyProductEnabled,
        
        
        required this.accountBadges,
        required this.whatsappNumber,
        this.hasEligibleWhatsappLinkingCategory,
        required this.pronouns,
        required this.fbidV2,
        required this.isMutedWordsGlobalEnabled,
        required this.isMutedWordsCustomEnabled,
        required this.isMutedWordsSpamscamEnabled,
        required this.fanClubInfo,
        
        required this.likedClipsCount,
        required this.allMediaCount,
        required this.hasMusicOnProfile,
        required this.canShareRollCall,
        required this.isDirectRollCallEnabled,
        required this.includeDirectBlacklistStatus,
        required this.canFollowHashtag,
        required this.isPotentialBusiness,
        required this.requestContactEnabled,
        this.robiFeedbackSource,
        required this.isMemorialized,
        required this.openExternalUrlWithInAppBrowser,
        required this.hasExclusiveFeedContent,
        required this.hasFanClubSubscriptions,
        required this.pinnedChannelsInfo,
        required this.bestiesCount,
        required this.showBestiesBadge,
        required this.recentlyBestiedByCount,
        
        required this.aboutYourAccountBloksEntrypointEnabled,
        required this.autoExpandingChaining,
        required this.existingUserAgeCollectionEnabled,
        required this.showPostInsightsEntryPoint,
        required this.hasPublicTabThreads,
        required this.feedPostReshareDisabled,
        required this.autoExpandChaining,
        required this.isNewToInstagram,
        required this.highlightReshareDisabled,
    });

    String pk;
    String username;
    String fullName;
    bool isPrivate;
    String pkId;
    String profilePicUrl;
    String profilePicId;
    bool isVerified;
    int followFrictionType;
    bool hasAnonymousProfilePicture;
    int mediaCount;
    int followerCount;
    int followingCount;
    int followingTagCount;
    bool isSupervisionFeaturesEnabled;
    String biography;
    bool? canLinkEntitiesInBio;
    
    String externalUrl;
    bool showFbLinkOnProfile;
    int primaryProfileLinkType;
    bool canBoostPost;
    bool canSeeOrganicInsights;
    bool showInsightsTerms;
    bool canConvertToBusiness;
    bool canCreateSponsorTags;
    bool isAllowedToCreateStandaloneNonprofitFundraisers;
    bool isAllowedToCreateStandalonePersonalFundraisers;
    bool canCreateNewStandaloneFundraiser;
    bool canCreateNewStandalonePersonalFundraiser;
    bool canBeTaggedAsSponsor;
    bool canSeeSupportInbox;
    bool canSeeSupportInboxV1;
    int totalIgtvVideos;
    bool hasVideos;
    int totalClipsCount;
    bool hasSavedItems;
    int totalArEffects;
    String reelAutoArchive;
    bool isProfileActionNeeded;
    int usertagsCount;
    bool usertagReviewEnabled;
    bool isNeedy;
    bool isInterestAccount;
    bool? hasChaining;
    List<HdProfilePic> hdProfilePicVersions;
    HdProfilePic hdProfilePicUrlInfo;
    bool hasPlacedOrders;
    bool fbpayExperienceEnabled;
    bool showConversionEditEntry;
    bool aggregatePromoteEngagement;
    String allowedCommenterType;
    bool hasHighlightReels;
    bool hasGuides;
    bool isEligibleToShowFbCrossSharingNux;
    dynamic pageIdForNewSumaBizAccount;
    bool canTagProductsFromMerchants;
    CreatorShoppingInfo creatorShoppingInfo;
    List<dynamic> eligibleShoppingSignupEntrypoints;
    bool isIgdProductPickerEnabled;
    bool isEligibleForAffiliateShopOnboarding;
    List<dynamic> eligibleShoppingFormats;
    bool needsToAcceptShoppingSellerOnboardingTerms;
    bool isShoppingSettingsEnabled;
    bool isShoppingCommunityContentEnabled;
    bool isShoppingAutoHighlightEligible;
    bool isShoppingCatalogSourceSelectionEnabled;
    bool isBusiness;
    int professionalConversionSuggestedAccountType;
    int accountType;
    dynamic isCallToActionEnabled;
    bool isCategoryTappable;
    String interopMessagingUserFbid;
    List<dynamic> bioLinks;
    bool canAddFbGroupLinkOnProfile;
   
    String allowMentionSetting;
    String allowTagSetting;
    bool limitedInteractionsEnabled;
    bool isQuietModeEnabled;
    bool isHideMoreCommentEnabled;
    bool transparencyProductEnabled;
    
    
    List<dynamic> accountBadges;
    String whatsappNumber;
    dynamic hasEligibleWhatsappLinkingCategory;
    List<dynamic> pronouns;
    String fbidV2;
    bool isMutedWordsGlobalEnabled;
    bool isMutedWordsCustomEnabled;
    bool isMutedWordsSpamscamEnabled;
    FanClubInfo fanClubInfo;
    
    int ?likedClipsCount;
    int ?allMediaCount;
    bool hasMusicOnProfile;
    bool canShareRollCall;
    bool isDirectRollCallEnabled;
    bool includeDirectBlacklistStatus;
    bool canFollowHashtag;
    bool isPotentialBusiness;
    bool requestContactEnabled;
    dynamic robiFeedbackSource;
    bool isMemorialized;
    bool openExternalUrlWithInAppBrowser;
    bool hasExclusiveFeedContent;
    bool hasFanClubSubscriptions;
    PinnedChannelsInfo pinnedChannelsInfo;
    int bestiesCount;
    bool showBestiesBadge;
    int recentlyBestiedByCount;
    
    bool aboutYourAccountBloksEntrypointEnabled;
    bool autoExpandingChaining;
    bool existingUserAgeCollectionEnabled;
    bool showPostInsightsEntryPoint;
    bool hasPublicTabThreads;
    bool feedPostReshareDisabled;
    bool autoExpandChaining;
    bool isNewToInstagram;
    bool highlightReshareDisabled;

    factory User.fromJson(Map<String, dynamic> json) => User(
        pk: json["pk"],
        username: json["username"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        pkId: json["pk_id"],
        profilePicUrl: json["profile_pic_url"],
        profilePicId: json["profile_pic_id"],
        isVerified: json["is_verified"],
        followFrictionType: json["follow_friction_type"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        mediaCount: json["media_count"],
        followerCount: json["follower_count"],
        followingCount: json["following_count"],
        followingTagCount: json["following_tag_count"],
        isSupervisionFeaturesEnabled: json["is_supervision_features_enabled"],
        biography: json["biography"],
        canLinkEntitiesInBio: json["can_link_entities_in_bio"],
        
        externalUrl: json["external_url"],
        showFbLinkOnProfile: json["show_fb_link_on_profile"],
        primaryProfileLinkType: json["primary_profile_link_type"],
        canBoostPost: json["can_boost_post"],
        canSeeOrganicInsights: json["can_see_organic_insights"],
        showInsightsTerms: json["show_insights_terms"],
        canConvertToBusiness: json["can_convert_to_business"],
        canCreateSponsorTags: json["can_create_sponsor_tags"],
        isAllowedToCreateStandaloneNonprofitFundraisers: json["is_allowed_to_create_standalone_nonprofit_fundraisers"],
        isAllowedToCreateStandalonePersonalFundraisers: json["is_allowed_to_create_standalone_personal_fundraisers"],
        canCreateNewStandaloneFundraiser: json["can_create_new_standalone_fundraiser"],
        canCreateNewStandalonePersonalFundraiser: json["can_create_new_standalone_personal_fundraiser"],
        canBeTaggedAsSponsor: json["can_be_tagged_as_sponsor"],
        canSeeSupportInbox: json["can_see_support_inbox"],
        canSeeSupportInboxV1: json["can_see_support_inbox_v1"],
        totalIgtvVideos: json["total_igtv_videos"],
        hasVideos: json["has_videos"],
        totalClipsCount: json["total_clips_count"],
        hasSavedItems: json["has_saved_items"],
        totalArEffects: json["total_ar_effects"],
        reelAutoArchive: json["reel_auto_archive"],
        isProfileActionNeeded: json["is_profile_action_needed"],
        usertagsCount: json["usertags_count"],
        usertagReviewEnabled: json["usertag_review_enabled"],
        isNeedy: json["is_needy"],
        isInterestAccount: json["is_interest_account"],
        hasChaining: json["has_chaining"],
        hdProfilePicVersions: List<HdProfilePic>.from(json["hd_profile_pic_versions"].map((x) => HdProfilePic.fromJson(x))),
        hdProfilePicUrlInfo: HdProfilePic.fromJson(json["hd_profile_pic_url_info"]),
        hasPlacedOrders: json["has_placed_orders"],
        fbpayExperienceEnabled: json["fbpay_experience_enabled"],
        showConversionEditEntry: json["show_conversion_edit_entry"],
        aggregatePromoteEngagement: json["aggregate_promote_engagement"],
        allowedCommenterType: json["allowed_commenter_type"],
        hasHighlightReels: json["has_highlight_reels"],
        hasGuides: json["has_guides"],
        isEligibleToShowFbCrossSharingNux: json["is_eligible_to_show_fb_cross_sharing_nux"],
        pageIdForNewSumaBizAccount: json["page_id_for_new_suma_biz_account"],
        canTagProductsFromMerchants: json["can_tag_products_from_merchants"],
        creatorShoppingInfo: CreatorShoppingInfo.fromJson(json["creator_shopping_info"]),
        eligibleShoppingSignupEntrypoints: List<dynamic>.from(json["eligible_shopping_signup_entrypoints"].map((x) => x)),
        isIgdProductPickerEnabled: json["is_igd_product_picker_enabled"],
        isEligibleForAffiliateShopOnboarding: json["is_eligible_for_affiliate_shop_onboarding"],
        eligibleShoppingFormats: List<dynamic>.from(json["eligible_shopping_formats"].map((x) => x)),
        needsToAcceptShoppingSellerOnboardingTerms: json["needs_to_accept_shopping_seller_onboarding_terms"],
        isShoppingSettingsEnabled: json["is_shopping_settings_enabled"],
        isShoppingCommunityContentEnabled: json["is_shopping_community_content_enabled"],
        isShoppingAutoHighlightEligible: json["is_shopping_auto_highlight_eligible"],
        isShoppingCatalogSourceSelectionEnabled: json["is_shopping_catalog_source_selection_enabled"],
        isBusiness: json["is_business"],
        professionalConversionSuggestedAccountType: json["professional_conversion_suggested_account_type"],
        accountType: json["account_type"],
        isCallToActionEnabled: json["is_call_to_action_enabled"],
        isCategoryTappable: json["is_category_tappable"],
        interopMessagingUserFbid: json["interop_messaging_user_fbid"].toString(),
        bioLinks: List<dynamic>.from(json["bio_links"].map((x) => x)),
        canAddFbGroupLinkOnProfile: json["can_add_fb_group_link_on_profile"],
        
        allowMentionSetting: json["allow_mention_setting"],
        allowTagSetting: json["allow_tag_setting"],
        limitedInteractionsEnabled: json["limited_interactions_enabled"],
        isQuietModeEnabled: json["is_quiet_mode_enabled"],
        isHideMoreCommentEnabled: json["is_hide_more_comment_enabled"],
        transparencyProductEnabled: json["transparency_product_enabled"],
        
        
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        whatsappNumber: json["whatsapp_number"],
        hasEligibleWhatsappLinkingCategory: json["has_eligible_whatsapp_linking_category"],
        pronouns: List<dynamic>.from(json["pronouns"].map((x) => x)),
        fbidV2: json["fbid_v2"].toString(),
        isMutedWordsGlobalEnabled: json["is_muted_words_global_enabled"],
        isMutedWordsCustomEnabled: json["is_muted_words_custom_enabled"],
        isMutedWordsSpamscamEnabled: json["is_muted_words_spamscam_enabled"],
        fanClubInfo: FanClubInfo.fromJson(json["fan_club_info"]),
        
        likedClipsCount: json["liked_clips_count"],
        allMediaCount: json["all_media_count"],
        hasMusicOnProfile: json["has_music_on_profile"],
        canShareRollCall: json["can_share_roll_call"],
        isDirectRollCallEnabled: json["is_direct_roll_call_enabled"],
        includeDirectBlacklistStatus: json["include_direct_blacklist_status"],
        canFollowHashtag: json["can_follow_hashtag"],
        isPotentialBusiness: json["is_potential_business"],
        requestContactEnabled: json["request_contact_enabled"],
        robiFeedbackSource: json["robi_feedback_source"],
        isMemorialized: json["is_memorialized"],
        openExternalUrlWithInAppBrowser: json["open_external_url_with_in_app_browser"],
        hasExclusiveFeedContent: json["has_exclusive_feed_content"],
        hasFanClubSubscriptions: json["has_fan_club_subscriptions"],
        pinnedChannelsInfo: PinnedChannelsInfo.fromJson(json["pinned_channels_info"]),
        bestiesCount: json["besties_count"],
        showBestiesBadge: json["show_besties_badge"],
        recentlyBestiedByCount: json["recently_bestied_by_count"],
        
        aboutYourAccountBloksEntrypointEnabled: json["about_your_account_bloks_entrypoint_enabled"],
        autoExpandingChaining: json["auto_expanding_chaining"],
        existingUserAgeCollectionEnabled: json["existing_user_age_collection_enabled"],
        showPostInsightsEntryPoint: json["show_post_insights_entry_point"],
        hasPublicTabThreads: json["has_public_tab_threads"],
        feedPostReshareDisabled: json["feed_post_reshare_disabled"],
        autoExpandChaining: json["auto_expand_chaining"],
        isNewToInstagram: json["is_new_to_instagram"],
        highlightReshareDisabled: json["highlight_reshare_disabled"],
    );

    Map<String, dynamic> toJson() => {
        "pk": pk,
        "username": username,
        "full_name": fullName,
        "is_private": isPrivate,
        "pk_id": pkId,
        "profile_pic_url": profilePicUrl,
        "profile_pic_id": profilePicId,
        "is_verified": isVerified,
        "follow_friction_type": followFrictionType,
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "media_count": mediaCount,
        "follower_count": followerCount,
        "following_count": followingCount,
        "following_tag_count": followingTagCount,
        "is_supervision_features_enabled": isSupervisionFeaturesEnabled,
        "biography": biography,
        "can_link_entities_in_bio": canLinkEntitiesInBio,
        
        "external_url": externalUrl,
        "show_fb_link_on_profile": showFbLinkOnProfile,
        "primary_profile_link_type": primaryProfileLinkType,
        "can_boost_post": canBoostPost,
        "can_see_organic_insights": canSeeOrganicInsights,
        "show_insights_terms": showInsightsTerms,
        "can_convert_to_business": canConvertToBusiness,
        "can_create_sponsor_tags": canCreateSponsorTags,
        "is_allowed_to_create_standalone_nonprofit_fundraisers": isAllowedToCreateStandaloneNonprofitFundraisers,
        "is_allowed_to_create_standalone_personal_fundraisers": isAllowedToCreateStandalonePersonalFundraisers,
        "can_create_new_standalone_fundraiser": canCreateNewStandaloneFundraiser,
        "can_create_new_standalone_personal_fundraiser": canCreateNewStandalonePersonalFundraiser,
        "can_be_tagged_as_sponsor": canBeTaggedAsSponsor,
        "can_see_support_inbox": canSeeSupportInbox,
        "can_see_support_inbox_v1": canSeeSupportInboxV1,
        "total_igtv_videos": totalIgtvVideos,
        "has_videos": hasVideos,
        "total_clips_count": totalClipsCount,
        "has_saved_items": hasSavedItems,
        "total_ar_effects": totalArEffects,
        "reel_auto_archive": reelAutoArchive,
        "is_profile_action_needed": isProfileActionNeeded,
        "usertags_count": usertagsCount,
        "usertag_review_enabled": usertagReviewEnabled,
        "is_needy": isNeedy,
        "is_interest_account": isInterestAccount,
        "has_chaining": hasChaining,
        "hd_profile_pic_versions": List<dynamic>.from(hdProfilePicVersions.map((x) => x.toJson())),
        "hd_profile_pic_url_info": hdProfilePicUrlInfo.toJson(),
        "has_placed_orders": hasPlacedOrders,
        "fbpay_experience_enabled": fbpayExperienceEnabled,
        "show_conversion_edit_entry": showConversionEditEntry,
        "aggregate_promote_engagement": aggregatePromoteEngagement,
        "allowed_commenter_type": allowedCommenterType,
        "has_highlight_reels": hasHighlightReels,
        "has_guides": hasGuides,
        "is_eligible_to_show_fb_cross_sharing_nux": isEligibleToShowFbCrossSharingNux,
        "page_id_for_new_suma_biz_account": pageIdForNewSumaBizAccount,
        "can_tag_products_from_merchants": canTagProductsFromMerchants,
        "creator_shopping_info": creatorShoppingInfo.toJson(),
        "eligible_shopping_signup_entrypoints": List<dynamic>.from(eligibleShoppingSignupEntrypoints.map((x) => x)),
        "is_igd_product_picker_enabled": isIgdProductPickerEnabled,
        "is_eligible_for_affiliate_shop_onboarding": isEligibleForAffiliateShopOnboarding,
        "eligible_shopping_formats": List<dynamic>.from(eligibleShoppingFormats.map((x) => x)),
        "needs_to_accept_shopping_seller_onboarding_terms": needsToAcceptShoppingSellerOnboardingTerms,
        "is_shopping_settings_enabled": isShoppingSettingsEnabled,
        "is_shopping_community_content_enabled": isShoppingCommunityContentEnabled,
        "is_shopping_auto_highlight_eligible": isShoppingAutoHighlightEligible,
        "is_shopping_catalog_source_selection_enabled": isShoppingCatalogSourceSelectionEnabled,
        "is_business": isBusiness,
        "professional_conversion_suggested_account_type": professionalConversionSuggestedAccountType,
        "account_type": accountType,
        "is_call_to_action_enabled": isCallToActionEnabled,
        "is_category_tappable": isCategoryTappable,
        "interop_messaging_user_fbid": interopMessagingUserFbid,
        "bio_links": List<dynamic>.from(bioLinks.map((x) => x)),
        "can_add_fb_group_link_on_profile": canAddFbGroupLinkOnProfile,
        
        "allow_mention_setting": allowMentionSetting,
        "allow_tag_setting": allowTagSetting,
        "limited_interactions_enabled": limitedInteractionsEnabled,
        "is_quiet_mode_enabled": isQuietModeEnabled,
        "is_hide_more_comment_enabled": isHideMoreCommentEnabled,
        "transparency_product_enabled": transparencyProductEnabled,
        
        
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "whatsapp_number": whatsappNumber,
        "has_eligible_whatsapp_linking_category": hasEligibleWhatsappLinkingCategory,
        "pronouns": List<dynamic>.from(pronouns.map((x) => x)),
        "fbid_v2": fbidV2,
        "is_muted_words_global_enabled": isMutedWordsGlobalEnabled,
        "is_muted_words_custom_enabled": isMutedWordsCustomEnabled,
        "is_muted_words_spamscam_enabled": isMutedWordsSpamscamEnabled,
        "fan_club_info": fanClubInfo.toJson(),
        
        "liked_clips_count": likedClipsCount,
        "all_media_count": allMediaCount,
        "has_music_on_profile": hasMusicOnProfile,
        "can_share_roll_call": canShareRollCall,
        "is_direct_roll_call_enabled": isDirectRollCallEnabled,
        "include_direct_blacklist_status": includeDirectBlacklistStatus,
        "can_follow_hashtag": canFollowHashtag,
        "is_potential_business": isPotentialBusiness,
        "request_contact_enabled": requestContactEnabled,
        "robi_feedback_source": robiFeedbackSource,
        "is_memorialized": isMemorialized,
        "open_external_url_with_in_app_browser": openExternalUrlWithInAppBrowser,
        "has_exclusive_feed_content": hasExclusiveFeedContent,
        "has_fan_club_subscriptions": hasFanClubSubscriptions,
        "pinned_channels_info": pinnedChannelsInfo.toJson(),
        "besties_count": bestiesCount,
        "show_besties_badge": showBestiesBadge,
        "recently_bestied_by_count": recentlyBestiedByCount,
       
        "about_your_account_bloks_entrypoint_enabled": aboutYourAccountBloksEntrypointEnabled,
        "auto_expanding_chaining": autoExpandingChaining,
        "existing_user_age_collection_enabled": existingUserAgeCollectionEnabled,
        "show_post_insights_entry_point": showPostInsightsEntryPoint,
        "has_public_tab_threads": hasPublicTabThreads,
        "feed_post_reshare_disabled": feedPostReshareDisabled,
        "auto_expand_chaining": autoExpandChaining,
        "is_new_to_instagram": isNewToInstagram,
        "highlight_reshare_disabled": highlightReshareDisabled,
    };
}




class CreatorShoppingInfo {
    CreatorShoppingInfo({
        required this.linkedMerchantAccounts,
    });

    List<dynamic> linkedMerchantAccounts;

    factory CreatorShoppingInfo.fromJson(Map<String, dynamic> json) => CreatorShoppingInfo(
        linkedMerchantAccounts: List<dynamic>.from(json["linked_merchant_accounts"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "linked_merchant_accounts": List<dynamic>.from(linkedMerchantAccounts.map((x) => x)),
    };
}

class FanClubInfo {
    FanClubInfo({
        this.fanClubId,
        this.fanClubName,
        this.isFanClubReferralEligible,
        this.fanConsiderationPageRevampEligiblity,
        this.isFanClubGiftingEligible,
    });

    dynamic fanClubId;
    dynamic fanClubName;
    dynamic isFanClubReferralEligible;
    dynamic fanConsiderationPageRevampEligiblity;
    dynamic isFanClubGiftingEligible;

    factory FanClubInfo.fromJson(Map<String, dynamic> json) => FanClubInfo(
        fanClubId: json["fan_club_id"],
        fanClubName: json["fan_club_name"],
        isFanClubReferralEligible: json["is_fan_club_referral_eligible"],
        fanConsiderationPageRevampEligiblity: json["fan_consideration_page_revamp_eligiblity"],
        isFanClubGiftingEligible: json["is_fan_club_gifting_eligible"],
    );

    Map<String, dynamic> toJson() => {
        "fan_club_id": fanClubId,
        "fan_club_name": fanClubName,
        "is_fan_club_referral_eligible": isFanClubReferralEligible,
        "fan_consideration_page_revamp_eligiblity": fanConsiderationPageRevampEligiblity,
        "is_fan_club_gifting_eligible": isFanClubGiftingEligible,
    };
}

class HdProfilePic {
    HdProfilePic({
        required this.width,
        required this.height,
        required this.url,
    });

    int width;
    int height;
    String url;

    factory HdProfilePic.fromJson(Map<String, dynamic> json) => HdProfilePic(
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "url": url,
    };
}



class PinnedChannelsInfo {
    PinnedChannelsInfo({
        required this.pinnedChannelsList,
        required this.hasPublicChannels,
    });

    List<dynamic> pinnedChannelsList;
    bool hasPublicChannels;

    factory PinnedChannelsInfo.fromJson(Map<String, dynamic> json) => PinnedChannelsInfo(
        pinnedChannelsList: List<dynamic>.from(json["pinned_channels_list"].map((x) => x)),
        hasPublicChannels: json["has_public_channels"],
    );

    Map<String, dynamic> toJson() => {
        "pinned_channels_list": List<dynamic>.from(pinnedChannelsList.map((x) => x)),
        "has_public_channels": hasPublicChannels,
    };
}
