.class synthetic Lcom/android/phone/InVTCallScreen$70;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

.field static final synthetic $SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15267
    invoke-static {}, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->values()[Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->PARTY:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_25

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->ANIMAL:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_24

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->GLASSES:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_23

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->HAT:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_22

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$ThemeViewStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$ThemeViewStatus;->MUSTACHE:Lcom/android/phone/InVTCallScreen$ThemeViewStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_21

    .line 9387
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_5
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_20

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1f

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1e

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1d

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1c

    .line 8795
    :goto_9
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->values()[Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    :try_start_a
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1b

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1a

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_19

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_18

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_17

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_16

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_15

    .line 8065
    :goto_10
    invoke-static {}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->values()[Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    :try_start_11
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_14

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_13

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_12

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_SKT_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_11

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_10

    :goto_15
    :try_start_16
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_f

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_e

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_d

    :goto_18
    :try_start_19
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_c

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NOT_REGISTERED_NUMBER:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_b

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_EMERGENCY_OUTGOING_IN_FACTORY_TEST:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_a

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->RESTRICT_OUTGOING_VIDEOCALL_IN_2G_GSM_AREA:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_9

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->STATE_OUT_OF_SERVICE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_8

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->IMSI_UNKNOWN:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_7

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_MS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_6

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ILLEGAL_ME:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_5

    :goto_20
    :try_start_21
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REG_FAIL:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_4

    :goto_21
    :try_start_22
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->LOCATION_REGSTERING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_3

    .line 4120
    :goto_22
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_23
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_2

    :goto_23
    :try_start_24
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_1

    :goto_24
    :try_start_25
    sget-object v0, Lcom/android/phone/InVTCallScreen$70;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_0

    :goto_25
    return-void

    :catch_0
    move-exception v0

    goto :goto_25

    :catch_1
    move-exception v0

    goto :goto_24

    :catch_2
    move-exception v0

    goto :goto_23

    .line 8065
    :catch_3
    move-exception v0

    goto :goto_22

    :catch_4
    move-exception v0

    goto :goto_21

    :catch_5
    move-exception v0

    goto :goto_20

    :catch_6
    move-exception v0

    goto :goto_1f

    :catch_7
    move-exception v0

    goto :goto_1e

    :catch_8
    move-exception v0

    goto :goto_1d

    :catch_9
    move-exception v0

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    goto/16 :goto_1b

    :catch_b
    move-exception v0

    goto/16 :goto_1a

    :catch_c
    move-exception v0

    goto/16 :goto_19

    :catch_d
    move-exception v0

    goto/16 :goto_18

    :catch_e
    move-exception v0

    goto/16 :goto_17

    :catch_f
    move-exception v0

    goto/16 :goto_16

    :catch_10
    move-exception v0

    goto/16 :goto_15

    :catch_11
    move-exception v0

    goto/16 :goto_14

    :catch_12
    move-exception v0

    goto/16 :goto_13

    :catch_13
    move-exception v0

    goto/16 :goto_12

    :catch_14
    move-exception v0

    goto/16 :goto_11

    .line 8795
    :catch_15
    move-exception v0

    goto/16 :goto_10

    :catch_16
    move-exception v0

    goto/16 :goto_f

    :catch_17
    move-exception v0

    goto/16 :goto_e

    :catch_18
    move-exception v0

    goto/16 :goto_d

    :catch_19
    move-exception v0

    goto/16 :goto_c

    :catch_1a
    move-exception v0

    goto/16 :goto_b

    :catch_1b
    move-exception v0

    goto/16 :goto_a

    .line 9387
    :catch_1c
    move-exception v0

    goto/16 :goto_9

    :catch_1d
    move-exception v0

    goto/16 :goto_8

    :catch_1e
    move-exception v0

    goto/16 :goto_7

    :catch_1f
    move-exception v0

    goto/16 :goto_6

    :catch_20
    move-exception v0

    goto/16 :goto_5

    .line 15267
    :catch_21
    move-exception v0

    goto/16 :goto_4

    :catch_22
    move-exception v0

    goto/16 :goto_3

    :catch_23
    move-exception v0

    goto/16 :goto_2

    :catch_24
    move-exception v0

    goto/16 :goto_1

    :catch_25
    move-exception v0

    goto/16 :goto_0
.end method