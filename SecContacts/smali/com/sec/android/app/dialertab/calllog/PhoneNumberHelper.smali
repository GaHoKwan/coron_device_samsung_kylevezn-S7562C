.class public Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
.super Ljava/lang/Object;
.source "PhoneNumberHelper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field protected volatile mScrollState:I

.field private final mVoicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .parameter "resources"
    .parameter "voicemailNumber"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    .line 44
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    .line 46
    return-void
.end method


# virtual methods
.method public canPlaceCallsTo(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NTT DOCOMO"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSendSmsTo(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public getCallUri(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .parameter "number"
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 216
    move-object v0, p1

    .line 218
    .local v0, numberString:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string v1, "voicemail:x"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    const-string v1, "sip"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 224
    :cond_1
    const-string v1, "tel"

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "number"
    .parameter "formattedNumber"

    .prologue
    const v1, 0x7f0d0099

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const-string p1, ""

    .line 209
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 159
    .restart local p1
    :cond_1
    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_3
    const-string v0, "-2"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_4
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 175
    :cond_6
    const-string v0, "-3"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 184
    :cond_7
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v0, :cond_8

    .line 185
    const-string v0, "-4"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 192
    :cond_8
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v0, :cond_9

    .line 193
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d03de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 199
    :cond_9
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v0, :cond_a

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 203
    :cond_a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p2

    .line 209
    goto/16 :goto_0
.end method

.method public getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "number"
    .parameter "formattedNumber"
    .parameter "countryIso"
    .parameter "mContext"

    .prologue
    const v3, 0x7f0d0099

    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, dispNumber:Ljava/lang/CharSequence;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    const-string p1, ""

    .line 150
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 83
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d03da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 95
    :cond_3
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 96
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorKTT:Z

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d03e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_4
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorSKT:Z

    if-eqz v2, :cond_5

    .line 99
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_6
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d009b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_7
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsVendorLGT:Z

    if-eqz v2, :cond_8

    .line 111
    const-string v2, "-4"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 112
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 118
    :cond_8
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-eqz v2, :cond_9

    .line 119
    const-string v2, "-5"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d03de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 125
    :cond_9
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mIsSamsungCorean:Z

    if-nez v2, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "disable_format_number"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 133
    invoke-static {p4}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, mCountryIso:Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_c

    .line 139
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 136
    .end local v1           #mCountryIso:Ljava/lang/String;
    :cond_b
    move-object v1, p3

    .restart local v1       #mCountryIso:Ljava/lang/String;
    goto :goto_1

    .line 142
    :cond_c
    move-object v0, p1

    goto :goto_2

    :cond_d
    move-object p1, v0

    .line 150
    goto/16 :goto_0
.end method

.method public isSipNumber(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVoicemailNumber(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mVoicemailNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setScrollState(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 238
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->mScrollState:I

    .line 239
    return-void
.end method
