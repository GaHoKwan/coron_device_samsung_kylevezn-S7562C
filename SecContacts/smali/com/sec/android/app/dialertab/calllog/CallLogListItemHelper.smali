.class Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# static fields
.field private static isVoLTEEnabled:Z


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;

.field private topPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "phoneCallDetailsHelper"
    .parameter "phoneNumberHelper"
    .parameter "resources"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 62
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 63
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 64
    return-void
.end method

.method private configureCallSecondaryAction(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V
    .locals 7
    .parameter "mContext"
    .parameter "views"
    .parameter "details"

    .prologue
    const v6, 0x7f0d0341

    const v3, 0x7f0205ca

    const v5, 0x7f0205b4

    const/4 v4, 0x0

    .line 124
    iget v1, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v1, :sswitch_data_0

    .line 188
    :cond_0
    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 189
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 191
    const-string v1, "feature_wvga"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 192
    const/high16 v1, 0x4170

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->topPadding:I

    .line 198
    :goto_1
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->topPadding:I

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 200
    return-void

    .line 133
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .restart local p1
    :sswitch_0
    iget-boolean v1, p3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->isVoLTEEnabled:Z

    if-eqz v1, :cond_5

    .line 134
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205ba

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 150
    :cond_1
    :goto_2
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 138
    :cond_2
    const-string v1, "feature_kt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205b6

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 141
    :cond_3
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205b7

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 145
    :cond_4
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205b8

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 148
    :cond_5
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_2

    .line 154
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 156
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 161
    :sswitch_2
    const-string v1, "feature_vzw"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205e3

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 166
    :goto_3
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 164
    :cond_6
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const v2, 0x7f0205e2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_3

    .line 194
    .end local p1
    .restart local v0       #metrics:Landroid/util/DisplayMetrics;
    :cond_7
    const/high16 v1, 0x4110

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->topPadding:I

    goto/16 :goto_1

    .line 124
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_0
        0x1fe -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x44c -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V
    .locals 11
    .parameter "mContext"
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"
    .parameter "listGroupSize"

    .prologue
    .line 75
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "mContext"
    .parameter "views"
    .parameter "details"
    .parameter "isHighlighted"
    .parameter "listGroupSize"
    .parameter "cnapName"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "bussName"
    .parameter "cityId"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-object v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 88
    .local v12, canCall:Z
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v13, 0x1

    .line 94
    .local v13, canPlay:Z
    :goto_0
    if-nez v12, :cond_0

    if-eqz v13, :cond_3

    .line 96
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->configureCallSecondaryAction(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;)V

    .line 107
    .end local v12           #canCall:Z
    .end local v13           #canPlay:Z
    :cond_1
    :goto_1
    return-void

    .line 88
    .restart local v12       #canCall:Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 100
    .restart local v13       #canPlay:Z
    :cond_3
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 101
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 103
    :cond_4
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method protected setScrollState(I)V
    .locals 1
    .parameter "scrollState"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;->setScrollState(I)V

    .line 226
    return-void
.end method
