.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final ALLOW_REPLY:Ljava/lang/String; = "REPLY"

.field public static final ALLOW_REPLY_ALL:Ljava/lang/String; = "pref_key_mms_allow_reply_all"

.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final BACKGROUND_STYLE:Ljava/lang/String; = "pref_key_background_color"

.field public static final BACKGROUND_STYLE_DEFAULT_VALUE:I = 0x1

.field public static final BUBBLE_DATE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE_WVGA:[F = null

.field public static final BUBBLE_STYLE:Ljava/lang/String; = "pref_key_bubble_style"

.field public static final BUBBLE_TYPE_DEFAULT_VALUE:I = 0x0

.field private static final CALLBACK_CATAGORY:Ljava/lang/String; = "pref_callback_settings"

.field private static final CALLBACK_ENABLED:Ljava/lang/String; = "pref_key_enable_callback"

.field private static final CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_callback_text"

.field public static final CB_CHANNEL_SELECTION:Ljava/lang/String; = "pref_key_cb_channel_selection"

.field public static final CB_CHANNEL_SELECTION_SIM2:Ljava/lang/String; = "pref_key_cb_channel_selection_sim2"

.field public static final CB_MY_CHANNEL_ENABLED_COUNT:Ljava/lang/String; = "pref_cb_my_channel_enabled_count"

.field public static final CB_MY_CHANNEL_ENABLED_COUNT_SIM2:Ljava/lang/String; = "pref_cb_my_channel_enabled_count_sim2"

.field public static final CB_MY_CHANNEL_MAX_COUNT:Ljava/lang/String; = "pref_cb_my_channel_max_count"

.field public static final CB_MY_CHANNEL_MAX_COUNT_SIM2:Ljava/lang/String; = "pref_cb_my_channel_max_count_sim2"

.field public static final CB_SETTINGS_CHANNEL:Ljava/lang/String; = "pref_key_cb_settings_channel"

.field public static final CELL_BROADCAST_ACTIVATION:Ljava/lang/String; = "pref_key_cb_settings_activation"

.field public static final CELL_BROADCAST_ACTIVATION_SIM2:Ljava/lang/String; = "pref_key_cb_settings_activation_sim2"

.field public static final CHAMELEON_TEXT_TEMPLATE_EN:Ljava/lang/String; = "pref_key_chameleon_text_template_en"

.field public static final CHAMELEON_TEXT_TEMPLATE_ES:Ljava/lang/String; = "pref_key_chameleon_text_template_es"

.field public static final CMAS_ALERT_REMINDER:Ljava/lang/String; = "pref_key_emergency_alert_reminder"

.field public static final CMAS_AUDIO_WHEN:Ljava/lang/String; = "pref_key_cmas_audioWhen_checkbox"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "pref_cmas_settings"

.field public static final CMAS_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_cmas_vibrateWhen_checkbox"

.field private static final CONFIRM_CLEAR_SEARCH_HISTORY_DIALOG:I = 0x3

.field public static final DEFAULT_ALLOW_REPLY_ALL:Z = true

.field public static final DEFAULT_EXPIRY_TIME:Ljava/lang/String; = "3"

.field public static final DEFAULT_MMSC_PORT:Ljava/lang/String; = "80"

.field public static final DEFAULT_MMSC_URL:Ljava/lang/String; = "http://mmsc.vnet.mobi"

.field public static final DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String; = null

.field public static final DEFAULT_MMS_PRIORITY:Ljava/lang/String; = null

.field private static final DIALOG_FONT_SIZE:[F = null

.field public static final DISPLAY_CATEGORY:Ljava/lang/String; = "pref_key_display_settings"

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final FONT_SIZE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_BUBBLE_NORMAL:F = 18.0f

.field public static final FONT_SIZE_BY_VOLUME_KEY:Ljava/lang/String; = "pref_key_font_size_by_volume_key_enable"

.field public static final FONT_SIZE_BY_VOLUME_KEY_DEFAULT_VALUE:Z = false

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size_by_volume_key_font_size"

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE_DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE_DEFAULT_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_EDIT:I = 0x3

.field public static final FONT_SIZE_EDIT_NORMAL:F = 18.0f

.field public static final FONT_SIZE_EXCEPTION_HUGE:F = 57.0f

.field public static final FONT_SIZE_FOLLOW_SYSTEM_FONT_SIZE:I = 0x0

.field public static final FONT_SIZE_HUGE:I = 0x5

.field public static final FONT_SIZE_HUGE_VALUE:Ljava/lang/String; = "Huge"

.field public static final FONT_SIZE_LARGE:I = 0x4

.field public static final FONT_SIZE_LARGE_VALUE:Ljava/lang/String; = "Large"

.field public static final FONT_SIZE_NORMAL:I = 0x3

.field public static final FONT_SIZE_NORMAL_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_RATE:[F = null

.field public static final FONT_SIZE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_RECIPIENTS_NORMAL:F = 18.0f

.field public static final FONT_SIZE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_SMALL:I = 0x2

.field public static final FONT_SIZE_SMALL_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_TINY:I = 0x1

.field public static final FONT_SIZE_TINY_VALUE:Ljava/lang/String; = "Tiny"

.field public static final FONT_SIZE_VEIWER:I = 0x4

.field public static final FONT_SIZE_VEIWER_NORMAL:F = 17.0f

.field public static final HAS_DEFAULT_VALUE:Ljava/lang/String; = "pref_key_has_default_value"

.field public static final INIT_CSC:Ljava/lang/String; = "pref_key_init_csc"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG_CATEGORY:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg_category"

.field public static final MANAGE_SD_MESSAGES:Ljava/lang/String; = "pref_key_manage_SD_messages"

.field public static final MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "pref_key_max_mms_messages_per_thread"

.field public static final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "pref_key_max_sms_messages_per_thread"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MESSAGE_BUBBLE_RECEIVE_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_BUBBLE_SENT_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_FONT_Q1_INDEX_DIFF:I = 0x3

.field public static final MESSAGE_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size"

.field public static final MESSAGE_FONT_SIZE_DEFAULT_VALUE_SYSTEM:Ljava/lang/String; = "Follow system font size"

.field public static final MESSAGE_TEXT_FIELD_COLOR:Ljava/lang/String; = "pref_key_text_field_color"

.field public static final MESSAGE_TEXT_FIELD_COLOR_AMOLED_DEFAULT_VALUE:Ljava/lang/String; = "Black"

.field public static final MESSAGE_TEXT_FIELD_COLOR_BLACK:I = 0x0

.field public static final MESSAGE_TEXT_FIELD_COLOR_LCD_DEFAULT_VALUE:Ljava/lang/String; = "White"

.field public static final MESSAGE_TEXT_FIELD_COLOR_WHITE:I = 0x1

.field public static final MMSC_PORT:Ljava/lang/String; = "pref_mmsc_port"

.field public static final MMSC_URL:Ljava/lang/String; = "pref_mmsc_url"

.field public static final MMS_CHANGE_OVER_ALARM:Ljava/lang/String; = "pref_key_mms_change_over_alarm"

.field public static final MMS_CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field public static final MMS_CREATION_MODE_DEFAULT_VALUE:Ljava/lang/String; = "free"

.field public static final MMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_DELIVERY_TIME:Ljava/lang/String; = "pref_key_mms_delivery_time"

.field public static final MMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry_time"

.field public static final MMS_IMAGE_RESIZE_RESOLUTION:Ljava/lang/String; = "pref_key_mms_image_resize_resolution"

.field public static final MMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_mms_max_recipient"

.field public static final MMS_MAX_SIZE:Ljava/lang/String; = "pref_key_mms_max_size"

.field public static final MMS_PRIORITY:Ljava/lang/String; = "pref_key_mmspriority"

.field public static final MMS_SEND_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_send_mms_delivery_reports"

.field public static final MMS_SLIDE_MAX_COUNT:Ljava/lang/String; = "pref_key_mms_slide_max_count"

.field public static final MMS_VIEW_MODE:Ljava/lang/String; = "pref_view_mode"

.field public static final MMS_VIEW_MODE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final MSGTONE_REPEAT_INTERVAL:Ljava/lang/String; = "pref_key_msgtone_repeat_interval"

.field public static final NOTIFICATION_BACKLIGHT:Ljava/lang/String; = "pref_key_backlight"

.field public static final NOTIFICATION_BACKLIGHT_SIM2:Ljava/lang/String; = "pref_key_backlight_sim2"

.field public static final NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_notification_settings"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_ENABLED_SIM2:Ljava/lang/String; = "pref_key_enable_notifications_sim2"

.field public static final NOTIFICATION_PREVIEW:Ljava/lang/String; = "pref_key_enable_preview_message"

.field public static final NOTIFICATION_PREVIEW_SIM2:Ljava/lang/String; = "pref_key_enable_preview_message_sim2"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_RINGTONE_SIM2:Ljava/lang/String; = "pref_key_ringtone_sim2"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final NOTIFICATION_VIBRATE_SIM2:Ljava/lang/String; = "pref_key_vibrate_sim2"

.field public static final NOTIFICATION_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_vibrateWhen_checkbox"

.field public static final NOTIFICATION_VIBRATE_WHEN_SIM2:Ljava/lang/String; = "pref_key_vibrateWhen_checkbox_sim2"

.field public static final PREFERENCE_SMSC:I = 0x0

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final PUSH_MESSAGE:Ljava/lang/String; = "pref_key_enable_push_message"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final REMINDER_ALERT:Ljava/lang/String; = "pref_key_msg_reminder_alert"

.field public static final REMINDER_ALERT_SIM2:Ljava/lang/String; = "pref_key_msg_reminder_alert_sim2"

.field public static final RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SERVICE_LOADING_ACTION:Ljava/lang/String; = "pref_key_service_loading_action"

.field public static final SERVICE_LOADING_ACTION_ALWAYS:I = 0x0

.field public static final SERVICE_LOADING_ACTION_DEFAULT_VALUE:Ljava/lang/String; = "Prompt"

.field public static final SERVICE_LOADING_ACTION_NEVER:I = 0x2

.field public static final SERVICE_LOADING_ACTION_PROMPT:I = 0x1

.field public static final SIGNATURE:Ljava/lang/String; = "pref_signature_settings"

.field public static final SIGNATURE_ENABLE:Ljava/lang/String; = "pref_key_enable_signature"

.field public static final SIGNATURE_TEXT:Ljava/lang/String; = "pref_key_signature_text"

.field public static final SIM_READY_STATUS:Ljava/lang/String; = "pref_sim_ready_status"

.field public static final SMSC_ADDR_VALUE:Ljava/lang/String; = "pref_key_manage_smsc_address"

.field public static final SMSC_ADDR_VALUE_SIM2:Ljava/lang/String; = "pref_key_manage_smsc_address_sim2"

.field private static final SMSC_URI:Landroid/net/Uri; = null

.field public static final SMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_EMAIL_GATEWAY:Ljava/lang/String; = "pref_key_sms_email_gateway"

.field public static final SMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_sms_expiry"

.field public static final SMS_INPUT_MODE:Ljava/lang/String; = "pref_key_sms_input_mode"

.field public static final SMS_INPUT_MODE_DEFAULT_VALUE:Ljava/lang/String; = "Automatic"

.field public static final SMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_max_recipient"

.field public static final SMS_RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final SMS_TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_sms_text_template"

.field public static final SMS_THRESHOLD:Ljava/lang/String; = "pref_key_threshold"

.field public static final SMS_THRESHOLD_TYPE:Ljava/lang/String; = "pref_key_threshold_type"

.field public static final SPAM_CATAGORY:Ljava/lang/String; = "pref_key_spam_settings"

.field public static final SPAM_FILTER_UNKNOWN_EABLE:Ljava/lang/String; = "pref_key_spam_filter_unknown_enable"

.field public static final SPAM_OPTION:Ljava/lang/String; = "pref_key_spam_option"

.field public static final SPAM_OPTION_EABLE:Ljava/lang/String; = "pref_key_spam_option_enable"

.field public static final SPAM_OPTION_OFF:I = 0x0

.field public static final SPAM_OPTION_OFF_VALUE:Ljava/lang/String; = "0"

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES:I = 0x1

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES_VALUE:Ljava/lang/String; = "1"

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING:I = 0x2

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING_VALUE:Ljava/lang/String; = "2"

.field public static final SPLIT_BAR_POSITION:Ljava/lang/String; = "pref_key_splitbar_position"

.field public static final SPLIT_VIEW:Ljava/lang/String; = "pref_key_split_view"

.field public static final SPLIT_VIEW_DEFAULT_VALUE:Z = true

.field public static final T0_FONT_SIZE_BUBBLE_NORMAL:F = 19.0f

.field public static final T0_FONT_SIZE_EDIT_NORMAL:F = 19.0f

.field public static final T0_FONT_SIZE_EXCEPTION_HUGE:F = 52.0f

.field public static final T0_FONT_SIZE_RATE:[F = null

.field public static final T0_FONT_SIZE_RECIPIENTS_NORMAL:F = 19.0f

.field public static final T0_FONT_SIZE_VEIWER_NORMAL:F = 17.0f

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceActivity"

.field public static final TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_text_templates"

.field public static final TTS_READ_OUT_MESSAGE_CONTENTS:Ljava/lang/String; = "pref_key_read_out_message_contents"

.field public static final TTS_READ_OUT_NEW_MESSAGE_NOTIFICATION:Ljava/lang/String; = "pref_key_read_out_new_message_notification"

.field public static final VALUE_CREATION_MODE_FREE:I = 0x2

.field public static final VALUE_CREATION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_CREATION_MODE_WARNING:I = 0x1

.field public static final VALUE_EXPIRY_TIME_1HOUR:Ljava/lang/String; = "0"

.field public static final VALUE_EXPIRY_TIME_24HOURS:Ljava/lang/String; = "2"

.field public static final VALUE_EXPIRY_TIME_2DAYS:Ljava/lang/String; = "3"

.field public static final VALUE_EXPIRY_TIME_6HOURS:Ljava/lang/String; = "1"

.field public static final VALUE_EXPIRY_TIME_DEFAULT:Ljava/lang/String; = "4"

.field public static final VALUE_EXPIRY_TIME_MAXIMUM:Ljava/lang/String; = "5"

.field public static final VALUE_INT_DELIVERY_TIME_1HOUR:I = 0x1

.field public static final VALUE_INT_DELIVERY_TIME_1WEEK:I = 0x4

.field public static final VALUE_INT_DELIVERY_TIME_24HOUR:I = 0x3

.field public static final VALUE_INT_DELIVERY_TIME_6HOUR:I = 0x2

.field public static final VALUE_INT_DELIVERY_TIME_IMMEDIATELY:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_1HOUR:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_24HOURS:I = 0x2

.field public static final VALUE_INT_EXPIRY_TIME_2DAYS:I = 0x3

.field public static final VALUE_INT_EXPIRY_TIME_6HOURS:I = 0x1

.field public static final VALUE_INT_EXPIRY_TIME_DEFAULT:I = 0x4

.field public static final VALUE_INT_EXPIRY_TIME_MAXIMUM:I = 0x5

.field public static final VALUE_INT_MMS_PRIORITY_HIGH:I = 0x0

.field public static final VALUE_INT_MMS_PRIORITY_LOW:I = 0x2

.field public static final VALUE_INT_MMS_PRIORITY_MEDIUM:I = 0x1

.field public static final VALUE_VIEW_MODE_CONVERSATION:I = 0x0

.field public static final VALUE_VIEW_MODE_FOLDER:I = 0x1

.field private static mOldSettingFontSizeIndex:I = 0x0

.field private static mSimAvailableNum:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final multiSimNum:I = 0x0

.field protected static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field protected static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"


# instance fields
.field private airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

.field private mCallbackNumberPref:Landroid/preference/EditTextPreference;

.field private mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mManageSDPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMaxChannelCount:I

.field private mMessageBubbleStyleName:[Ljava/lang/String;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsDeliveryTimePref:Landroid/preference/Preference;

.field private mMmsExpiryTimePref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsMMSCPortPref:Landroid/preference/Preference;

.field private mMmsMMSCUrlPref:Landroid/preference/Preference;

.field private mMmsPriorityPref:Landroid/preference/Preference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsSendDeliveryReportPref:Landroid/preference/Preference;

.field private mMyChannels:I

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;

.field private mRestoreSDPref:Landroid/preference/Preference;

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mSimStatus:Z

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsc:Ljava/lang/String;

.field private mSmsc2:Ljava/lang/String;

.field private mSmscAddrPref:Landroid/preference/EditTextPreference;

.field private mSmscAddrPref1:Landroid/preference/Preference;

.field private mSpamOption:Landroid/preference/ListPreference;

.field private mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x6

    .line 161
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    .line 291
    new-array v0, v3, [F

    sget v1, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    aput v1, v0, v4

    const/4 v1, 0x1

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_TINY:F

    aput v2, v0, v1

    sget v1, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_SMALL:F

    aput v1, v0, v5

    sget v1, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_NORMAL:F

    aput v1, v0, v6

    const/4 v1, 0x4

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_LARGE:F

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/mms/ui/ConversationListItem;->LIST_FROM_TEXT_SIZE_HUGE:F

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    .line 307
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    .line 316
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    .line 344
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    .line 353
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    .line 375
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    .line 464
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    .line 474
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String;

    .line 488
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    .line 489
    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    .line 498
    sput v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    return-void

    .line 307
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0xe8t 0x41t
        0x0t 0x0t 0x64t 0x42t
    .end array-data

    .line 316
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0xf8t 0x41t
    .end array-data

    .line 344
    :array_2
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3ft
        0x7bt 0x14t 0x6et 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0x66t 0x66t 0xe6t 0x3ft
        0x66t 0x66t 0xe6t 0x3ft
    .end array-data

    .line 353
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
        0x7bt 0x14t 0x6et 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0xa6t 0x3ft
        0x66t 0x66t 0xe6t 0x3ft
    .end array-data

    .line 375
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0x70t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 391
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 392
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 495
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 499
    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 501
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    .line 1275
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    .line 1276
    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    .line 1277
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    .line 1278
    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    .line 1468
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 1475
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    .line 1561
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 2089
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2191
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private allowReplyAll()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 606
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 609
    .local v0, replyAll:Landroid/content/SharedPreferences;
    const-string v3, "REPLY"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 613
    .end local v0           #replyAll:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private backupNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "sharedPref"

    .prologue
    .line 1282
    const-string v0, "pref_key_manage_smsc_address"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    .line 1283
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1284
    const-string v0, "pref_key_manage_smsc_address_sim2"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    .line 1286
    :cond_0
    const-string v0, "pref_sim_ready_status"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    .line 1295
    return-void
.end method

.method private clearPickerDialog()V
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1522
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1524
    :cond_0
    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0072

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1512
    const v1, 0x7f0a006a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1513
    const v1, 0x7f0a006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1514
    const v1, 0x7f0a0073

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1516
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1517
    return-void
.end method

.method private confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1128
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1129
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0174

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1130
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v1, 0x7f0a0175

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1132
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1134
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1135
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 1699
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1700
    const/4 v0, 0x0

    .line 1704
    :goto_0
    return v0

    .line 1701
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1702
    const/4 v0, 0x1

    goto :goto_0

    .line 1703
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1704
    const/4 v0, 0x2

    goto :goto_0

    .line 1706
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBubbleBackgroundStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2036
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2037
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_background_color"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getBubbleReceiveStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2031
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2032
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleSentStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2026
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2027
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleStyle(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 2021
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2022
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCallbackEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 1453
    const-string v1, "pref_key_enable_callback"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1455
    .local v0, callbackEnabled:Z
    return v0
.end method

.method public static getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3
    .parameter "pref"

    .prologue
    .line 1460
    const-string v1, "pref_key_callback_text"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, callbackNumber:Ljava/lang/String;
    return-object v0
.end method

.method public static getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1759
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1760
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1761
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_font_size_by_volume_key_enable"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1763
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1678
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1679
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1681
    const/4 v2, 0x0

    .line 1687
    :goto_0
    return v2

    .line 1682
    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1683
    const/16 v2, 0xa7

    goto :goto_0

    .line 1684
    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1685
    const/16 v2, 0xa8

    goto :goto_0

    .line 1687
    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getFontSize(II)F
    .locals 7
    .parameter "nType"
    .parameter "nIndex"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4188

    const/high16 v4, 0x4198

    const/high16 v3, 0x4190

    const/4 v2, 0x3

    .line 1815
    const/4 v0, 0x0

    .line 1817
    .local v0, fontSize:F
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1818
    const/4 p1, 0x3

    .line 1820
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1821
    packed-switch p0, :pswitch_data_0

    .line 1841
    :goto_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1842
    packed-switch p0, :pswitch_data_1

    .line 1886
    :cond_1
    :goto_1
    return v0

    .line 1823
    :pswitch_0
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, v2

    mul-float v0, v1, v4

    .line 1824
    goto :goto_0

    .line 1826
    :pswitch_1
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v4

    .line 1827
    goto :goto_0

    .line 1829
    :pswitch_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v4

    .line 1830
    goto :goto_0

    .line 1832
    :pswitch_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v5

    .line 1833
    goto :goto_0

    .line 1835
    :pswitch_4
    if-ge p1, v6, :cond_3

    const/4 p1, 0x1

    .line 1837
    :cond_2
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v4

    goto :goto_0

    .line 1836
    :cond_3
    if-le p1, v2, :cond_2

    const/4 p1, 0x3

    goto :goto_2

    .line 1844
    :pswitch_5
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->T0_FONT_SIZE_RATE:[F

    aget v1, v1, v2

    mul-float v0, v1, v4

    .line 1846
    goto :goto_1

    .line 1850
    :pswitch_6
    const/high16 v0, 0x4250

    goto :goto_1

    .line 1854
    :cond_4
    packed-switch p0, :pswitch_data_2

    .line 1874
    :goto_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 1875
    packed-switch p0, :pswitch_data_3

    goto :goto_1

    .line 1877
    :pswitch_7
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, v2

    mul-float v0, v1, v3

    .line 1878
    goto :goto_1

    .line 1856
    :pswitch_8
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, v2

    mul-float v0, v1, v3

    .line 1857
    goto :goto_3

    .line 1859
    :pswitch_9
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v3

    .line 1860
    goto :goto_3

    .line 1862
    :pswitch_a
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v3

    .line 1863
    goto :goto_3

    .line 1865
    :pswitch_b
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v5

    .line 1866
    goto :goto_3

    .line 1868
    :pswitch_c
    if-ge p1, v6, :cond_6

    const/4 p1, 0x1

    .line 1870
    :cond_5
    :goto_4
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->FONT_SIZE_RATE:[F

    aget v1, v1, p1

    mul-float v0, v1, v3

    goto :goto_3

    .line 1869
    :cond_6
    if-le p1, v2, :cond_5

    const/4 p1, 0x3

    goto :goto_4

    .line 1882
    :pswitch_d
    const/high16 v0, 0x4264

    goto :goto_1

    .line 1821
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1842
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 1854
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 1875
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static getFontSizeIndex(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 1767
    const/4 v2, 0x3

    .line 1768
    .local v2, idxFontSize:I
    const/4 v4, 0x0

    .line 1769
    .local v4, settingFontSizeIndex:I
    const/4 v3, 0x0

    .line 1771
    .local v3, preferFontSizeIndex:I
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v4

    .line 1773
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1774
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1776
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    sget v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    if-eq v4, v6, :cond_1

    .line 1778
    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1779
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1780
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    .end local v0           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :goto_0
    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    .line 1784
    const/4 v3, 0x0

    .line 1793
    :goto_1
    add-int v2, v4, v3

    .line 1794
    const/4 v6, 0x5

    if-le v2, v6, :cond_2

    .line 1795
    const/4 v2, 0x5

    .line 1797
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1798
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x5

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1799
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1811
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_2
    return v2

    .line 1786
    .restart local v5       #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 1800
    :cond_2
    const/4 v6, 0x1

    if-ge v2, v6, :cond_0

    .line 1801
    const/4 v2, 0x1

    .line 1803
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1804
    .restart local v1       #editprefs:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1805
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 1808
    .end local v1           #editprefs:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_3
    move v2, v4

    goto :goto_2

    .line 1781
    .restart local v5       #sharedPrefs:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getFontSizePreferenceDialogFontSize(I)F
    .locals 4
    .parameter "index"

    .prologue
    .line 1890
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1891
    const/4 p0, 0x0

    .line 1892
    :cond_0
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->DIALOG_FONT_SIZE:[F

    aget v0, v1, p0

    .line 1893
    .local v0, fontSize:F
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    return v0
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1662
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1663
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_input_mode"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1666
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "GSM alphabet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1667
    const/4 v2, 0x0

    .line 1671
    :goto_0
    return v2

    .line 1668
    :cond_0
    const-string v2, "Unicode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1669
    const/4 v2, 0x1

    goto :goto_0

    .line 1671
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getMessageFontSizeIndex(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 1732
    const/4 v0, 0x0

    .line 1734
    .local v0, settingFontSizeIndex:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1736
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v0

    .line 1737
    if-nez v0, :cond_0

    .line 1738
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1739
    add-int/lit8 v0, v0, 0x1

    .line 1747
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1748
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1749
    const/4 v0, 0x3

    .line 1755
    :cond_1
    :goto_1
    return v0

    .line 1743
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1744
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1751
    :cond_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1752
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getMmsViewMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1995
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1996
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1997
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1998
    const/4 v2, 0x0

    .line 2001
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 2306
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2307
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2309
    .local v0, notificationsEnabled:Z
    return v0
.end method

.method public static getSelectedFontSizeIndexByPref(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 1899
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1900
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_font_size"

    const-string v4, "Follow system font size"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1901
    .local v0, fontSize:Ljava/lang/String;
    const/4 v2, 0x3

    .line 1902
    .local v2, selectedIndex:I
    const-string v3, "Follow system font size"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1903
    const/4 v2, 0x0

    .line 1917
    :goto_0
    const-string v3, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSelectedFontSizeIndex() returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    return v2

    .line 1904
    :cond_0
    const-string v3, "Tiny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1905
    const/4 v2, 0x1

    goto :goto_0

    .line 1906
    :cond_1
    const-string v3, "Small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1907
    const/4 v2, 0x2

    goto :goto_0

    .line 1908
    :cond_2
    const-string v3, "Normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1909
    const/4 v2, 0x3

    goto :goto_0

    .line 1910
    :cond_3
    const-string v3, "Large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1911
    const/4 v2, 0x4

    goto :goto_0

    .line 1912
    :cond_4
    const-string v3, "Huge"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1913
    const/4 v2, 0x5

    goto :goto_0

    .line 1915
    :cond_5
    const/4 v2, 0x3

    goto :goto_0
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1938
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1939
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1942
    .local v1, slAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3
    .parameter "slAction"

    .prologue
    .line 1946
    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMsg getServiceLoading slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1949
    const/4 v0, 0x0

    .line 1953
    :goto_0
    return v0

    .line 1950
    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1951
    const/4 v0, 0x1

    goto :goto_0

    .line 1953
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "slAction"

    .prologue
    const/4 v1, 0x0

    .line 1957
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return-object v1

    .line 1960
    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    .line 1961
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1964
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "prefs"

    .prologue
    .line 1466
    const-string v0, "pref_key_enable_signature"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpamFilterUnknown(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2122
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2123
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_spam_filter_unknown_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSpamOption(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 2117
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2118
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_spam_option_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1728
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1922
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1923
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1925
    .local v1, textFieldColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1
    .parameter "textFieldColor"

    .prologue
    .line 1929
    const-string v0, "white"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    const/4 v0, 0x1

    .line 1932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshSIMPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2051
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2053
    .local v0, airplane:I
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2054
    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-eqz v2, :cond_0

    if-ne v0, v5, :cond_5

    .line 2055
    :cond_0
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2060
    :cond_1
    :goto_0
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2061
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-eqz v2, :cond_2

    if-ne v0, v5, :cond_6

    .line 2062
    :cond_2
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2077
    :cond_3
    :goto_1
    const-string v2, "pref_key_cb_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 2078
    .local v1, cbOptions:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_4

    .line 2079
    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-nez v2, :cond_8

    .line 2081
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 2086
    :cond_4
    :goto_2
    return-void

    .line 2056
    .end local v1           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_5
    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-lez v2, :cond_1

    .line 2057
    const-string v2, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 2063
    :cond_6
    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-lez v2, :cond_3

    .line 2064
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSCEditable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2070
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2072
    :cond_7
    const-string v2, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 2083
    .restart local v1       #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_8
    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-lez v2, :cond_4

    .line 2084
    invoke-virtual {v1, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_2
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 1080
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1081
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1083
    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1319
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1322
    .local v1, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->backupNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 1324
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1325
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 1329
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v2

    invoke-static {p0, v2}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    .line 1331
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreNetworkStatus(Landroid/content/SharedPreferences;)V

    .line 1335
    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 1337
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/mms/MmsApp;

    .line 1338
    .local v0, mmsapp:Lcom/android/mms/MmsApp;
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050001

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1339
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050002

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1340
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050003

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1341
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050004

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1342
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050007

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1343
    const-string v2, "com.android.mms_preferences"

    const v3, 0x7f050008

    invoke-static {v0, v2, v4, v3, v4}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 1362
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1363
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter;->deleteAll(Landroid/content/Context;)I

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    .line 1368
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    .line 1369
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    .line 1370
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASPreferences()V

    .line 1372
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    .line 1373
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "message.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1374
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    .line 1375
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->deleteBubbleBackgroundStyle()V

    .line 1376
    return-void
.end method

.method private restoreNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sharedPref"

    .prologue
    .line 1298
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1301
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_manage_smsc_address"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1302
    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 1303
    const-string v1, "pref_key_manage_smsc_address_sim2"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1305
    :cond_0
    const-string v1, "pref_sim_ready_status"

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    return-void
.end method

.method private setCMASPreferences()V
    .locals 5

    .prologue
    .line 1380
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1381
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1382
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1383
    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1384
    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1385
    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v1

    .line 1388
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "callbackNumber"

    .prologue
    .line 1425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, line1Number:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string p1, ""

    .line 1430
    .end local v0           #line1Number:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumberSummary(Ljava/lang/String;)V

    .line 1434
    :cond_1
    return-void

    .restart local v0       #line1Number:Ljava/lang/String;
    :cond_2
    move-object p1, v0

    .line 1427
    goto :goto_0
.end method

.method private setCallbackNumberSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "callbackNumber"

    .prologue
    .line 1437
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_0

    .line 1449
    :goto_0
    return-void

    .line 1442
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1443
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1448
    .local v0, callbackSummary:Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1445
    .end local v0           #callbackSummary:Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .restart local v0       #callbackSummary:Ljava/lang/String;
    goto :goto_1
.end method

.method private setCmasReminderSummary(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2142
    const/4 v0, 0x0

    .line 2143
    .local v0, aInt:I
    const/4 v3, 0x0

    .line 2144
    .local v3, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2145
    .local v4, value:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2146
    .local v2, msg_reminder_alert_name:[Ljava/lang/String;
    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2147
    .local v1, alertReminderPreference:Landroid/preference/Preference;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2148
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070017

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2150
    if-nez v1, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2153
    :cond_0
    if-nez v0, :cond_2

    .line 2154
    const/4 v5, 0x3

    aget-object v3, v2, v5

    .line 2163
    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2155
    :cond_2
    if-ne v0, v7, :cond_3

    .line 2156
    const/4 v5, 0x0

    aget-object v3, v2, v5

    goto :goto_1

    .line 2157
    :cond_3
    if-ne v0, v8, :cond_4

    .line 2158
    aget-object v3, v2, v7

    goto :goto_1

    .line 2159
    :cond_4
    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    .line 2160
    aget-object v3, v2, v8

    goto :goto_1
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 9
    .parameter "sharedPrefs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 2168
    const/4 v0, 0x0

    .line 2169
    .local v0, aInt:I
    const/4 v2, 0x0

    .line 2171
    .local v2, msg_reminder_alert_summary:Ljava/lang/String;
    const-string v5, "pref_key_msg_reminder_alert"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2172
    .local v4, value:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2173
    .local v3, msg_repetition_alert_name:[Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2174
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 2177
    if-ne v0, v7, :cond_2

    .line 2178
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 2186
    :cond_0
    :goto_0
    const-string v5, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2187
    .local v1, alerRepetitionPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 2188
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2189
    :cond_1
    return-void

    .line 2179
    .end local v1           #alerRepetitionPreference:Landroid/preference/Preference;
    :cond_2
    if-ne v0, v8, :cond_3

    .line 2180
    aget-object v2, v3, v7

    goto :goto_0

    .line 2181
    :cond_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 2182
    aget-object v2, v3, v8

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0a0080

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_0
    return-void
.end method

.method public static setMmsViewMode(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 2007
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2008
    .local v1, mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2009
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-nez p1, :cond_0

    .line 2010
    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2016
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2017
    return-void

    .line 2013
    :cond_0
    const-string v2, "pref_view_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setPreferenceSummary()V
    .locals 14

    .prologue
    .line 947
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 960
    .local v9, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v12, "pref_key_bubble_style"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 961
    .local v6, bubbleStylePreference:Landroid/preference/Preference;
    if-eqz v6, :cond_0

    .line 962
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v12

    add-int/lit8 v5, v12, 0x1

    .line 963
    .local v5, bubbleSentStyleIndex:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v12

    add-int/lit8 v4, v12, 0x1

    .line 965
    .local v4, bubbleReceiveStyleIndex:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0a0485

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0a0485

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 967
    .local v7, bubbleTitle:Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 971
    .end local v4           #bubbleReceiveStyleIndex:I
    .end local v5           #bubbleSentStyleIndex:I
    .end local v7           #bubbleTitle:Ljava/lang/String;
    :cond_0
    const-string v12, "pref_key_background_color"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 972
    .local v2, backgroundStylePreference:Landroid/preference/Preference;
    if-eqz v2, :cond_1

    .line 973
    const-string v12, "pref_key_background_color"

    const/4 v13, 0x1

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, backgroundStyleId:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0a0308

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 975
    .local v3, backgroundTitle:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1027
    .end local v1           #backgroundStyleId:I
    .end local v3           #backgroundTitle:Ljava/lang/String;
    :cond_1
    const-string v12, "pref_key_enable_signature"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1028
    .local v0, addSignaturePreference:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 1029
    const v12, 0x7f0a0516

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1030
    .local v8, preferencesSummary:Ljava/lang/String;
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1034
    .end local v8           #preferencesSummary:Ljava/lang/String;
    :cond_2
    const-string v12, "pref_key_signature_text"

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 1035
    .local v11, signatureTextPreference:Landroid/preference/Preference;
    if-eqz v11, :cond_3

    .line 1036
    const-string v12, "pref_key_signature_text"

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1037
    .local v10, signatureSummary:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1040
    .end local v10           #signatureSummary:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1041
    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    .line 1050
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 1051
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1052
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 1058
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    .line 1060
    iget-object v12, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-eqz v12, :cond_6

    .line 1061
    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    .line 1064
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->allowReplyAll()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1065
    iget-object v12, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1077
    :cond_7
    return-void
.end method

.method private setServiceLoadingSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 1411
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1412
    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1413
    .local v0, serviceLoadingPreference:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 1414
    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, slAction:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1420
    .end local v0           #serviceLoadingPreference:Landroid/preference/Preference;
    .end local v1           #slAction:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0a0080

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1089
    :cond_0
    return-void
.end method

.method private setSmscSummary(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sharedPrefs"

    .prologue
    .line 1393
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1394
    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1395
    .local v1, summary_smsc:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #summary_smsc:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1398
    .restart local v1       #summary_smsc:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    .line 1399
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 1403
    .local v0, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v0, :cond_2

    .line 1404
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1407
    .end local v0           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v1           #summary_smsc:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private setVibrateMenu()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2214
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2215
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "pref_key_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 2217
    .local v1, ringtonePreference:Landroid/preference/Preference;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 2219
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 2220
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2223
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 2224
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 2225
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2228
    :cond_1
    if-eqz v1, :cond_2

    .line 2229
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2242
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    .line 2243
    return-void

    .line 2232
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 2233
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2235
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 2236
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2238
    :cond_5
    if-eqz v1, :cond_2

    .line 2239
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showCMASPreviewDialog()V
    .locals 1

    .prologue
    .line 2136
    new-instance v0, Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    .line 2137
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2138
    return-void
.end method

.method private showMmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 1528
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0a0087

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1532
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1533
    return-void
.end method

.method private showSmsLimitMessagePickerDialog()V
    .locals 9

    .prologue
    .line 1536
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    .line 1537
    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0a0086

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 1541
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1542
    return-void
.end method

.method private updateDeletePreference()V
    .locals 5

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_auto_delete"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1265
    .local v0, autoDelete:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 1266
    .local v2, smsDelete:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1268
    .local v1, mmsDelete:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 1269
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1270
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1272
    :cond_0
    return-void
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1713
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1714
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1715
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1717
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0
    .parameter "preferencesResId"

    .prologue
    .line 2296
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2297
    return-void
.end method

.method public deleteBubbleBackgroundStyle()V
    .locals 5

    .prologue
    .line 2313
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 2315
    .local v1, mImageOutputUri:Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2316
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2317
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2319
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1
    .parameter "key"

    .prologue
    .line 2281
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 2286
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 2291
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 533
    const v3, 0x7f05000a

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 541
    const/4 v3, 0x0

    sput v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    .line 542
    const/4 v2, 0x0

    .local v2, simSlotNum:I
    :goto_0
    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    if-ge v2, v3, :cond_1

    .line 543
    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 544
    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    .line 542
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_1
    const-string v3, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate() multiSimNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSimAvailableNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 550
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 551
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 553
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    .line 554
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    .line 558
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    .line 559
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    .line 560
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    .line 562
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 563
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 570
    .local v1, sdCardIntentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 573
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 1484
    packed-switch p1, :pswitch_data_0

    .line 1500
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1486
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a010d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a010e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1484
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1098
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1099
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1100
    const v0, 0x7f0a0072

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1102
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 643
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 645
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 650
    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    .line 653
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 655
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2255
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1122
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1109
    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1119
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1107
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 619
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 621
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASPreviewDialog;->dismiss()V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 624
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 1648
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-ne v1, p1, :cond_1

    move-object v0, p2

    .line 1649
    check-cast v0, Ljava/lang/String;

    .line 1651
    .local v0, callbackNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1652
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    .line 1654
    :cond_0
    const/4 v1, 0x0

    .line 1657
    .end local v0           #callbackNumber:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 1142
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v8

    .line 1143
    .local v8, simActive1:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v9

    .line 1145
    .local v9, simActive2:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 1146
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitMessagePickerDialog()V

    .line 1260
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v11

    :goto_1
    return v11

    .line 1147
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_2

    .line 1148
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitMessagePickerDialog()V

    goto :goto_0

    .line 1149
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 1150
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/ManageSimMessages;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1152
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "pref_key_cmas"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 1153
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/CMASPreferenceActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1154
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "pref_key_emergency_alert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 1155
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showCMASPreviewDialog()V

    goto :goto_0

    .line 1156
    :cond_5
    const-string v11, "pref_key_font_size_by_volume_key_enable"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_6

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1158
    .local v1, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v11, "pref_key_font_size_by_volume_key_font_size"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1160
    .end local v1           #editPrefs:Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v11, "pref_key_manage_smsc_address"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_7

    .line 1161
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    .line 1164
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/MessageSmscActivityDS;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1171
    :cond_7
    const-string v11, "pref_key_cb_settings_ds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_b

    .line 1172
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v2, intent:Landroid/content/Intent;
    sget v11, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_a

    .line 1175
    if-eqz v8, :cond_8

    if-eqz v9, :cond_8

    .line 1176
    const-class v11, Lcom/android/mms/ui/CbSettingTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1188
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1189
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1177
    :cond_8
    if-nez v8, :cond_9

    if-eqz v9, :cond_9

    .line 1178
    const-string v11, "simSlot"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1179
    const-class v11, Lcom/android/mms/ui/CbSettingPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 1181
    :cond_9
    const-string v11, "simSlot"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    const-class v11, Lcom/android/mms/ui/CbSettingPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 1185
    :cond_a
    const-string v11, "simSlot"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1186
    const-class v11, Lcom/android/mms/ui/CbSettingPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2

    .line 1190
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    const-string v11, "pref_key_msg_noti_settings_ds"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_f

    .line 1191
    new-instance v2, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1193
    .restart local v2       #intent:Landroid/content/Intent;
    sget v11, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_e

    .line 1194
    if-eqz v8, :cond_c

    if-eqz v9, :cond_c

    .line 1195
    const-class v11, Lcom/android/mms/ui/MsgNotificationTabActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1207
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1208
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1196
    :cond_c
    if-nez v8, :cond_d

    if-eqz v9, :cond_d

    .line 1197
    const-string v11, "simSlot"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const-class v11, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 1200
    :cond_d
    const-string v11, "simSlot"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1201
    const-class v11, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 1204
    :cond_e
    const-string v11, "simSlot"

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    const-class v11, Lcom/android/mms/ui/MsgNotificationPreferenceActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_3

    .line 1212
    .end local v2           #intent:Landroid/content/Intent;
    :cond_f
    const-string v11, "pref_key_manage_SD_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_11

    .line 1213
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mounted"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1214
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/ui/ManageSDMessages;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1216
    :cond_10
    new-instance v11, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1225
    :cond_11
    const-string v11, "pref_key_spam_num_add"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_12

    .line 1226
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/spam/SetupSpamNumberList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1227
    :cond_12
    const-string v11, "pref_key_spam_text_add"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_13

    .line 1228
    new-instance v11, Landroid/content/Intent;

    const-class v12, Lcom/android/mms/spam/SetupSpamKeywordList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1232
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v11, "pref_key_mms_allow_reply_all"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_16

    .line 1233
    const-string v11, "pref_key_mms_allow_reply_all"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1234
    .local v4, replyAll:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1235
    .local v3, prefEditor:Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1236
    const-string v11, "REPLY"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1240
    :cond_14
    :goto_4
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1237
    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v11

    if-nez v11, :cond_14

    .line 1238
    const-string v11, "REPLY"

    const/4 v12, 0x0

    invoke-interface {v3, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 1243
    .end local v3           #prefEditor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #replyAll:Landroid/content/SharedPreferences;
    :cond_16
    const-string v11, "pref_key_sms_reassembly"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_17

    .line 1244
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 1245
    .local v10, smsManager:Landroid/telephony/SmsManager;
    const-class v11, Landroid/telephony/SmsManager;

    const-string v12, "setCDMASmsReassembly"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1246
    .local v6, setCDMASmsReassembly:Ljava/lang/reflect/Method;
    if-eqz v10, :cond_0

    .line 1247
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1248
    .local v7, sharedpref:Landroid/content/SharedPreferences;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "pref_key_sms_reassembly"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v6, v11}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1251
    .end local v6           #setCDMASmsReassembly:Ljava/lang/reflect/Method;
    .end local v7           #sharedpref:Landroid/content/SharedPreferences;
    .end local v10           #smsManager:Landroid/telephony/SmsManager;
    :cond_17
    const-string v11, "pref_key_enable_notifications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_18

    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    goto/16 :goto_0

    .line 1253
    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "pref_key_sms_restore"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 1254
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/samsung/mms/ui/SavedMsgsList;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1255
    .local v5, restoreIntent:Landroid/content/Intent;
    const-string v11, "mode"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1256
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 584
    const/4 v1, 0x0

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    .line 585
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    if-ge v0, v1, :cond_1

    .line 586
    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 587
    sget v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 589
    :cond_1
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() multiSimNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSimAvailableNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    const-string v1, "GATE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 600
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    .line 601
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 1605
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSharedPreferenceChanged key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v1, "pref_key_cb_settings_activation"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1644
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1618
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1619
    const-string v1, "pref_key_mms_delivery_reports"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1620
    .local v0, dr:Z
    if-eqz v0, :cond_2

    .line 1621
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1623
    :cond_2
    const-string v1, "GATE"

    const-string v2, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1627
    .end local v0           #dr:Z
    :cond_3
    const-string v1, "pref_key_service_loading_action"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1628
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1629
    :cond_4
    const-string v1, "pref_key_emergency_alert_reminder"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1630
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1631
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1633
    :cond_5
    const-string v1, "pref_key_msg_reminder_alert"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1639
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    const-string v1, "pref_key_mms_creation_mode"

    const-string v2, "free"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 629
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 631
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 632
    return-void
.end method

.method protected setMmsPreferences()V
    .locals 3

    .prologue
    .line 735
    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    .line 736
    const-string v1, "pref_key_send_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    .line 737
    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    .line 738
    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    .line 739
    const-string v1, "pref_key_mms_expiry_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    .line 740
    const-string v1, "pref_key_mmspriority"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    .line 741
    const-string v1, "pref_key_mms_delivery_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    .line 742
    const-string v1, "pref_mmsc_url"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    .line 743
    const-string v1, "pref_mmsc_port"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    .line 745
    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 747
    .local v0, MmsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 750
    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 796
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 754
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 757
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 758
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 764
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 765
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 767
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v1

    if-nez v1, :cond_3

    .line 768
    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 770
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 771
    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 773
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v1

    if-nez v1, :cond_5

    .line 774
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 776
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v1

    if-nez v1, :cond_6

    .line 777
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 779
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v1

    if-nez v1, :cond_7

    .line 780
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 782
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuMmsServerAddr()Z

    move-result v1

    if-nez v1, :cond_8

    .line 783
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 784
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 788
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-nez v1, :cond_9

    .line 789
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 791
    :cond_9
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    .line 794
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    goto/16 :goto_0

    .line 760
    :cond_a
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    const v2, 0x7f0a034c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected setOthersPreferences()V
    .locals 12

    .prologue
    .line 799
    const-string v10, "pref_key_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 800
    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    .line 801
    const-string v10, "pref_key_callback_text"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 802
    const-string v10, "pref_key_spam_option"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    .line 803
    const-string v10, "pref_key_sms_restore"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    .line 805
    const-string v10, "pref_key_display_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 806
    .local v5, displayCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_insert_sender_info_when_fwd_msg_category"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 808
    .local v0, InsertSenderInfoWhenFwdMsgCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_font_size"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/FontSizePreference;

    .line 811
    .local v6, fontSizePreference:Lcom/android/mms/ui/FontSizePreference;
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 814
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v10

    if-nez v10, :cond_c

    .line 815
    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 829
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v10

    if-nez v10, :cond_1

    .line 830
    const-string v10, "pref_key_split_view"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 832
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWapPush()Z

    move-result v10

    if-nez v10, :cond_d

    .line 833
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_push_message_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 841
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v10

    if-nez v10, :cond_3

    .line 842
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v10, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 845
    :cond_3
    const-string v10, "pref_key_cb_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 866
    .local v3, cbCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_notification_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 872
    .local v2, NotiCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x6

    if-eq v10, v11, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_e

    .line 873
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_cmas_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 902
    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v10

    if-nez v10, :cond_6

    .line 903
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_signature_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 906
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v10

    if-nez v10, :cond_11

    .line 907
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    .line 908
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_callback_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 913
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 914
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_text_templates"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 916
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_8

    .line 917
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_sms_restore"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 919
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-nez v10, :cond_12

    .line 920
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 931
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableConvertingEffectBetweenSMSMMS()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 932
    const-string v10, "pref_notification_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 933
    .local v1, MmsCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_mms_change_over_alarm"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 936
    .end local v1           #MmsCategory:Landroid/preference/PreferenceCategory;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_b

    .line 937
    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 944
    :cond_b
    return-void

    .line 817
    .end local v2           #NotiCategory:Landroid/preference/PreferenceCategory;
    .end local v3           #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_c
    const-string v10, "EK-GC100"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 818
    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 819
    .local v7, fontSizeVolumn:Landroid/preference/Preference;
    if-eqz v7, :cond_0

    .line 820
    const v10, 0x7f0a0363

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 821
    const v10, 0x7f0a0362

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 835
    .end local v7           #fontSizeVolumn:Landroid/preference/Preference;
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v10

    if-nez v10, :cond_2

    .line 836
    const-string v10, "pref_key_push_message_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 837
    .local v9, wapPushCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_service_loading_action"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 875
    .end local v9           #wapPushCategory:Landroid/preference/PreferenceCategory;
    .restart local v2       #NotiCategory:Landroid/preference/PreferenceCategory;
    .restart local v3       #cbCategory:Landroid/preference/PreferenceCategory;
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 877
    :cond_f
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 878
    .local v4, cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 880
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 881
    const-string v10, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 885
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x5

    if-eq v10, v11, :cond_5

    .line 886
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 887
    .restart local v4       #cmasCategory:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_cmas_audioWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    .line 910
    .end local v4           #cmasCategory:Landroid/preference/PreferenceCategory;
    :cond_11
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_3

    .line 922
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 923
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 924
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_4

    .line 926
    :cond_13
    const-string v10, "pref_key_spam_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    .line 927
    .local v8, spamCategory:Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_4
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .parameter "preferenceScreen"

    .prologue
    .line 2301
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 2302
    return-void
.end method

.method protected setSmsPreferences()V
    .locals 7

    .prologue
    .line 658
    const-string v5, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    .line 659
    const-string v5, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    .line 660
    const-string v5, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    .line 661
    const/4 v0, 0x0

    .line 664
    .local v0, isMultiSIM:Z
    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref1:Landroid/preference/Preference;

    .line 665
    const/4 v0, 0x1

    .line 673
    const-string v5, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    .line 676
    const-string v5, "pref_key_sms_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 678
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 679
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 681
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableManageSimMessages()Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-nez v5, :cond_2

    .line 682
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 686
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 687
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 691
    :cond_4
    const/4 v4, 0x0

    .line 692
    .local v4, smspAvailableNum:I
    const/4 v1, 0x0

    .local v1, simSlotNum:I
    :goto_0
    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->multiSimNum:I

    if-ge v1, v5, :cond_6

    .line 693
    invoke-static {v1}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    .line 694
    .local v3, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 695
    add-int/lit8 v4, v4, 0x1

    .line 692
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 700
    .end local v3           #smsManager:Landroid/telephony/SmsManager;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v5

    if-eqz v5, :cond_7

    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimAvailableNum:I

    if-nez v5, :cond_e

    .line 701
    :cond_7
    if-eqz v0, :cond_d

    .line 702
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref1:Landroid/preference/Preference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 711
    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 713
    const-string v5, "pref_key_sms_input_mode"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 715
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v5

    if-nez v5, :cond_f

    .line 716
    const-string v5, "pref_key_sms_expiry"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 723
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v5

    if-nez v5, :cond_b

    .line 724
    const-string v5, "pref_key_sms_reassembly"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 726
    :cond_b
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-nez v5, :cond_c

    .line 727
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 728
    const-string v5, "Mms/MessagingPreferenceActivity"

    const-string v6, "Removed sms categroy because it has 0 items."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_c
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 732
    return-void

    .line 704
    :cond_d
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_1

    .line 707
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v4, :cond_8

    .line 708
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_1

    .line 718
    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "44010"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 719
    iget-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 720
    const-string v5, "pref_key_sms_expiry"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_2
.end method

.method updateNotificationAlert()V
    .locals 6

    .prologue
    .line 2259
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2261
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 2265
    .local v2, cmasVib:Landroid/preference/Preference;
    const-string v4, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2267
    .local v0, alertReminderPreference:Landroid/preference/Preference;
    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 2269
    .local v3, notiEnable:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2270
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2271
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
