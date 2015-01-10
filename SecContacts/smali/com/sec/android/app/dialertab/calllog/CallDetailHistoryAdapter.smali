.class public Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "CallDetailHistoryAdapter.java"


# static fields
.field private static final DBG:Z

.field private static isVoLTEEnabled:Z


# instance fields
.field private final bDeleteView:Z

.field private final mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field private final mContext:Landroid/content/Context;

.field private final mControls:Landroid/view/View;

.field private mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field private mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

.field private final mShowCallAndSms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    .line 89
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->isVoLTEEnabled:Z

    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;ZZLandroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "layoutInflater"
    .parameter "callTypeHelper"
    .parameter "phoneCallDetails"
    .parameter "showCallAndSms"
    .parameter "isDelete"
    .parameter "controls"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 92
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 107
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 109
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 110
    iput-object p4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    .line 111
    iput-boolean p5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    .line 112
    iput-boolean p6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    .line 113
    iput-object p7, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    .line 114
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    .line 117
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustListItemLayoutByFontSize(Landroid/view/View;)V
    .locals 12
    .parameter

    .prologue
    const/16 v11, 0x140

    const/16 v10, 0xf0

    const/high16 v9, 0x44a0

    const/high16 v8, 0x4448

    const/high16 v7, 0x4391

    .line 704
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 707
    const v0, 0x7f090084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 708
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 710
    const-string v4, "CallDetailHistoryAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adjustListItemLayoutByFontSize fontSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mlp.topMargin : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 713
    packed-switch v3, :pswitch_data_0

    .line 743
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

    .line 719
    :pswitch_0
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v11, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_1

    .line 720
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f11004d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 780
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 722
    :cond_1
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v10, :cond_0

    .line 723
    const/4 v2, 0x6

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 724
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f11004e

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 725
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 729
    :pswitch_2
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v3, v11, :cond_2

    iget v3, v2, Landroid/util/DisplayMetrics;->xdpi:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_2

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f110051

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_0

    .line 736
    :cond_2
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v2, v10, :cond_0

    .line 737
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 738
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110052

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 739
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v0

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 750
    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lcdWidth : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v0, "CallDetailHistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smallestWidthdp : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 754
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 756
    packed-switch v3, :pswitch_data_1

    .line 782
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

    .line 762
    :pswitch_3
    const-string v3, "CallDetailHistoryAdapter"

    const-string v5, "Large"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    cmpl-float v3, v2, v9

    if-eqz v3, :cond_4

    cmpl-float v2, v2, v8

    if-nez v2, :cond_0

    .line 764
    :cond_4
    const/16 v2, 0x258

    if-ne v4, v2, :cond_0

    .line 765
    const/4 v2, -0x8

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 766
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110050

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 767
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 772
    :pswitch_4
    const-string v3, "CallDetailHistoryAdapter"

    const-string v5, "Huge"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    cmpl-float v3, v2, v9

    if-eqz v3, :cond_5

    cmpl-float v2, v2, v8

    if-nez v2, :cond_0

    .line 774
    :cond_5
    const/16 v2, 0x258

    if-ne v4, v2, :cond_0

    .line 775
    const/16 v2, -0x15

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 776
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f110054

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 777
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 13
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x1

    const-wide/16 v8, 0x3c

    .line 617
    const-wide/16 v0, 0x0

    .line 618
    .local v0, hours:J
    const-wide/16 v2, 0x0

    .line 619
    .local v2, minutes:J
    const-wide/16 v4, 0x0

    .line 620
    .local v4, seconds:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v6, timeString:Ljava/lang/StringBuilder;
    cmp-long v7, p1, v8

    if-ltz v7, :cond_4

    .line 623
    rem-long v4, p1, v8

    .line 624
    div-long v2, p1, v8

    .line 626
    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 627
    div-long v0, v2, v8

    .line 628
    rem-long/2addr v2, v8

    .line 634
    :cond_0
    :goto_0
    const-wide/16 v7, 0xa

    cmp-long v7, v0, v7

    if-gez v7, :cond_1

    .line 635
    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :cond_1
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 638
    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    cmp-long v7, v2, v11

    if-lez v7, :cond_5

    .line 641
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 642
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_1
    cmp-long v7, v4, v11

    if-lez v7, :cond_6

    .line 651
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 652
    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 632
    :cond_4
    move-wide v4, p1

    goto :goto_0

    .line 648
    :cond_5
    const-string v7, "00:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 657
    :cond_6
    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private setSimCardIcon(I)I
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 663
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, buildcarrier:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 697
    const v0, 0x7f020629

    .line 700
    .local v0, Image:I
    :goto_0
    return v0

    .line 667
    .end local v0           #Image:I
    :pswitch_0
    const v0, 0x7f020629

    .line 668
    .restart local v0       #Image:I
    goto :goto_0

    .line 670
    .end local v0           #Image:I
    :pswitch_1
    const v0, 0x7f02062a

    .line 671
    .restart local v0       #Image:I
    goto :goto_0

    .line 673
    .end local v0           #Image:I
    :pswitch_2
    const-string v2, "hennessy3gduosctc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    const v0, 0x7f020632

    .restart local v0       #Image:I
    goto :goto_0

    .line 676
    .end local v0           #Image:I
    :cond_0
    const v0, 0x7f02063a

    .line 677
    .restart local v0       #Image:I
    goto :goto_0

    .line 679
    .end local v0           #Image:I
    :pswitch_3
    const v0, 0x7f020646

    .line 680
    .restart local v0       #Image:I
    goto :goto_0

    .line 682
    .end local v0           #Image:I
    :pswitch_4
    const v0, 0x7f020631

    .line 683
    .restart local v0       #Image:I
    goto :goto_0

    .line 685
    .end local v0           #Image:I
    :pswitch_5
    const v0, 0x7f02064b

    .line 686
    .restart local v0       #Image:I
    goto :goto_0

    .line 688
    .end local v0           #Image:I
    :pswitch_6
    const v0, 0x7f020615

    .line 689
    .restart local v0       #Image:I
    goto :goto_0

    .line 691
    .end local v0           #Image:I
    :pswitch_7
    const v0, 0x7f020617

    .line 692
    .restart local v0       #Image:I
    goto :goto_0

    .line 694
    .end local v0           #Image:I
    :pswitch_8
    const v0, 0x7f020625

    .line 695
    .restart local v0       #Image:I
    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    const-wide/16 v0, -0x1

    .line 137
    :goto_0
    return-wide v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 50
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 155
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_0

    .line 156
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView, position : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "view : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    if-nez p1, :cond_8

    .line 158
    if-nez p2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040012

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    .line 164
    .local v36, header:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 613
    .end local v36           #header:Landroid/view/View;
    :cond_1
    :goto_1
    return-object v36

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000e

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000e

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    goto :goto_0

    :cond_4
    move-object/from16 v36, p2

    goto :goto_0

    .line 168
    .restart local v36       #header:Landroid/view/View;
    :cond_5
    const v2, 0x7f09008d

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 169
    .local v20, callAndSmsContainer:Landroid/view/View;
    if-eqz v20, :cond_7

    .line 170
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 175
    .local v28, container:Landroid/view/ViewGroup$LayoutParams;
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->flexibleHeight:I

    move-object/from16 v0, v28

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mShowCallAndSms:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .end local v28           #container:Landroid/view/ViewGroup$LayoutParams;
    :goto_3
    const/4 v2, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mHeaderFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1

    .line 178
    .restart local v28       #container:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/16 v2, 0x8

    goto :goto_2

    .line 181
    .end local v28           #container:Landroid/view/ViewGroup$LayoutParams;
    :cond_7
    const-string v2, "CallDetailHistoryAdapter"

    const-string v3, "callAndSmsContainer is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 188
    .end local v20           #callAndSmsContainer:Landroid/view/View;
    .end local v36           #header:Landroid/view/View;
    :cond_8
    if-nez p2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_f

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040015

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    .line 195
    .local v45, result:Landroid/view/View;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mPhoneCallDetails:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    add-int/lit8 v3, p1, -0x1

    aget-object v33, v2, v3

    .line 196
    .local v33, details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const v2, 0x7f090083

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;

    .line 199
    .local v24, callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    const v2, 0x7f090084

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 200
    .local v21, callTime:Landroid/widget/TextView;
    const v2, 0x7f090089

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/ImageView;

    .line 201
    .local v37, logType:Landroid/widget/ImageView;
    const v2, 0x7f09008b

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/TextView;

    .line 202
    .local v35, durationView:Landroid/widget/TextView;
    const v2, 0x7f090081

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 203
    .local v32, detail_date:Landroid/widget/TextView;
    const/16 v47, 0x0

    .line 204
    .local v47, simcardImage:Landroid/widget/ImageView;
    const/16 v34, 0x0

    .line 207
    .local v34, durationDescription:Landroid/widget/TextView;
    const/16 v31, 0x0

    .line 208
    .local v31, detailRemindMeLayout:Landroid/widget/LinearLayout;
    const/16 v29, 0x0

    .line 209
    .local v29, detailRemindMeButtonOff:Landroid/widget/Button;
    const/16 v30, 0x0

    .line 210
    .local v30, detailRemindMeButtonOn:Landroid/widget/Button;
    const v2, 0x7f090090

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .line 212
    .local v49, view:Landroid/view/View;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 215
    new-instance v44, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct/range {v44 .. v44}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    .line 216
    .local v44, mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v2

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->isVoLTEEnabled:Z

    .line 219
    .end local v44           #mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;
    :cond_9
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 221
    :cond_a
    const v2, 0x7f09008a

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    .end local v47           #simcardImage:Landroid/widget/ImageView;
    check-cast v47, Landroid/widget/ImageView;

    .line 224
    .restart local v47       #simcardImage:Landroid/widget/ImageView;
    :cond_b
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 225
    const v2, 0x7f090085

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    .end local v31           #detailRemindMeLayout:Landroid/widget/LinearLayout;
    check-cast v31, Landroid/widget/LinearLayout;

    .line 226
    .restart local v31       #detailRemindMeLayout:Landroid/widget/LinearLayout;
    const v2, 0x7f090087

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .end local v29           #detailRemindMeButtonOff:Landroid/widget/Button;
    check-cast v29, Landroid/widget/Button;

    .line 227
    .restart local v29       #detailRemindMeButtonOff:Landroid/widget/Button;
    const v2, 0x7f090088

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    .end local v30           #detailRemindMeButtonOn:Landroid/widget/Button;
    check-cast v30, Landroid/widget/Button;

    .line 229
    .restart local v30       #detailRemindMeButtonOn:Landroid/widget/Button;
    :cond_c
    const v2, 0x7f090091

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 231
    .local v27, cdnipNumberView:Landroid/widget/TextView;
    const/16 v2, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_d

    .line 234
    const/16 v39, 0x0

    .line 235
    .local v39, mDateText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v2, v10, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v38

    .line 237
    .local v38, mDateFormat:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 246
    :goto_5
    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .end local v38           #mDateFormat:Ljava/lang/CharSequence;
    .end local v39           #mDateText:Ljava/lang/String;
    :cond_d
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_e

    .line 250
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "details : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_e
    if-nez v33, :cond_16

    .line 253
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 188
    .end local v21           #callTime:Landroid/widget/TextView;
    .end local v24           #callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .end local v27           #cdnipNumberView:Landroid/widget/TextView;
    .end local v29           #detailRemindMeButtonOff:Landroid/widget/Button;
    .end local v30           #detailRemindMeButtonOn:Landroid/widget/Button;
    .end local v31           #detailRemindMeLayout:Landroid/widget/LinearLayout;
    .end local v32           #detail_date:Landroid/widget/TextView;
    .end local v33           #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .end local v34           #durationDescription:Landroid/widget/TextView;
    .end local v35           #durationView:Landroid/widget/TextView;
    .end local v37           #logType:Landroid/widget/ImageView;
    .end local v45           #result:Landroid/view/View;
    .end local v47           #simcardImage:Landroid/widget/ImageView;
    .end local v49           #view:Landroid/view/View;
    :cond_f
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040014

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040013

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    goto/16 :goto_4

    :cond_11
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040010

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04000f

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v45

    goto/16 :goto_4

    :cond_13
    move-object/from16 v45, p2

    goto/16 :goto_4

    .line 241
    .restart local v21       #callTime:Landroid/widget/TextView;
    .restart local v24       #callTypeIconView:Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;
    .restart local v27       #cdnipNumberView:Landroid/widget/TextView;
    .restart local v29       #detailRemindMeButtonOff:Landroid/widget/Button;
    .restart local v30       #detailRemindMeButtonOn:Landroid/widget/Button;
    .restart local v31       #detailRemindMeLayout:Landroid/widget/LinearLayout;
    .restart local v32       #detail_date:Landroid/widget/TextView;
    .restart local v33       #details:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .restart local v34       #durationDescription:Landroid/widget/TextView;
    .restart local v35       #durationView:Landroid/widget/TextView;
    .restart local v37       #logType:Landroid/widget/ImageView;
    .restart local v38       #mDateFormat:Ljava/lang/CharSequence;
    .restart local v39       #mDateText:Ljava/lang/String;
    .restart local v45       #result:Landroid/view/View;
    .restart local v47       #simcardImage:Landroid/widget/ImageView;
    .restart local v49       #view:Landroid/view/View;
    :cond_14
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const-wide/32 v10, 0x5265c00

    add-long/2addr v2, v10

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_5

    .line 244
    :cond_15
    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_5

    .line 255
    .end local v38           #mDateFormat:Ljava/lang/CharSequence;
    .end local v39           #mDateText:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v3, 0x0

    aget v23, v2, v3

    .line 256
    .local v23, callType:I
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->clear()V

    .line 257
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallTypeIconsView;->add(I)V

    .line 259
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    sparse-switch v2, :sswitch_data_0

    .line 345
    :cond_17
    :goto_6
    const-string v2, "ctc_dual_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 346
    move-object/from16 v0, v33

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simnum:I

    move/from16 v48, v0

    .line 347
    .local v48, simcardIndx:I
    const-string v2, "feature_chn_duos"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "feature_apt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 348
    :cond_18
    const/4 v2, 0x1

    move/from16 v0, v48

    if-ne v0, v2, :cond_32

    .line 349
    if-eqz v47, :cond_19

    .line 350
    sget v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->iconIndexCDMA:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    .end local v48           #simcardIndx:I
    :cond_19
    :goto_7
    const-string v2, "feature_common_dsds_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 389
    move-object/from16 v0, v33

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    move/from16 v46, v0

    .line 390
    .local v46, simcardId:I
    sget-boolean v2, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v2, :cond_1a

    const-string v2, "feature_easy_mode"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const-string v2, "feature_common_dsds_cdma_gsm_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 392
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move/from16 v0, v46

    invoke-static {v2, v0}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    .end local v46           #simcardId:I
    :cond_1d
    const-string v2, "feature_remind_me_later_support "

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 397
    move-object/from16 v0, v33

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    move/from16 v43, v0

    .line 398
    .local v43, mRemindMeLaterSet:I
    move-object/from16 v0, v33

    iget v6, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->id:I

    .line 399
    .local v6, mId:I
    move-object/from16 v0, v33

    iget-wide v8, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    .line 400
    .local v8, mDate:J
    move-object/from16 v40, v31

    .line 401
    .local v40, mDetailRemindMeLayout:Landroid/widget/LinearLayout;
    move-object/from16 v5, v29

    .line 402
    .local v5, mDetailRemindMeButtonOff:Landroid/widget/Button;
    move-object/from16 v4, v30

    .line 403
    .local v4, mDetailRemindMeButtonOn:Landroid/widget/Button;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, mNumber:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v43

    if-ne v0, v2, :cond_39

    .line 406
    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 407
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_38

    .line 411
    const/4 v2, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 412
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;Landroid/widget/Button;Landroid/widget/Button;ILjava/lang/String;J)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    .end local v4           #mDetailRemindMeButtonOn:Landroid/widget/Button;
    .end local v5           #mDetailRemindMeButtonOff:Landroid/widget/Button;
    .end local v6           #mId:I
    .end local v7           #mNumber:Ljava/lang/String;
    .end local v8           #mDate:J
    .end local v40           #mDetailRemindMeLayout:Landroid/widget/LinearLayout;
    .end local v43           #mRemindMeLaterSet:I
    :cond_1e
    :goto_8
    const-string v2, "ctc_roaming_timezone"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->getTimeDisplayScheme(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3c

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v3, 0x101

    const-string v12, "Asia/Shanghai"

    invoke-static {v2, v10, v11, v3, v12}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :goto_9
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 513
    const/16 v19, 0x15

    .line 514
    .local v19, MESSAGE_CALL_TYPE:I
    const/16 v18, 0x16

    .line 516
    .local v18, CMF_CALL_TYPE:I
    const-string v22, ""

    .line 518
    .local v22, callTimeText:Ljava/lang/String;
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3d

    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_3d

    .line 520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0d038f

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 528
    :cond_1f
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    .end local v18           #CMF_CALL_TYPE:I
    .end local v19           #MESSAGE_CALL_TYPE:I
    .end local v22           #callTimeText:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->adjustListItemLayoutByFontSize(Landroid/view/View;)V

    .line 533
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_21

    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3f

    .line 534
    :cond_21
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    :cond_22
    :goto_b
    const-string v2, "disable_call_duration_information"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 590
    const/16 v2, 0x8

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 593
    :cond_23
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 594
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_24

    .line 595
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x44c

    if-ne v2, v3, :cond_48

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    if-eqz v2, :cond_48

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mRcsDetailViewSharedFile:Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;

    move-object/from16 v0, v33

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->sharedFilePath:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/app/contacts/model/rcs/RcsDetailViewSharedFile;->SetDataAndAction(Landroid/view/View;Ljava/lang/String;)V

    .line 604
    :cond_24
    :goto_c
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->DBG:Z

    if-eqz v2, :cond_25

    .line 605
    const-string v2, "CallDetailHistoryAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCount : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", position : "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", time :"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    iget-wide v11, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 609
    const v2, 0x7f090084

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 612
    :cond_26
    const v2, 0x7f09008c

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v36, v45

    .line 613
    goto/16 :goto_1

    .line 261
    :sswitch_0
    const v2, 0x7f020597

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 264
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callTypes:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_6

    .line 270
    :sswitch_1
    const v2, 0x7f02058f

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 274
    :sswitch_2
    const v2, 0x7f020586

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 280
    :sswitch_3
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 281
    const v2, 0x7f020596

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 282
    :cond_27
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 283
    const v2, 0x7f020594

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 284
    :cond_28
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 285
    const v2, 0x7f020595

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 287
    :cond_29
    const v2, 0x7f020593

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 291
    :sswitch_4
    const v2, 0x7f020587

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 294
    :sswitch_5
    const v2, 0x7f02059c

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 297
    :sswitch_6
    const v2, 0x7f02057e

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 300
    :sswitch_7
    const v2, 0x7f02057d

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 303
    :sswitch_8
    const v2, 0x7f020588

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 306
    :sswitch_9
    const-string v2, "feature_cdma_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "feature_gsm_layout"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 307
    :cond_2a
    const-string v2, "feature_vzw"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 308
    const v2, 0x7f020592

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 310
    :cond_2b
    const-string v2, "feature_att"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 311
    const v2, 0x7f020591

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 314
    :cond_2c
    const v2, 0x7f020590

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 318
    :cond_2d
    const v2, 0x7f020590

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 321
    :sswitch_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 322
    const v2, 0x7f02058c

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :cond_2e
    :sswitch_b
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 327
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 328
    const v2, 0x7f02059b

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 330
    :cond_2f
    const-string v2, "feature_kt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 331
    const v2, 0x7f020598

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 333
    :cond_30
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 334
    const v2, 0x7f020599

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 337
    :cond_31
    const v2, 0x7f02059a

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 354
    .restart local v48       #simcardIndx:I
    :cond_32
    const/4 v2, 0x2

    move/from16 v0, v48

    if-ne v0, v2, :cond_34

    .line 355
    if-eqz v47, :cond_19

    .line 356
    const-string v2, "ril.ICC2_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_33

    .line 357
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :goto_d
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 359
    :cond_33
    const-string v2, "gsm.sim.icon2"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_d

    .line 364
    :cond_34
    if-eqz v47, :cond_19

    .line 365
    const-string v2, "ril.ICC_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_35

    const-string v2, "ril.ICC2_TYPE"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_35

    .line 367
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    :goto_e
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 369
    :cond_35
    const-string v2, "gsm.sim.icon.dual"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->setSimCardIcon(I)I

    move-result v2

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_e

    .line 374
    :cond_36
    const/4 v2, 0x2

    move/from16 v0, v48

    if-ne v0, v2, :cond_37

    .line 375
    if-eqz v47, :cond_19

    .line 376
    const v2, 0x7f020617

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 377
    const/4 v2, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 381
    :cond_37
    if-eqz v47, :cond_19

    .line 382
    const v2, 0x7f020617

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    const/16 v2, 0x8

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 447
    .end local v48           #simcardIndx:I
    .restart local v4       #mDetailRemindMeButtonOn:Landroid/widget/Button;
    .restart local v5       #mDetailRemindMeButtonOff:Landroid/widget/Button;
    .restart local v6       #mId:I
    .restart local v7       #mNumber:Ljava/lang/String;
    .restart local v8       #mDate:J
    .restart local v40       #mDetailRemindMeLayout:Landroid/widget/LinearLayout;
    .restart local v43       #mRemindMeLaterSet:I
    :cond_38
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 448
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_8

    .line 450
    :cond_39
    const/4 v2, 0x2

    move/from16 v0, v43

    if-ne v0, v2, :cond_3b

    .line 451
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 452
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 453
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_3a

    .line 456
    const/4 v2, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 457
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$3;

    move-object/from16 v11, p0

    move-object v12, v5

    move-object v13, v4

    move v14, v6

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;Landroid/widget/Button;Landroid/widget/Button;ILjava/lang/String;J)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 490
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setClickable(Z)V

    .line 491
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_8

    .line 495
    :cond_3b
    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 496
    const/16 v2, 0x8

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 506
    .end local v4           #mDetailRemindMeButtonOn:Landroid/widget/Button;
    .end local v5           #mDetailRemindMeButtonOff:Landroid/widget/Button;
    .end local v6           #mId:I
    .end local v7           #mNumber:Ljava/lang/String;
    .end local v8           #mDate:J
    .end local v40           #mDetailRemindMeLayout:Landroid/widget/LinearLayout;
    .end local v43           #mRemindMeLaterSet:I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v33

    iget-wide v10, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->date:J

    const/16 v3, 0x101

    invoke-static {v2, v10, v11, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 521
    .restart local v18       #CMF_CALL_TYPE:I
    .restart local v19       #MESSAGE_CALL_TYPE:I
    .restart local v22       #callTimeText:Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_3e

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0d038e

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 523
    :cond_3e
    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->logType:I

    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_1f

    move-object/from16 v0, v33

    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->serviceType:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1f

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0d03ba

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_a

    .line 536
    .end local v18           #CMF_CALL_TYPE:I
    .end local v19           #MESSAGE_CALL_TYPE:I
    .end local v22           #callTimeText:Ljava/lang/String;
    :cond_3f
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 537
    const/16 v42, 0x0

    .line 538
    .local v42, mDurationDescription:Ljava/lang/String;
    const/16 v41, 0x0

    .line 552
    .local v41, mDuration:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_40

    const/4 v2, 0x3

    move/from16 v0, v23

    if-eq v0, v2, :cond_40

    const/4 v2, 0x5

    move/from16 v0, v23

    if-eq v0, v2, :cond_40

    const/4 v2, 0x6

    move/from16 v0, v23

    if-ne v0, v2, :cond_41

    .line 554
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 564
    :goto_f
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v41

    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 556
    :cond_41
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->callOutDuraton:J

    move-wide/from16 v25, v0

    .line 557
    .local v25, call_out_duration:J
    const-wide/16 v2, 0x0

    cmp-long v2, v25, v2

    if-eqz v2, :cond_42

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    goto :goto_f

    .line 561
    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    goto :goto_f

    .line 567
    .end local v25           #call_out_duration:J
    .end local v41           #mDuration:Ljava/lang/String;
    .end local v42           #mDurationDescription:Ljava/lang/String;
    :cond_43
    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 568
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->bDeleteView:Z

    if-nez v2, :cond_22

    .line 570
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    if-eqz v2, :cond_44

    .line 571
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 572
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->cdnipNumber:Ljava/lang/String;

    const-string v3, "-"

    const-string v10, ""

    invoke-virtual {v2, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 574
    :cond_44
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 578
    :cond_45
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-nez v2, :cond_47

    .line 579
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_46

    .line 580
    const v2, 0x7f0d034b

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 582
    :cond_46
    const v2, 0x7f0d034a

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 584
    :cond_47
    move-object/from16 v0, v33

    iget-wide v2, v0, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->duration:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 598
    :cond_48
    const/4 v2, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, v49

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_c

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x78 -> :sswitch_6
        0xc8 -> :sswitch_8
        0x12c -> :sswitch_9
        0x1f4 -> :sswitch_3
        0x1fe -> :sswitch_7
        0x320 -> :sswitch_4
        0x384 -> :sswitch_5
        0x3e8 -> :sswitch_b
        0x44c -> :sswitch_a
    .end sparse-switch

    .line 264
    :sswitch_data_1
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xe -> :sswitch_1
        0xf -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x2

    return v0
.end method
