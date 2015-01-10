.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "LogsDeleteAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    }
.end annotation


# static fields
.field static final buildcarrier:Ljava/lang/String;


# instance fields
.field private final NOR_INT:I

.field private final SEP_INT:I

.field private final mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;",
            "Lcom/sec/android/app/dialertab/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIsEmail:Z

.field private final mIsMulti:Z

.field private mLoading:Z

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRemindMeLater:Z

.field private mRemindTimeArray:[I

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mVoicemailNumber:Ljava/lang/String;

.field private seperatorIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->buildcarrier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "currentCountryIso"
    .parameter "voicemailNumber"
    .parameter "isMulti"
    .parameter "isEmail"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 261
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 121
    const/16 v3, 0xa

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->NOR_INT:I

    .line 122
    const/16 v3, 0x37

    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->SEP_INT:I

    .line 136
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 138
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    .line 203
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 222
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 224
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 225
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 229
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    .line 245
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    .line 263
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    .line 264
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 266
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    .line 268
    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 269
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    .line 270
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 273
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 275
    .local v0, callTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 276
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v2, p3}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 277
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v1, v2, v0, v3}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    .line 279
    .local v1, phoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;-><init>(Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    .line 282
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder$GroupCreator;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    .line 288
    iput-boolean p4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    .line 289
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x140

    const/16 v9, 0xf0

    const/high16 v8, 0x4391

    const v7, 0x7f0900c7

    .line 1377
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1378
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1379
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1380
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1381
    const v1, 0x7f0900d4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1383
    const-string v4, "LogsDeleteAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    packed-switch v3, :pswitch_data_0

    .line 1426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid font size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :pswitch_0
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v10, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_1

    .line 1392
    const/16 v1, 0xb

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1393
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004d

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1394
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1424
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 1396
    :cond_1
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v9, :cond_0

    .line 1397
    const-string v0, "LogsDeleteAdapter"

    const-string v2, "Large"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    const/4 v0, 0x0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1399
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004e

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1400
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1404
    :pswitch_2
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v10, :cond_3

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_3

    .line 1405
    const/16 v1, 0x16

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1406
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1407
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110055

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1411
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1409
    :cond_2
    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110051

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 1418
    :cond_3
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v9, :cond_0

    .line 1419
    const-string v0, "LogsDeleteAdapter"

    const-string v2, "huge"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/4 v0, -0x8

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1421
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1422
    iget-object v0, p2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 86
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 857
    const-string v4, "LogsDeleteAdapter"

    const-string v18, "========= bindView =========  "

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    .line 859
    .local v85, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getSeperatorIDList()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    .line 890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getStrSeparatorArray()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    .line 892
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->seperatorIDList:Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v18, 0x37

    move/from16 v0, v18

    if-ne v4, v0, :cond_0

    .line 894
    const/16 v79, 0x0

    .line 895
    .local v79, mDateText:Ljava/lang/String;
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->strSeparatorArray:[Ljava/lang/String;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    aget-object v79, v4, v18

    .line 897
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v79           #mDateText:Ljava/lang/String;
    :cond_0
    :goto_0
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 905
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 907
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsMulti:Z

    if-nez v4, :cond_1

    .line 908
    const v4, 0x7f0902a8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v81

    check-cast v81, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 909
    .local v81, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 910
    .local v80, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 911
    const/high16 v4, 0x40a0

    move-object/from16 v0, v80

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v18, v0

    mul-float v4, v4, v18

    float-to-int v4, v4

    move-object/from16 v0, v81

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 912
    const v4, 0x7f090086

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 913
    const v4, 0x7f0902a8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v81           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 917
    .local v5, number:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 918
    .local v10, date:J
    const/4 v4, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 919
    .local v12, duration:J
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    .line 920
    .local v71, callType:I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 921
    .local v7, countryIso:Ljava/lang/String;
    const/16 v4, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 922
    .local v14, logType:I
    const/16 v4, 0x15

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 925
    .local v20, simnum:I
    const/16 v4, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 926
    .local v33, mCnapName:Ljava/lang/String;
    const/16 v4, 0x16

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 927
    .local v34, mCdnipNumber:Ljava/lang/String;
    const/16 v4, 0x17

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 930
    .local v32, mServiceType:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v69

    .line 933
    .local v69, cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v4, 0x10

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 934
    .local v75, firstName:Ljava/lang/String;
    const/16 v4, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 935
    .local v78, lastName:Ljava/lang/String;
    const/16 v4, 0x12

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    .line 936
    .local v68, bussName:Ljava/lang/String;
    const/16 v4, 0x14

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    .line 937
    .local v73, cnapName:Ljava/lang/String;
    const/16 v4, 0x13

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v72

    .line 938
    .local v72, cityId:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    .line 939
    .local v76, gedLocation:Ljava/lang/String;
    const/16 v4, 0x1c

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 940
    .local v67, simcardId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 942
    const-string v4, "feature_cityid"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 943
    if-eqz v72, :cond_2

    .line 944
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 962
    :cond_2
    :goto_1
    new-instance v82, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    move-object/from16 v0, v82

    invoke-direct {v0, v5, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .local v82, numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v70

    .line 965
    .local v70, cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    if-nez v70, :cond_c

    const/16 v77, 0x0

    .line 966
    .local v77, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 970
    sget-object v77, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 998
    :cond_3
    :goto_3
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 999
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    if-nez v4, :cond_11

    .line 1000
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v67

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    :cond_4
    :goto_4
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getRemindTimeArray()[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    .line 1008
    const/4 v4, 0x1

    move/from16 v0, p3

    if-le v0, v4, :cond_13

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    aget v4, v4, v18

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    .line 1016
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    if-eqz v4, :cond_15

    .line 1017
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const v18, 0x7f0205c9

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1018
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    :cond_5
    :goto_7
    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v49, v0

    .line 1027
    .local v49, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, v77

    iget-object v15, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 1028
    .local v15, name:Ljava/lang/String;
    move-object/from16 v0, v77

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    move/from16 v16, v0

    .line 1029
    .local v16, ntype:I
    move-object/from16 v0, v77

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1030
    .local v17, label:Ljava/lang/String;
    move-object/from16 v0, v77

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    move-wide/from16 v83, v0

    .line 1031
    .local v83, photoId:J
    move-object/from16 v0, v77

    iget-object v6, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1032
    .local v6, formattedNumber:Ljava/lang/CharSequence;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v9

    .line 1033
    .local v9, callTypes:[I
    const/4 v4, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1035
    .local v8, geocode:Ljava/lang/String;
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1036
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1037
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, -0x1

    const-string v15, ""

    .end local v15           #name:Ljava/lang/String;
    const/16 v16, 0x0

    const-string v17, ""

    .end local v16           #ntype:I
    .end local v17           #label:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .line 1044
    .local v3, details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :goto_8
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1045
    move/from16 v0, v67

    iput v0, v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 1076
    :cond_6
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v85

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;)V

    .line 1084
    :cond_7
    const-string v4, "feature_cnam"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v23, v85

    move-object/from16 v24, v3

    move/from16 v26, p3

    move-object/from16 v27, v73

    move-object/from16 v28, v75

    move-object/from16 v29, v78

    move-object/from16 v30, v68

    move-object/from16 v31, v72

    invoke-virtual/range {v21 .. v31}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    :goto_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v18, "CscFeature_Contact_DisableContactPhoto"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1096
    const v4, 0x7f0900c7

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    :goto_b
    const-string v4, "feature_chn_duos_cdma_gsm"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mVoicemailNumber:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1105
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    const v18, 0x7f0d0098

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1106
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_9

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1115
    :cond_9
    return-void

    .line 899
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #formattedNumber:Ljava/lang/CharSequence;
    .end local v7           #countryIso:Ljava/lang/String;
    .end local v8           #geocode:Ljava/lang/String;
    .end local v9           #callTypes:[I
    .end local v10           #date:J
    .end local v12           #duration:J
    .end local v14           #logType:I
    .end local v20           #simnum:I
    .end local v32           #mServiceType:I
    .end local v33           #mCnapName:Ljava/lang/String;
    .end local v34           #mCdnipNumber:Ljava/lang/String;
    .end local v49           #lookupUri:Landroid/net/Uri;
    .end local v67           #simcardId:I
    .end local v68           #bussName:Ljava/lang/String;
    .end local v69           #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v70           #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .end local v71           #callType:I
    .end local v72           #cityId:Ljava/lang/String;
    .end local v73           #cnapName:Ljava/lang/String;
    .end local v75           #firstName:Ljava/lang/String;
    .end local v76           #gedLocation:Ljava/lang/String;
    .end local v77           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v78           #lastName:Ljava/lang/String;
    .end local v82           #numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    .end local v83           #photoId:J
    :catch_0
    move-exception v74

    .line 900
    .local v74, e:Ljava/lang/Exception;
    const-string v4, "LogsDeleteAdapter"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception in bindView "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 947
    .end local v74           #e:Ljava/lang/Exception;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v7       #countryIso:Ljava/lang/String;
    .restart local v10       #date:J
    .restart local v12       #duration:J
    .restart local v14       #logType:I
    .restart local v20       #simnum:I
    .restart local v32       #mServiceType:I
    .restart local v33       #mCnapName:Ljava/lang/String;
    .restart local v34       #mCdnipNumber:Ljava/lang/String;
    .restart local v67       #simcardId:I
    .restart local v68       #bussName:Ljava/lang/String;
    .restart local v69       #cachedContactInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v71       #callType:I
    .restart local v72       #cityId:Ljava/lang/String;
    .restart local v73       #cnapName:Ljava/lang/String;
    .restart local v75       #firstName:Ljava/lang/String;
    .restart local v76       #gedLocation:Ljava/lang/String;
    .restart local v78       #lastName:Ljava/lang/String;
    :cond_a
    const-string v4, "feature_ged_location"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 948
    const-string v4, "feature_att"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "d2uc"

    sget-object v18, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->buildcarrier:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 949
    if-eqz v72, :cond_2

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    goto/16 :goto_1

    .line 952
    :cond_b
    if-eqz v76, :cond_2

    .line 953
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->truncateCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    goto/16 :goto_1

    .line 965
    .restart local v70       #cachedInfo:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<Lcom/sec/android/app/dialertab/calllog/ContactInfo;>;"
    .restart local v82       #numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    :cond_c
    invoke-interface/range {v70 .. v70}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v77, v4

    goto/16 :goto_2

    .line 971
    .restart local v77       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_d
    if-nez v70, :cond_e

    .line 972
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    sget-object v18, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v82

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 974
    move-object/from16 v77, v69

    .line 977
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v7, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto/16 :goto_3

    .line 980
    :cond_e
    invoke-interface/range {v70 .. v70}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 983
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v7, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    .line 992
    :cond_f
    :goto_c
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-object/from16 v0, v77

    if-ne v0, v4, :cond_3

    .line 994
    move-object/from16 v77, v69

    goto/16 :goto_3

    .line 984
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    move-object/from16 v2, v77

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 989
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v5, v7, v1, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V

    goto :goto_c

    .line 1002
    :cond_11
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1003
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 1009
    :cond_12
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1012
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    const/16 v19, 0x1f

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    aput v19, v4, v18

    .line 1013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindTimeArray:[I

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    aget v4, v4, v18

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRemindMeLater:Z

    goto/16 :goto_6

    :cond_14
    const/4 v4, 0x0

    goto :goto_d

    .line 1021
    :cond_15
    move-object/from16 v0, v85

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 1041
    .restart local v6       #formattedNumber:Ljava/lang/CharSequence;
    .restart local v8       #geocode:Ljava/lang/String;
    .restart local v9       #callTypes:[I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #ntype:I
    .restart local v17       #label:Ljava/lang/String;
    .restart local v49       #lookupUri:Landroid/net/Uri;
    .restart local v83       #photoId:J
    :cond_16
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, -0x1

    const/16 v19, 0x0

    move-object/from16 v18, v49

    invoke-direct/range {v3 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_8

    .line 1047
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_17
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1048
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1049
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v35, 0x0

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-wide/from16 v27, v10

    move-wide/from16 v29, v12

    move/from16 v31, v14

    invoke-direct/range {v21 .. v35}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJIILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1053
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_18
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v50, 0x0

    const/16 v54, 0x0

    move-object/from16 v35, v3

    move-object/from16 v36, v5

    move-object/from16 v37, v6

    move-object/from16 v38, v7

    move-object/from16 v39, v8

    move-object/from16 v40, v9

    move-wide/from16 v41, v10

    move-wide/from16 v43, v12

    move/from16 v45, v14

    move-object/from16 v46, v15

    move/from16 v47, v16

    move-object/from16 v48, v17

    move/from16 v51, v32

    move-object/from16 v52, v33

    move-object/from16 v53, v34

    invoke-direct/range {v35 .. v54}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1056
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_19
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1057
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1058
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v51, -0x1

    const-string v62, ""

    const/16 v63, 0x0

    const-string v64, ""

    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v50, v3

    move-object/from16 v52, v5

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v56, v9

    move-wide/from16 v57, v10

    move-wide/from16 v59, v12

    move/from16 v61, v14

    invoke-direct/range {v50 .. v67}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1062
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1a
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v51, -0x1

    const/16 v66, 0x0

    move-object/from16 v50, v3

    move-object/from16 v52, v5

    move-object/from16 v53, v6

    move-object/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v56, v9

    move-wide/from16 v57, v10

    move-wide/from16 v59, v12

    move/from16 v61, v14

    move-object/from16 v62, v15

    move/from16 v63, v16

    move-object/from16 v64, v17

    move-object/from16 v65, v49

    invoke-direct/range {v50 .. v67}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;I)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1066
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1067
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object v4, v3

    invoke-direct/range {v4 .. v14}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJI)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1071
    .end local v3           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    :cond_1c
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/16 v19, 0x0

    move-object v4, v3

    move-object/from16 v18, v49

    invoke-direct/range {v4 .. v19}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    .restart local v3       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    goto/16 :goto_9

    .line 1088
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #ntype:I
    .end local v17           #label:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogViewsHelper:Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v25, 0x0

    move-object/from16 v23, v85

    move-object/from16 v24, v3

    move/from16 v26, p3

    invoke-virtual/range {v21 .. v26}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZI)V

    goto/16 :goto_a

    .line 1098
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    move-object/from16 v45, p0

    move-object/from16 v46, v85

    move-wide/from16 v47, v83

    invoke-direct/range {v45 .. v51}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V

    goto/16 :goto_b
.end method

.method private callLogInfoMatches(Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 2
    .parameter "callLogInfo"
    .parameter "info"

    .prologue
    .line 1121
    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 843
    const-string v1, "LogsDeleteAdapter"

    const-string v2, "========= findAndCacheViews ========="

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-static {p1}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    move-result-object v0

    .line 846
    .local v0, views:Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 847
    return-void
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1281
    const-string p1, ""

    .line 1293
    :cond_0
    :goto_0
    return-object p1

    .line 1284
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1287
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1288
    iget-object p3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCurrentCountryIso:Ljava/lang/String;

    .line 1290
    :cond_2
    const-string v0, "disable_format_number"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1293
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .parameter "cursor"
    .parameter "count"

    .prologue
    .line 1227
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1228
    .local v2, position:I
    new-array v0, p2, [I

    .line 1229
    .local v0, callTypes:[I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 1230
    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    .line 1231
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1234
    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 4
    .parameter "c"

    .prologue
    .line 1204
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 1205
    .local v0, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1206
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 1207
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 1208
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 1209
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, matchedNumber:Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #matchedNumber:Ljava/lang/String;
    :cond_0
    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 1211
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 1212
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 1213
    const/16 v2, 0x1d

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 1214
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1215
    const/16 v2, 0x1e

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 1216
    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    .locals 8
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"

    .prologue
    const/4 v4, 0x0

    .line 647
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mIsEmail:Z

    if-eqz v7, :cond_0

    .line 648
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForEmail(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .line 668
    .local v1, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :goto_0
    if-nez v1, :cond_4

    .line 694
    :goto_1
    return v4

    .line 651
    .end local v1           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 653
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 654
    .local v3, sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    if-eqz v3, :cond_1

    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v3, v7, :cond_2

    .line 656
    :cond_1
    const/16 v7, 0x40

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, username:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 658
    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v3

    .line 661
    .end local v6           #username:Ljava/lang/String;
    :cond_2
    move-object v1, v3

    .line 662
    .restart local v1       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 663
    .end local v1           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v3           #sipInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    move-result-object v1

    .restart local v1       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 672
    :cond_4
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-ne v1, v7, :cond_6

    .line 674
    new-instance v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v5}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 675
    .local v5, updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    iput-object p1, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 676
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 684
    :goto_2
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .local v2, numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2}, Lcom/android/contacts/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .line 686
    .local v0, existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    invoke-virtual {v5, v0}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const/4 v4, 0x1

    .line 690
    .local v4, updated:Z
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v7, v2, v5}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 693
    invoke-direct {p0, p1, p2, v5, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    goto :goto_1

    .line 678
    .end local v0           #existingInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .end local v2           #numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    .end local v4           #updated:Z
    .end local v5           #updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_6
    move-object v5, v1

    .restart local v5       #updatedInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForEmail(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 17
    .parameter "number"

    .prologue
    .line 504
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v3, v1

    .line 507
    .local v3, EMAIL_PROJECTION:[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v10, v1

    .line 511
    .local v10, CONTACT_PROJECTION:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 512
    .local v12, emailCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 518
    if-eqz v12, :cond_3

    .line 519
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 520
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 521
    new-instance v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v14}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 522
    .local v14, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 523
    .local v13, id:I
    iput v13, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 524
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 525
    .local v15, lookupkey:Ljava/lang/String;
    int-to-long v1, v13

    invoke-static {v1, v2, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 526
    int-to-long v1, v13

    invoke-static {v1, v2, v15}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 527
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 528
    .local v11, contactCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 529
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 530
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 531
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 532
    .local v16, name:Ljava/lang/String;
    move-object/from16 v0, v16

    iput-object v0, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 533
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 534
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 535
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 537
    .end local v16           #name:Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #contactCursor:Landroid/database/Cursor;
    .end local v13           #id:I
    .end local v15           #lookupkey:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 547
    :goto_1
    return-object v14

    .line 541
    .end local v14           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_2
    sget-object v14, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v14       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 545
    .end local v14           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_3
    const/4 v14, 0x0

    .restart local v14       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 18
    .parameter "number"
    .parameter "countryIso"

    .prologue
    .line 565
    const/16 v17, 0x0

    .line 568
    .local v17, phonesCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v14

    .line 571
    .local v14, mMatchLen:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    .line 573
    .local v15, nLen:I
    const-string v3, "LogsDeleteAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[queryContactInfoForPhoneNumber] mMatchLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   nLen :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v13, 0x0

    .line 577
    .local v13, mIsSpecialNum:Z
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v13

    .line 578
    const-string v3, "LogsDeleteAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryContactInfoForPhoneNumber: mIsSpecialNum"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-le v15, v14, :cond_1

    if-nez v13, :cond_1

    .line 582
    const-string v3, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 583
    .local v16, phoneLookup:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 605
    .end local v13           #mIsSpecialNum:Z
    .end local v14           #mMatchLen:I
    .end local v15           #nLen:I
    .end local v16           #phoneLookup:Landroid/net/Uri;
    :goto_0
    if-eqz v17, :cond_4

    .line 606
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 607
    new-instance v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v11}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 608
    .local v11, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 609
    .local v9, contactId:J
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 610
    const/4 v3, 0x7

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 611
    .local v12, lookupKey:Ljava/lang/String;
    invoke-static {v9, v10, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 612
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 613
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 614
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 615
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 616
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 617
    const/4 v3, 0x6

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 621
    .end local v9           #contactId:J
    .end local v12           #lookupKey:Ljava/lang/String;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 627
    :goto_2
    if-eqz v11, :cond_0

    sget-object v3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    if-eq v11, v3, :cond_0

    .line 628
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 630
    :cond_0
    return-object v11

    .line 590
    .end local v11           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .restart local v13       #mIsSpecialNum:Z
    .restart local v14       #mMatchLen:I
    .restart local v15       #nLen:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 598
    .end local v13           #mIsSpecialNum:Z
    .end local v14           #mMatchLen:I
    .end local v15           #nLen:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    goto/16 :goto_0

    .line 619
    :cond_3
    sget-object v11, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v11       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1

    .line 624
    .end local v11           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_4
    const/4 v11, 0x0

    .restart local v11       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_2
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    .locals 13
    .parameter "sipAddress"

    .prologue
    const/4 v2, 0x0

    .line 435
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 446
    .local v1, contactRef:Landroid/net/Uri;
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 449
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 451
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 459
    .local v8, dataTableCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 460
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    new-instance v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    invoke-direct {v9}, Lcom/sec/android/app/dialertab/calllog/ContactInfo;-><init>()V

    .line 471
    .local v9, info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 473
    .local v6, contactId:J
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    .line 475
    const-string v0, "lookup"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 477
    .local v10, lookupKey:Ljava/lang/String;
    invoke-static {v6, v7, v10}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 478
    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 481
    const/4 v0, 0x3

    iput v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    .line 482
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 486
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    .line 487
    iput-object v2, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 488
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    .line 493
    .end local v6           #contactId:J
    .end local v10           #lookupKey:Ljava/lang/String;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 498
    :goto_1
    return-object v9

    .line 491
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_0
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_0

    .line 496
    .end local v9           #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    :cond_1
    const/4 v9, 0x0

    .restart local v9       #info:Lcom/sec/android/app/dialertab/calllog/ContactInfo;
    goto :goto_1
.end method

.method private setPhoto(Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;JLandroid/net/Uri;J)V
    .locals 7
    .parameter "views"
    .parameter "photoId"
    .parameter "contactUri"
    .parameter "randomSeed"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 1240
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    move-wide v2, p2

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    .line 1242
    return-void
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 343
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 344
    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1129
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1132
    if-eqz p4, :cond_7

    .line 1133
    iget-object v0, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v4, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1134
    const-string v0, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1138
    :goto_0
    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    iget v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    if-eq v4, v5, :cond_0

    .line 1139
    const-string v0, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1143
    :cond_0
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1144
    const-string v0, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1147
    :cond_1
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1148
    const-string v0, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1157
    :cond_2
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1158
    const-string v0, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1161
    :cond_3
    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    iget-wide v6, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 1162
    const-string v0, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move v0, v1

    .line 1165
    :cond_4
    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1166
    const-string v0, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1169
    :cond_5
    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    iget v5, p4, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    if-eq v4, v5, :cond_6

    .line 1170
    const-string v0, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1187
    :cond_6
    :goto_1
    if-nez v0, :cond_8

    .line 1200
    :goto_2
    return-void

    .line 1175
    :cond_7
    const-string v0, "name"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v0, "numbertype"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    const-string v0, "numberlabel"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v0, "lookup_uri"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/contacts/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v0, "matched_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v0, "normalized_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v0, "photo_id"

    iget-wide v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1182
    const-string v0, "formatted_number"

    iget-object v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v0, "contactid"

    iget v4, p3, Lcom/sec/android/app/dialertab/calllog/ContactInfo;->contactId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v0, v1

    .line 1184
    goto :goto_1

    .line 1191
    :cond_8
    if-nez p2, :cond_9

    .line 1192
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso IS NULL"

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v4, v3, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1196
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v5, "number = ? AND countryiso = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v2

    aput-object p2, v6, v1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1263
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroup ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 1265
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 756
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= addGroups ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 758
    return-void
.end method

.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 809
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindChildView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 811
    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 838
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindGroupView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 840
    return-void
.end method

.method public bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 782
    const-string v0, "LogsDeleteAdapter"

    const-string v1, "========= bindStandAloneView ========="

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 784
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z

    .line 1253
    return-void
.end method

.method enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;Z)V
    .locals 3
    .parameter "number"
    .parameter "countryIso"
    .parameter "callLogInfo"
    .parameter "immediate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 407
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V

    .line 408
    .local v0, request:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$ContactInfoRequest;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 413
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->startRequestProcessing()V

    .line 415
    :cond_1
    return-void

    .line 413
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getGroupCountList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallLogGroupBuilder:Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogGroupBuilder;->getGroupCountList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)V
    .locals 2
    .parameter "number"
    .parameter "countryIso"
    .parameter "contactInfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1257
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    .local v0, numberCountryIso:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1259
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 789
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newChildView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 793
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 794
    .local v1, view:Landroid/view/View;
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    const v2, 0x7f040123

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 802
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 803
    return-object v1

    .line 796
    :cond_0
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    const v2, 0x7f040124

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 799
    :cond_1
    const v2, 0x7f040122

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 816
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newGroupView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 821
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 822
    .local v1, view:Landroid/view/View;
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 823
    const v2, 0x7f040123

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 830
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 831
    return-object v1

    .line 824
    :cond_0
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 825
    const v2, 0x7f040124

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 827
    :cond_1
    const v2, 0x7f040122

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "parent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 763
    const-string v2, "LogsDeleteAdapter"

    const-string v3, "========= newStandAloneView ========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 766
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    .line 767
    .local v1, view:Landroid/view/View;
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 768
    const v2, 0x7f040123

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 775
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 776
    return-object v1

    .line 769
    :cond_0
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    const v2, 0x7f040124

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 772
    :cond_1
    const v2, 0x7f040122

    invoke-virtual {v0, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->unregisterPreDrawListener()V

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 242
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mLoading:Z

    .line 294
    return-void
.end method

.method public declared-synchronized startRequestProcessing()V
    .locals 2

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 311
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;->stopProcessing()V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mCallerIdThread:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public truncateCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "city_id"

    .prologue
    const/16 v7, 0x2c

    const/4 v8, 0x0

    .line 356
    const/4 v4, 0x1

    .line 357
    .local v4, orientation:I
    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 358
    .local v2, configuration:Landroid/content/res/Configuration;
    if-eqz v2, :cond_0

    .line 359
    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 362
    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 365
    .local v3, len_city:I
    const/16 v0, 0x11

    .line 367
    .local v0, MAX_LEN:I
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 368
    const/16 v0, 0xf

    .line 374
    :cond_1
    :goto_0
    if-lt v3, v0, :cond_2

    .line 376
    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v7, v3, -0x4

    if-ne v6, v7, :cond_2

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v6, v3, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 378
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, city_name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, state_abbr:Ljava/lang/String;
    const-string v6, "feature_wvga"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    .end local v0           #MAX_LEN:I
    .end local v1           #city_name:Ljava/lang/String;
    .end local v3           #len_city:I
    .end local v5           #state_abbr:Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 370
    .restart local v0       #MAX_LEN:I
    .restart local v3       #len_city:I
    :cond_3
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 371
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 383
    .restart local v1       #city_name:Ljava/lang/String;
    .restart local v5       #state_abbr:Ljava/lang/String;
    :cond_4
    const-string v6, "feature_is_note"

    invoke-static {v6}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 384
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xd

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 386
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0xc

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method
