import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class MemberLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "church_id": "$churchId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Login',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/memberlogin',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church.id''',
      ));
  static String? churchName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.church.name''',
      ));
  static int? userCreatedTime(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  static String? userProfilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.profilePhoto''',
      ));
  static bool? userIsSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_saved''',
      ));
  static bool? userIsBaptized(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_baptized''',
      ));
  static bool? userISaMember(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_a_member_of_a_church''',
      ));
  static bool? userIsheardthegospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_heard_the_gospel''',
      ));
  static bool? userOptedForcommunications(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.opt_in''',
      ));
  static bool? userIsDiscipled(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_discipled''',
      ));
  static bool? userIsAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_agreed''',
      ));
  static bool? userIsServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_serving''',
      ));
  static bool? userUSerAddress(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.userAddress''',
      ));
  static bool? userPrivacyContact(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.privacy_contact''',
      ));
  static bool? userAboutComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_complete''',
      ));
  static bool? userAboutIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_is_public''',
      ));
  static bool? userContactComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.contact_complete''',
      ));
  static bool? userSalvationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_complete''',
      ));
  static bool? userSalvationIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_is_public''',
      ));
  static bool? userGeolocationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_complete''',
      ));
  static bool? userGeolocationIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_is_public''',
      ));
  static bool? userPhoneVerified(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.phone_verified''',
      ));
  static bool? userChurchRelationship(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.userChurch''',
      ));
}

class MemberLoginApprovalCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password",
  "church_id": "$churchId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Login Approval',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/memberloginApproval',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church.id''',
      ));
  static String? churchName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.church.name''',
      ));
  static int? userCreatedTime(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  static String? userProfilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.profilePhoto''',
      ));
  static bool? userIsSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_saved''',
      ));
  static bool? userIsBaptized(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_baptized''',
      ));
  static bool? userISaMember(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_a_member_of_a_church''',
      ));
  static bool? userIsheardthegospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_heard_the_gospel''',
      ));
  static bool? userOptedForcommunications(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.opt_in''',
      ));
  static bool? userIsDiscipled(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_discipled''',
      ));
  static bool? userIsAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_agreed''',
      ));
  static bool? userIsServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_serving''',
      ));
  static bool? userUSerAddress(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.userAddress''',
      ));
  static bool? userPrivacyContact(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.privacy_contact''',
      ));
  static bool? userAboutComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_complete''',
      ));
  static bool? userAboutIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_is_public''',
      ));
  static bool? userContactComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.contact_complete''',
      ));
  static bool? userSalvationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_complete''',
      ));
  static bool? userSalvationIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_is_public''',
      ));
  static bool? userGeolocationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_complete''',
      ));
  static bool? userGeolocationIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_is_public''',
      ));
  static bool? userPhoneVerified(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.phone_verified''',
      ));
  static bool? userChurchRelationship(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.userChurch''',
      ));
}

class YoutubeListCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Youtube List',
      apiUrl: 'https://api.aboundfi.com/api:vzsq_oUD/youtubeurl',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MyGroupListCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'My Group List',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/mygroups',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UserPrayersCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User Prayers',
      apiUrl: 'https://api.aboundfi.com/api:ScJhCWfk/userprayer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TeamDirectoryServingCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Team Directory Serving',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiessignup',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SavedDetailsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Saved Details',
      apiUrl: 'https://api.aboundfi.com/api:vuXdHAp6/savedDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BaptizedDateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Baptized Date',
      apiUrl: 'https://api.aboundfi.com/api:vuXdHAp6/baptizedDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ServingDateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Serving Date',
      apiUrl: 'https://api.aboundfi.com/api:vuXdHAp6/servingDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DiscipleshipDateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Discipleship Date',
      apiUrl: 'https://api.aboundfi.com/api:vuXdHAp6/discipleshipDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MembershipDateCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Membership Date',
      apiUrl: 'https://api.aboundfi.com/api:vuXdHAp6/membershipDate',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BibleReadiingCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Bible Readiing',
      apiUrl: 'https://api.aboundfi.com/api:rgNjvYK9/bible_reading_today',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DevotionsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Devotions',
      apiUrl: 'https://api.aboundfi.com/api:7PwslRrq/devotions_today',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetBulletinByIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? generalannouncementsId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bulletin By ID',
      apiUrl:
          'https://api.aboundfi.com/api:fuKs4M51/generalannouncements/$generalannouncementsId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? bulletinID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? createdDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? bulletinType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.bulletin_type_id''',
      ));
  static String? bulletinTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? bulletinContent(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.content''',
      ));
  static bool? bulletinPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_public''',
      ));
  static bool? bulletinArchived(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_archived''',
      ));
  static String? bulletinCreatedBy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy''',
      ));
  static String? bulletinImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static bool? bulletinMembers(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.members_only''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? userCreatedByID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class GetServingOpportunitiesIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Serving Opportunities ID',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunities/$servingopportunitiesId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? servingOpportunityID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? createdAT(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? createdbyID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy''',
      ));
  static String? servingOpportunityTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? servingOpportunityDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? servingOpportunityPhotoURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.photos''',
      ));
  static int? dayoftheweekID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.daysoftheweek_id''',
      ));
  static String? createdByName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.name''',
      ));
  static String? createdByEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.email''',
      ));
  static String? leaderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.name''',
      ));
  static String? leaderemail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.email''',
      ));
  static String? dayoftheweek(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._daysoftheweek.day''',
      ));
  static String? leaderID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.leader.id''',
      ));
  static bool? statusofthopportunity(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_completed''',
      ));
  static bool? frequency(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.oneTime''',
      ));
  static int? dueDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.due_date''',
      ));
  static String? leaderPhone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.phone''',
      ));
  static String? createduserphone(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.phone''',
      ));
}

class ChurchGroupIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchgroupId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Group ID',
      apiUrl:
          'https://api.aboundfi.com/api:tD5YIX3-/churchgroup/$churchgroupId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? churchGroupName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? churchGroupDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? schedule(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.schedule''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static String? createdBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdBy.name''',
      ));
  static String? createdByEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.email''',
      ));
  static String? createdByProfile(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.profilePhoto''',
      ));
  static String? leaderID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.leader.id''',
      ));
  static String? leaderName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.name''',
      ));
  static String? leaderEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.email''',
      ));
  static String? leaderPhotoURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.leader.profilePhoto''',
      ));
  static String? day(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dayoftheweek.day''',
      ));
  static int? dayID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dayoftheweek.id''',
      ));
  static String? createdByID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.createdBy.id''',
      ));
}

class GetBulletinIDViewCountCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? generalannouncementsId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bulletin ID View Count',
      apiUrl:
          'https://api.aboundfi.com/api:fuKs4M51/generalannoucementsviewsCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'generalAnnouncements_id': generalannouncementsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class ChurchPrayerResponseCountCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? prayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Prayer Response Count',
      apiUrl: 'https://api.aboundfi.com/api:11sPz9tq/churchprayerresponseCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'prayer_id': prayerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class ChurchPrayerResponseCountCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? prayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Prayer Response Count Copy Copy',
      apiUrl: 'https://api.aboundfi.com/api:11sPz9tq/churchprayerresponseCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'prayer_id': prayerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class UserResponseToAUserPrayerCountCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userPrayerSharedWithChurchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User Response to a User Prayer Count',
      apiUrl:
          'https://api.aboundfi.com/api:11sPz9tq/userresponse4sharedprayerwithchurchCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'userPrayerSharedWithChurch_id': userPrayerSharedWithChurchId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class ChurchGroupMembersCountCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchgroupId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Group Members Count',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/groupmemberCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'churchgroup_id': churchgroupId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class TeamDirectoryCOuntServingCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Team Directory COunt Serving',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiessignupCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'servingopportunities_id': servingopportunitiesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class TeamSizeInAServingOpportunityCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Team Size in a Serving Opportunity',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiessignupCount',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'servingopportunities_id': servingopportunitiesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$''',
      ));
}

class ChurchPrayerResponseExistsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? prayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Prayer Response Exists',
      apiUrl:
          'https://api.aboundfi.com/api:11sPz9tq/churchprayerresponseExists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'prayer_id': prayerId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? exists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class UserResponseToAUserPrayerExistsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userPrayerSharedWithChurchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User Response to a User Prayer Exists',
      apiUrl:
          'https://api.aboundfi.com/api:11sPz9tq/userresponse4sharedprayerwithchurchExists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'userPrayerSharedWithChurch_id': userPrayerSharedWithChurchId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? exists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class ServingInAMinistryExistCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Serving In a Ministry Exist',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiessignupExist4user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'servingopportunities_id': servingopportunitiesId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? exists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class GroupMemberExistsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchgroupId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Group Member Exists',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/groupmemberExists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'churchgroup_id': churchgroupId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? exists(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class GetBulletinIDReadReceiptCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? generalannouncementsId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bulletin ID Read Receipt',
      apiUrl:
          'https://api.aboundfi.com/api:fuKs4M51/generalannoucementsviewsRead',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'generalAnnouncements_id': generalannouncementsId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static bool? read(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$''',
      ));
}

class GetGroupIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? groupId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Group ID',
      apiUrl: 'https://api.aboundfi.com/api:FKbVSqc1/group/$groupId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? groupID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? createdAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? groupName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? groupDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? groupMeetingTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.meeting_time''',
      ));
  static String? groupImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.groupImage''',
      ));
  static String? groupCreatedBy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._user.name''',
      ));
  static String? groupMeetingDay(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$._daysoftheweek.day''',
      ));
}

class GetUSerPrayerIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userprayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get USer Prayer ID',
      apiUrl:
          'https://api.aboundfi.com/api:ScJhCWfk/userprayer/$userprayerId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? prayerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  static String? userPrayerTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? userPrayerDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? userPrayerCreated(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class GetUSerPrayerIDCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userprayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get USer Prayer ID Copy Copy',
      apiUrl:
          'https://api.aboundfi.com/api:ScJhCWfk/userprayer/$userprayerId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? groupID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  static String? userPrayerTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? userPrayerDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? userPrayerCreated(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class DeletePrayerIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userprayerId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Prayer ID',
      apiUrl:
          'https://api.aboundfi.com/api:ScJhCWfk/userprayer/$userprayerId',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? prayerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user_id''',
      ));
  static String? userPrayerTitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  static String? userPrayerDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? userPrayerCreated(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
}

class GetBibleReadingIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? bibleReadingId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Bible Reading ID',
      apiUrl:
          'https://api.aboundfi.com/api:rgNjvYK9/bible_reading/$bibleReadingId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? bibleReadingID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? createdAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? verseReference(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verseReference''',
      ));
  static String? notes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.notes''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static int? readingDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.readingDate''',
      ));
  static bool? isArchived(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isArchived''',
      ));
  static bool? isBulletin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.isBulletin''',
      ));
}

class GetDevotionsIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? devotionsId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Devotions ID',
      apiUrl: 'https://api.aboundfi.com/api:7PwslRrq/devotions/$devotionsId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? devotionsID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? createdAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? verseReference(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.verseReference''',
      ));
  static String? notes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.notes''',
      ));
  static String? image(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image''',
      ));
  static int? readingDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.readingDate''',
      ));
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
}

class GetEventByIDCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? eventId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Event by ID',
      apiUrl: 'https://api.aboundfi.com/api:JtFB9yc_/event/$eventId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? eventID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? eventCreated(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.church_id''',
      ));
  static String? eventTItle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? eventDescription(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static int? startDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.start_date_time''',
      ));
  static int? endDate(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.end_date_time''',
      ));
  static String? createdBy(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.createdBy''',
      ));
  static String? contactInfo(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.contact_info''',
      ));
  static bool? isPublic(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_public''',
      ));
  static bool? isRecurring(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_recurring''',
      ));
  static String? eventImage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.eventImage''',
      ));
  static String? eventLocation(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.location''',
      ));
  static String? eventCreatedBy(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? eventCreatorEmail(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? eventCreatorProfile(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.profilePhoto''',
      ));
}

class GetUserIDForDirectoryCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User ID for Directory',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/user/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? userCreatedBy(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static bool? emailVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
  static String? profilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profilePhoto''',
      ));
  static bool? isSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_saved''',
      ));
  static bool? isBaptized(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_baptized''',
      ));
  static bool? isAMemberOfAChurch(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_a_member_of_a_church''',
      ));
  static bool? isHeardTheGospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_heard_the_gospel''',
      ));
  static bool? isAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_agreed''',
      ));
  static bool? hasOptedIN(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opt_in''',
      ));
  static bool? isDiscipled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_discipled''',
      ));
  static bool? isServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_serving''',
      ));
}

class GetUserIDForDirectoryCopyCopyCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User ID for Directory Copy Copy',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/user/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? userCreatedBy(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static bool? emailVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
  static String? profilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profilePhoto''',
      ));
  static bool? isSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_saved''',
      ));
  static bool? isBaptized(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_baptized''',
      ));
  static bool? isAMemberOfAChurch(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_a_member_of_a_church''',
      ));
  static bool? isHeardTheGospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_heard_the_gospel''',
      ));
  static bool? isAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_agreed''',
      ));
  static bool? hasOptedIN(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opt_in''',
      ));
  static bool? isDiscipled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_discipled''',
      ));
  static bool? isServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_serving''',
      ));
}

class UserDetailsForDirectoryCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'User Details for Directory',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/directory/$userId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'user_id': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? userCreatedBy(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static bool? emailVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
  static String? profilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profilePhoto''',
      ));
  static bool? isSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_saved''',
      ));
  static bool? isBaptized(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_baptized''',
      ));
  static bool? isAMemberOfAChurch(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_a_member_of_a_church''',
      ));
  static bool? isHeardTheGospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_heard_the_gospel''',
      ));
  static bool? isAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_agreed''',
      ));
  static bool? hasOptedIN(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opt_in''',
      ));
  static bool? isDiscipled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_discipled''',
      ));
  static bool? isServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_serving''',
      ));
  static String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static String? userCoverPhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.coverPhoto''',
      ));
  static String? testimony(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.testimony''',
      ));
  static int? anniversary(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.anniversary''',
      ));
  static int? birthday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.date_of_birth''',
      ));
  static bool? userAddress(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.userAddress''',
      ));
  static bool? userPrivacy(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.privacy_contact''',
      ));
  static String? userMarital(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.marital_status.status''',
      ));
  static String? userGender(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.gender.gender''',
      ));
  static String? userAddressLine1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.useraddress.address''',
      ));
  static String? userAddressLine2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.useraddress.address_2''',
      ));
  static String? userState(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.useraddress.state''',
      ));
  static String? userZipCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.useraddress.zipcode''',
      ));
  static String? userCity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.useraddress.city''',
      ));
  static String? userCountry(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.useraddress.country''',
      ));
  static bool? userSubmittedForApproval(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.submittedfor_approval''',
      ));
  static bool? accountDetlete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.accountDelete''',
      ));
  static bool? aboutComplete(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.about_complete''',
      ));
  static bool? aboutPublic(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.about_is_public''',
      ));
  static bool? contactComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.contact_complete''',
      ));
  static bool? salvationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.salvation_complete''',
      ));
  static bool? salvationIsPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.salvation_is_public''',
      ));
  static bool? geolocationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.geolocation_complete''',
      ));
  static bool? geoLocationPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.geolocation_is_public''',
      ));
}

class GeneralAnnouncementsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'General Announcements',
      apiUrl: 'https://api.aboundfi.com/api:fuKs4M51/generalAnnouncements',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GroupBulletinAnnoucementsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchgroupId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Group Bulletin Annoucements',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/churchgroupbulletin',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'churchgroup_id': churchgroupId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class EventListCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Event List',
      apiUrl:
          'https://api.aboundfi.com/api:JtFB9yc_/event?church_id=$churchId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SharedUserPrayersWithChurchOnBulletinCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Shared User Prayers with Church on Bulletin',
      apiUrl: 'https://api.aboundfi.com/api:ScJhCWfk/prayersharedwithchurch',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SharedUserPrayersWithChurchAdminCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Shared User Prayers with Church Admin',
      apiUrl:
          'https://api.aboundfi.com/api:ScJhCWfk/prayersharedwithchurchAdmin',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PrayersCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Prayers',
      apiUrl: 'https://api.aboundfi.com/api:11sPz9tq/prayer',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PraisesCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Praises',
      apiUrl: 'https://api.aboundfi.com/api:FZN0kU3I/praise',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HealthNeedsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Health Needs',
      apiUrl: 'https://api.aboundfi.com/api:vtWhCzTZ/healthneed',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GroupsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Groups',
      apiUrl: 'https://api.aboundfi.com/api:FKbVSqc1/group',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChurchGroupCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Group',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/churchgroup',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? groupName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
}

class ServingOpportunitiesWeeklyCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Serving Opportunities Weekly',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiesweekly',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ServingOpportunitiesOneTimeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Serving Opportunities One Time',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiesoneTime',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MealTalkActiveCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'MealTalk Active',
      apiUrl: 'https://api.aboundfi.com/api:BAxqzBjb/mealtalk',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MyGroupsCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'My Groups',
      apiUrl: 'https://api.aboundfi.com/api:FKbVSqc1/mygroup',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChurchDirectoryCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Church Directory',
      apiUrl:
          'https://api.aboundfi.com/api:jTS_wo8z/userchurch?church_id=$churchId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class NewChurchDirectoryCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'New Church Directory',
      apiUrl: 'https://api.aboundfi.com/api:jTS_wo8z/userchurch',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Me',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/me',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static String? userGender(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.gender_id''',
      ));
  static int? otp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.otp''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static int? userCreatedAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static bool? emailVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
  static String? profileURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profilePhoto''',
      ));
  static bool? isSaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_saved''',
      ));
  static bool? isBaptized(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_baptized''',
      ));
  static bool? isAMember(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_a_member_of_a_church''',
      ));
  static bool? isHeardTheGospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_heard_the_gospel''',
      ));
  static bool? isAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_agreed''',
      ));
  static bool? isServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_serving''',
      ));
  static bool? isDiscipled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_discipled''',
      ));
  static bool? isOptIn(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.opt_in''',
      ));
  static bool? isPrivacyContact(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.privacy_contact''',
      ));
  static bool? isAccountDelete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.accountDelete''',
      ));
  static bool? isUserAddress(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.userAddress''',
      ));
}

class GetUserAddressCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get User Address',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/useraddress',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetChurchInformationCall {
  static Future<ApiCallResponse> call({
    String? churchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Church Information',
      apiUrl: 'https://api.aboundfi.com/api:9-nC72AV/church/$churchId',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? createdTime(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.created_at''',
      ));
  static String? churchName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static bool? isAboundVerified(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_abound_verified''',
      ));
  static String? createdByUser(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.created_by_user_id''',
      ));
  static String? churchIDbyAPI(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? churchAddress1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.address''',
      ));
  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.state''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.country''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.phone''',
      ));
  static String? website(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.website''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static bool? isMultiCampus(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_multi_campus''',
      ));
  static bool? isProfileCompleted(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_profile_completed''',
      ));
  static bool? isProfilePublished(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_profile_published''',
      ));
  static bool? isPaid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_paid''',
      ));
  static bool? isWebsitePaid(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.is_website_paid''',
      ));
  static bool? isPublicAChurchApp(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.is_public_achurchapp''',
      ));
  static String? profilePhotoURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.profilePhotoURL''',
      ));
  static String? coverPhotoURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.coverPhotoURL''',
      ));
  static String? timeZone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.timezones.Timezones''',
      ));
  static bool? gospelOnOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.gospel''',
      ));
  static bool? bibleReadingOnOff(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.bible_reading''',
      ));
  static bool? gaOnOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.general_announcements''',
      ));
  static bool? devotionOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.devotion''',
      ));
  static bool? youtubeOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.youtube''',
      ));
  static bool? celebrationsOff(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.celebrations''',
      ));
  static bool? prayersOnOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.prayers''',
      ));
  static bool? praiseOnOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.praise''',
      ));
  static bool? healthNeedsOnOff(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.health_needs''',
      ));
  static bool? eventOnOff(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.event''',
      ));
}

class MemberSignUpFirstStepCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    bool? optIn = false,
    bool? isAgreed,
    String? phone = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "opt_in": "$optIn",
  "is_agreed": "$isAgreed",
  "church_id": "$churchId",
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member SignUp First Step',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/member',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static int? userCreatedAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static bool? verified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.verified''',
      ));
  static int? otp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.otp''',
      ));
}

class MemberSignUpApprovalCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    bool? optIn = false,
    bool? isAgreed,
    String? phone = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "opt_in": "$optIn",
  "is_agreed": "$isAgreed",
  "church_id": "$churchId",
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member SignUp Approval',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/member4approval',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static int? userCreatedAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static bool? verified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.verified''',
      ));
  static int? otp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.otp''',
      ));
}

class VisitorSignupCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    bool? optIn = false,
    bool? isAgreed,
    String? phone = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "opt_in": "$optIn",
  "is_agreed": "$isAgreed",
  "church_id": "$churchId",
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Visitor Signup',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/visitor',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.authToken''',
      ));
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static int? userCreatedAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static bool? verified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.verified''',
      ));
  static int? otp(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.otp''',
      ));
}

class OTPVerificationCall {
  static Future<ApiCallResponse> call({
    String? otp = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "otp": "$otp"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'OTP verification ',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/otpVerifiedMembers',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  static bool? userVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.verified''',
      ));
}

class MemberProfileCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? dateOfBirth = '',
    String? genderId = '',
    String? maritalStatusId = '',
    String? anniversary = '',
  }) async {
    final ffApiRequestBody = '''
{
  "date_of_birth": "$dateOfBirth",
  "gender_id": "$genderId",
  "marital_status_id": "$maritalStatusId",
  "anniversary": "$anniversary"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Profile',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/memberProfile',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemberTestimonyCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? testimony = '',
  }) async {
    final ffApiRequestBody = '''
{
  "testimony": "$testimony"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Testimony',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/memberTestimony',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SubmitForApprovalCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    bool? submit,
  }) async {
    final ffApiRequestBody = '''
{
  "submit": "$submit"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Submit for Approval',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/submitforadmin',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemberAddressCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? address = '',
    String? address2 = '',
    String? city = '',
    String? zipcode = '',
    String? state = '',
    String? country = '',
  }) async {
    final ffApiRequestBody = '''
{
  "address": "$address",
  "address_2": "$address2",
  "city": "$city",
  "state": "$state",
  "country": "$country",
  "zipcode": "$zipcode"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Address',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/useraddress',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemberProfilePictureCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    FFUploadedFile? profilePhoto,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Member Profile Picture',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/memberProfilePic',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'authToken': authToken,
        'profilePhoto': profilePhoto,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemberCoverPhotoCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    FFUploadedFile? coverPhoto,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Member Cover Photo',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/memberCover',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'authToken': authToken,
        'coverPhoto': coverPhoto,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MemberSoulJourneySelfCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? isSaved = '',
    String? churchId = '',
    String? savedDate = '',
    String? isBaptized = '',
    String? baptizedDate = '',
    String? isAMember = '',
    String? membershipDate = '',
    String? isDiscipled = '',
    String? discipleshipDate = '',
    String? isServing = '',
    String? servingSinceDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "is_saved": "$isSaved",
  "savedDate": "$savedDate",
  "church_id": "$churchId",
  "is_baptized": "$isBaptized",
  "baptizedDate": "$baptizedDate",
  "is_a_member": "$isAMember",
  "membershipDate": "$membershipDate",
  "is_discipled": "$isDiscipled",
  "discipleshipDate": "$discipleshipDate",
  "is_serving": "$isServing",
  "servingSinceDate": "$servingSinceDate"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Member Soul Journey Self',
      apiUrl: 'https://api.aboundfi.com/api:QITg_Tf-/memberSelfJourney',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddingMemberProfileCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Adding Member Profile',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/memberProfilePic',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PasswordChangeCall {
  static Future<ApiCallResponse> call({
    String? password = '',
    String? authToken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Password Change',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/passwordChange',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountDeleteRequestCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account Delete Request',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/requestAccountDeletion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AccountDeleteCancelCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Account Delete Cancel',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/cancelAccountDeletion',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserPrayerCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? title = '',
    String? description = '',
  }) async {
    final ffApiRequestBody = '''
{
  "title": "$title",
  "description": "$description"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create User Prayer',
      apiUrl: 'https://api.aboundfi.com/api:ScJhCWfk/userprayer',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateABulletinViewRecordCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? generalannouncementsId = '',
    bool? viewed,
  }) async {
    final ffApiRequestBody = '''
{
  "generalannouncements_id": "$generalannouncementsId",
  "viewed": "$viewed"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a Bulletin View Record',
      apiUrl: 'https://api.aboundfi.com/api:fuKs4M51/generalannoucementsviews',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAChurchPrayerResponseCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? prayerId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "prayer_id": "$prayerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a Church Prayer Response',
      apiUrl: 'https://api.aboundfi.com/api:11sPz9tq/churchprayerresponse',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateAUserResponseForAUserPrayerCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? userprayersharedwithchurchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userprayersharedwithchurch_id": "$userprayersharedwithchurchId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create a User Response for a User Prayer',
      apiUrl:
          'https://api.aboundfi.com/api:11sPz9tq/userresponse4sharedprayerwithchurch',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class JoinAServingOpportunityTeamCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? servingopportunitiesId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "servingopportunities_id": "$servingopportunitiesId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Join a Serving Opportunity Team',
      apiUrl:
          'https://api.aboundfi.com/api:jyKImnuk/servingopportunitiessignup',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class JoinAGroupCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchgroupId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "churchgroup_id": "$churchgroupId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Join a group',
      apiUrl: 'https://api.aboundfi.com/api:tD5YIX3-/groupmember',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SharePrayerWithCHurchCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? prayerId = '',
    String? churchId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "church_id": "$churchId",
  "userprayer_id": "$prayerId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Share Prayer With CHurch',
      apiUrl: 'https://api.aboundfi.com/api:ScJhCWfk/prayersharedwithchurch',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendNotificationCall {
  static Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
{
  "app_id": "5b6de3e3-66b8-49e3-90c2-ffa6aa310bbc",
  "include_player_ids": ["{{player_id}}"],
  "contents": { "en": "{{message}}" },
  "headings": { "en": "{{title}}" }
}
''';
    return ApiManager.instance.makeApiCall(
      callName: 'SendNotification',
      apiUrl: 'https://onesignal.com/api/v1/notifications',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'os_v2_org_kwt4dd2njjgmxpltf37yp2laojwtufxciwfedi5lzj4xh5kiuwrys3ib5vzjylcgsxs2fdwpsgz5pf52yd7tfmi4ugg2vwzwm5f7lqq',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthMeChurchCall {
  static Future<ApiCallResponse> call({
    String? authToken = '',
    String? churchId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Auth Me Church',
      apiUrl: 'https://api.aboundfi.com/api:STwO9R5V/auth/meWithChurch',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'church_id': churchId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
  static int? userCreated(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.created_at''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.name''',
      ));
  static String? userEmail(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.email''',
      ));
  static String? userPhone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.phone''',
      ));
  static bool? userVerified(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.verified''',
      ));
  static int? userOTP(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.otp''',
      ));
  static bool? userAddressAdded(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.userAddress''',
      ));
  static bool? userisServing(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_serving''',
      ));
  static bool? userIsDiscipled(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_discipled''',
      ));
  static bool? userIsAgreed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_agreed''',
      ));
  static String? userProfilePhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.profilePhoto''',
      ));
  static bool? userISsaved(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.is_saved''',
      ));
  static bool? userisabaptized(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_baptized''',
      ));
  static bool? userIsamemberofachurch(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_a_member_of_a_church''',
      ));
  static bool? userHeardthegospel(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.is_heard_the_gospel''',
      ));
  static bool? userOptedIN(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.user.opt_in''',
      ));
  static bool? userPrivacyContact(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.privacy_contact''',
      ));
  static bool? userAccountDelete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.accountDelete''',
      ));
  static bool? userAboutComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_complete''',
      ));
  static bool? userAboutPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.about_is_public''',
      ));
  static bool? userContactComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.contact_complete''',
      ));
  static bool? userSalvationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_complete''',
      ));
  static bool? userSalvationisPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvation_is_public''',
      ));
  static bool? userGeoLocationComplete(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_complete''',
      ));
  static bool? userGeolocationPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.geolocation_is_public''',
      ));
  static int? userRelationshipTimestamp(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.userChurch[:].created_at''',
      ));
  static bool? userisamemberofthischurch(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.userChurch[:].is_Member''',
      ));
  static bool? userIsApproved(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.userChurch[:].is_Approved''',
      ));
  static String? userCoverPhoto(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.coverPhoto''',
      ));
  static int? userBirthday(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.date_of_birth''',
      ));
  static int? userAnniversary(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.user.anniversary''',
      ));
  static bool? userPhoneVerirified(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.phone_verified''',
      ));
  static String? userMarital(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.marital_status.status''',
      ));
  static String? userGender(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.gender.gender''',
      ));
  static String? userGenderID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.gender.id''',
      ));
  static String? maritalStatusID(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.marital_status_id''',
      ));
  static bool? userPersonalINfoCompleted(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.personal_info_completed''',
      ));
  static bool? userpersoninfopublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.personal_info_public''',
      ));
  static bool? usercoverphotoadded(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.coverphoto_added''',
      ));
  static bool? userprofilephotoadded(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.profilephoto_added''',
      ));
  static String? aboutTestimony(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user.testimony''',
      ));
  static bool? salvationJourneyStarted(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvationJourneyStarted''',
      ));
  static bool? salvationJourneyPublic(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.salvationJourneyPublic''',
      ));
  static String? addressLine1(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.address''',
      ));
  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.city''',
      ));
  static String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.state''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.country''',
      ));
  static String? zipcode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.zipcode''',
      ));
  static String? addressLine2(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.user._useraddress_of_user.address_2''',
      ));
  static bool? submittedForApproval(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.user.submittedfor_approval''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
