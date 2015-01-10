.class public final Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
.super Ljava/lang/Object;
.source "CallLogListItemViews.java"


# instance fields
.field public final PrimaryActionLongClickListener:Landroid/view/View;

.field public final bottomDivider:Landroid/view/View;

.field public final callIndi:Landroid/widget/ImageView;

.field public final callLogDate:Landroid/widget/TextView;

.field public final groupCount:Landroid/widget/TextView;

.field public final imageLayout:Landroid/widget/RelativeLayout;

.field public final listHeaderTextView:Landroid/widget/TextView;

.field public final logType:Landroid/widget/ImageView;

.field public final nameText:Landroid/widget/TextView;

.field public final numberText:Landroid/widget/TextView;

.field public final phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

.field public final photoButton:Landroid/widget/ImageButton;

.field public final photoView:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final quickContactView:Landroid/widget/QuickContactBadge;

.field public final remindmeimage:Landroid/widget/ImageView;

.field public final secondaryActionView:Landroid/widget/Button;

.field public final simcardImage:Landroid/widget/ImageView;

.field public final timeText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "callLogDate"
    .parameter "imagelayout"
    .parameter "photoView"
    .parameter "image_button"
    .parameter "quickContactView"
    .parameter "primaryActionView"
    .parameter "PrimaryActionLongClickListener"
    .parameter "secondaryActionView"
    .parameter "logType"
    .parameter "nameText"
    .parameter "groupCount"
    .parameter "callIndi"
    .parameter "numberText"
    .parameter "timeText"
    .parameter "phoneCallDetailsViews"
    .parameter "listHeaderTextView"
    .parameter "bottomDivider"
    .parameter "view"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callLogDate:Landroid/widget/TextView;

    .line 70
    iput-object p9, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->logType:Landroid/widget/ImageView;

    .line 71
    iput-object p10, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->nameText:Landroid/widget/TextView;

    .line 72
    iput-object p11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->groupCount:Landroid/widget/TextView;

    .line 73
    iput-object p12, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->callIndi:Landroid/widget/ImageView;

    .line 74
    iput-object p13, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->numberText:Landroid/widget/TextView;

    .line 75
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->timeText:Landroid/widget/TextView;

    .line 76
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->imageLayout:Landroid/widget/RelativeLayout;

    .line 77
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoView:Landroid/widget/ImageView;

    .line 78
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->photoButton:Landroid/widget/ImageButton;

    .line 79
    iput-object p5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    .line 80
    iput-object p6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    .line 81
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->PrimaryActionLongClickListener:Landroid/view/View;

    .line 82
    iput-object p8, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->secondaryActionView:Landroid/widget/Button;

    .line 83
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    .line 84
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->listHeaderTextView:Landroid/widget/TextView;

    .line 85
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->bottomDivider:Landroid/view/View;

    .line 86
    const-string v1, "ctc_dual_mode"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    const v1, 0x7f0900d5

    move-object/from16 v0, p18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    .line 91
    :goto_0
    const-string v1, "feature_remind_me_later_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    const v1, 0x7f0900d3

    move-object/from16 v0, p18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    .line 96
    :goto_1
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->simcardImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;->remindmeimage:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method public static createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .locals 21
    .parameter "context"

    .prologue
    .line 121
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    new-instance v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->createForTest(Landroid/content/Context;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-result-object v17

    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v19, Landroid/view/View;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v20, Landroid/view/View;

    invoke-direct/range {v20 .. v21}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v2 .. v20}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;-><init>(Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v2
.end method

.method public static fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;
    .locals 21
    .parameter "view"

    .prologue
    .line 99
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;

    const v3, 0x7f0900c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0900c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    const v5, 0x7f0900ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0900cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    const v7, 0x7f0900cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/QuickContactBadge;

    const v8, 0x7f0900c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0900c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0900cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    const v11, 0x7f0900d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0900d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0900d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0900d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v15, 0x7f0900d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v16, 0x7f0900d7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;->fromView(Landroid/view/View;)Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;

    move-result-object v17

    const v18, 0x7f0900d8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f0900d9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v20, p0

    invoke-direct/range {v2 .. v20}, Lcom/sec/android/app/dialertab/calllog/CallLogListItemViews;-><init>(Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/QuickContactBadge;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsViews;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V

    return-object v2
.end method
