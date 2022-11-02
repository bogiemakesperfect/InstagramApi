// To parse this JSON data, do
//
//     final ney = neyFromJson(jsonString);

import 'dart:convert';

Ney neyFromJson(String str) => Ney.fromJson(json.decode(str));

String neyToJson(Ney data) => json.encode(data.toJson());

class Ney {
    Ney({
        required this.user,
        required this.status,
    });

    User ?user;
    String ?status;

    factory Ney.fromJson(Map<String, dynamic> json) => Ney(
        user: User.fromJson(json["user"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
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
        required this.hasAnonymousProfilePicture,
        required this.isSupervisionFeaturesEnabled,
        required this.biography,
        required this.canLinkEntitiesInBio,
        required this.biographyWithEntities,
        required this.externalUrl,
        required this.showFbLinkOnProfile,
        required this.primaryProfileLinkType,
        required this.reelAutoArchive,
        required this.hdProfilePicVersions,
        required this.hdProfilePicUrlInfo,
        required this.showConversionEditEntry,
        required this.allowedCommenterType,
        required this.hasHighlightReels,
        required this.isBusiness,
        required this.professionalConversionSuggestedAccountType,
        required this.accountType,
        this.isCallToActionEnabled,
        required this.isCategoryTappable,
        required this.interopMessagingUserFbid,
        required this.bioLinks,
        required this.canAddFbGroupLinkOnProfile,
        required this.isQuietModeEnabled,
        required this.isHideMoreCommentEnabled,
        required this.personalAccountAdsPageName,
        required this.personalAccountAdsPageId,
        required this.accountBadges,
        required this.fbidV2,
        required this.isMutedWordsGlobalEnabled,
        required this.isMutedWordsCustomEnabled,
        required this.isMutedWordsSpamscamEnabled,
        required this.likedClipsCount,
        required this.allMediaCount,
        required this.birthday,
        required this.trustedUsername,
        required this.trustDays,
        required this.profileEditParams,
    });

    int pk;
    String username;
    String fullName;
    bool isPrivate;
    String pkId;
    String profilePicUrl;
    String profilePicId;
    bool isVerified;
    bool hasAnonymousProfilePicture;
    bool isSupervisionFeaturesEnabled;
    String biography;
    bool canLinkEntitiesInBio;
    BiographyWithEntities biographyWithEntities;
    String externalUrl;
    bool showFbLinkOnProfile;
    int primaryProfileLinkType;
    String reelAutoArchive;
    List<HdProfilePic> hdProfilePicVersions;
    HdProfilePic hdProfilePicUrlInfo;
    bool showConversionEditEntry;
    String allowedCommenterType;
    bool hasHighlightReels;
    bool isBusiness;
    int professionalConversionSuggestedAccountType;
    int accountType;
    dynamic isCallToActionEnabled;
    bool isCategoryTappable;
    int interopMessagingUserFbid;
    List<dynamic> bioLinks;
    bool canAddFbGroupLinkOnProfile;
    bool isQuietModeEnabled;
    bool isHideMoreCommentEnabled;
    String personalAccountAdsPageName;
    String personalAccountAdsPageId;
    List<dynamic> accountBadges;
    double fbidV2;
    bool isMutedWordsGlobalEnabled;
    bool isMutedWordsCustomEnabled;
    bool isMutedWordsSpamscamEnabled;
    int ?likedClipsCount;
    int ?allMediaCount;
    DateTime ?birthday;
    String ?trustedUsername;
    int ?trustDays;
    ProfileEditParams ?profileEditParams;

    factory User.fromJson(Map<String, dynamic> json) => User(
        pk: json["pk"],
        username: json["username"],
        fullName: json["full_name"],
        isPrivate: json["is_private"],
        pkId: json["pk_id"],
        profilePicUrl: json["profile_pic_url"],
        profilePicId: json["profile_pic_id"],
        isVerified: json["is_verified"],
        hasAnonymousProfilePicture: json["has_anonymous_profile_picture"],
        isSupervisionFeaturesEnabled: json["is_supervision_features_enabled"],
        biography: json["biography"],
        canLinkEntitiesInBio: json["can_link_entities_in_bio"],
        biographyWithEntities: BiographyWithEntities.fromJson(json["biography_with_entities"]),
        externalUrl: json["external_url"],
        showFbLinkOnProfile: json["show_fb_link_on_profile"],
        primaryProfileLinkType: json["primary_profile_link_type"],
        reelAutoArchive: json["reel_auto_archive"],
        hdProfilePicVersions: List<HdProfilePic>.from(json["hd_profile_pic_versions"].map((x) => HdProfilePic.fromJson(x))),
        hdProfilePicUrlInfo: HdProfilePic.fromJson(json["hd_profile_pic_url_info"]),
        showConversionEditEntry: json["show_conversion_edit_entry"],
        allowedCommenterType: json["allowed_commenter_type"],
        hasHighlightReels: json["has_highlight_reels"],
        isBusiness: json["is_business"],
        professionalConversionSuggestedAccountType: json["professional_conversion_suggested_account_type"],
        accountType: json["account_type"],
        isCallToActionEnabled: json["is_call_to_action_enabled"],
        isCategoryTappable: json["is_category_tappable"],
        interopMessagingUserFbid: json["interop_messaging_user_fbid"],
        bioLinks: List<dynamic>.from(json["bio_links"].map((x) => x)),
        canAddFbGroupLinkOnProfile: json["can_add_fb_group_link_on_profile"],
        isQuietModeEnabled: json["is_quiet_mode_enabled"],
        isHideMoreCommentEnabled: json["is_hide_more_comment_enabled"],
        personalAccountAdsPageName: json["personal_account_ads_page_name"],
        personalAccountAdsPageId: json["personal_account_ads_page_id"],
        accountBadges: List<dynamic>.from(json["account_badges"].map((x) => x)),
        fbidV2: json["fbid_v2"].toDouble(),
        isMutedWordsGlobalEnabled: json["is_muted_words_global_enabled"],
        isMutedWordsCustomEnabled: json["is_muted_words_custom_enabled"],
        isMutedWordsSpamscamEnabled: json["is_muted_words_spamscam_enabled"],
        likedClipsCount: json["liked_clips_count"],
        allMediaCount: json["all_media_count"],
        birthday: DateTime.parse(json["birthday"]),
        trustedUsername: json["trusted_username"],
        trustDays: json["trust_days"],
        profileEditParams: ProfileEditParams.fromJson(json["profile_edit_params"]),
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
        "has_anonymous_profile_picture": hasAnonymousProfilePicture,
        "is_supervision_features_enabled": isSupervisionFeaturesEnabled,
        "biography": biography,
        "can_link_entities_in_bio": canLinkEntitiesInBio,
        "biography_with_entities": biographyWithEntities.toJson(),
        "external_url": externalUrl,
        "show_fb_link_on_profile": showFbLinkOnProfile,
        "primary_profile_link_type": primaryProfileLinkType,
        "reel_auto_archive": reelAutoArchive,
        "hd_profile_pic_versions": List<dynamic>.from(hdProfilePicVersions.map((x) => x.toJson())),
        "hd_profile_pic_url_info": hdProfilePicUrlInfo.toJson(),
        "show_conversion_edit_entry": showConversionEditEntry,
        "allowed_commenter_type": allowedCommenterType,
        "has_highlight_reels": hasHighlightReels,
        "is_business": isBusiness,
        "professional_conversion_suggested_account_type": professionalConversionSuggestedAccountType,
        "account_type": accountType,
        "is_call_to_action_enabled": isCallToActionEnabled,
        "is_category_tappable": isCategoryTappable,
        "interop_messaging_user_fbid": interopMessagingUserFbid,
        "bio_links": List<dynamic>.from(bioLinks.map((x) => x)),
        "can_add_fb_group_link_on_profile": canAddFbGroupLinkOnProfile,
        "is_quiet_mode_enabled": isQuietModeEnabled,
        "is_hide_more_comment_enabled": isHideMoreCommentEnabled,
        "personal_account_ads_page_name": personalAccountAdsPageName,
        "personal_account_ads_page_id": personalAccountAdsPageId,
        "account_badges": List<dynamic>.from(accountBadges.map((x) => x)),
        "fbid_v2": fbidV2,
        "is_muted_words_global_enabled": isMutedWordsGlobalEnabled,
        "is_muted_words_custom_enabled": isMutedWordsCustomEnabled,
        "is_muted_words_spamscam_enabled": isMutedWordsSpamscamEnabled,
        "liked_clips_count": likedClipsCount,
        "all_media_count": allMediaCount,
        "birthday": "${birthday?.year.toString().padLeft(4, '0')}-${birthday?.month.toString().padLeft(2, '0')}-${birthday?.day.toString().padLeft(2, '0')}",
        "trusted_username": trustedUsername,
        "trust_days": trustDays,
        "profile_edit_params": profileEditParams?.toJson(),
    };
}

class BiographyWithEntities {
    BiographyWithEntities({
        required this.rawText,
        required this.entities,
    });

    String rawText;
    List<dynamic> entities;

    factory BiographyWithEntities.fromJson(Map<String, dynamic> json) => BiographyWithEntities(
        rawText: json["raw_text"],
        entities: List<dynamic>.from(json["entities"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "raw_text": rawText,
        "entities": List<dynamic>.from(entities.map((x) => x)),
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

class ProfileEditParams {
    ProfileEditParams({
        required this.username,
        required this.fullName,
    });

    Name username;
    Name fullName;

    factory ProfileEditParams.fromJson(Map<String, dynamic> json) => ProfileEditParams(
        username: Name.fromJson(json["username"]),
        fullName: Name.fromJson(json["full_name"]),
    );

    Map<String, dynamic> toJson() => {
        "username": username.toJson(),
        "full_name": fullName.toJson(),
    };
}

class Name {
    Name({
        required this.shouldShowConfirmationDialog,
        required this.isPendingReview,
        required this.confirmationDialogText,
        required this.disclaimerText,
    });

    bool shouldShowConfirmationDialog;
    bool isPendingReview;
    String confirmationDialogText;
    String disclaimerText;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        shouldShowConfirmationDialog: json["should_show_confirmation_dialog"],
        isPendingReview: json["is_pending_review"],
        confirmationDialogText: json["confirmation_dialog_text"],
        disclaimerText: json["disclaimer_text"],
    );

    Map<String, dynamic> toJson() => {
        "should_show_confirmation_dialog": shouldShowConfirmationDialog,
        "is_pending_review": isPendingReview,
        "confirmation_dialog_text": confirmationDialogText,
        "disclaimer_text": disclaimerText,
    };
}
