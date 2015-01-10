.class public Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;
.super Landroid/app/Activity;
.source "CallDurationActivity.java"


# instance fields
.field private final DURATION_PROJ:[Ljava/lang/String;

.field private final DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

.field private FMC_MODE:Z

.field private mSimId:I

.field simNumber:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    .line 53
    iput v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    .line 105
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "last_voice"

    aput-object v1, v0, v4

    const-string v1, "last_video"

    aput-object v1, v0, v5

    const-string v1, "last_voip"

    aput-object v1, v0, v6

    const-string v1, "last_volte"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dial_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dial_volte"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "rece_volte"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "all_volte"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    .line 112
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "last_voice"

    aput-object v1, v0, v4

    const-string v1, "last_video"

    aput-object v1, v0, v5

    const-string v1, "last_voip"

    aput-object v1, v0, v6

    const-string v1, "dial_voice"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dial_voip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rece_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "all_video"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "all_voip"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "last_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "dial_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "dial_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rece_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rece_video_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "all_voice_sim2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "all_video_sim2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 135
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 136
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 138
    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 140
    :cond_0
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 679
    const-wide/16 v1, 0x0

    .line 680
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 681
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 683
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 684
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 685
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 687
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 688
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 689
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 691
    :cond_1
    move-wide v5, p1

    .line 693
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 694
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 695
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 697
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 698
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 700
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 701
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 703
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 704
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 706
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 707
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 709
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 637
    return-void
.end method

.method private resetDurationTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 522
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 525
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 534
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    :goto_0
    const-string v1, "feature_common_dsds_support "

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    if-nez v1, :cond_2

    .line 571
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    :goto_1
    return-void

    .line 538
    :cond_0
    const-string v1, "all_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v1, "all_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    const-string v1, "last_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v1, "last_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v1, "dial_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v1, "dial_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 547
    const-string v1, "rece_video_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v1, "rece_voice_sim2"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 551
    :cond_1
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v1, "all_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v1, "all_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    const-string v1, "last_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 558
    const-string v1, "last_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v1, "dial_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    const-string v1, "dial_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v1, "rece_voip"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v1, "rece_volte"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 573
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration_sim2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 576
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private setClearTime()V
    .locals 4

    .prologue
    .line 640
    const/4 v1, 0x0

    .line 641
    .local v1, voiceCallNumber:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 642
    .local v0, videoCallNumber:Landroid/widget/TextView;
    const/4 v2, 0x0

    .line 644
    .local v2, voipNumber:Landroid/widget/TextView;
    const v3, 0x7f090097

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 645
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f09009a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 646
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f09009d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 648
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const v3, 0x7f09009f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 653
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900a2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 654
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900a5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 656
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    const v3, 0x7f0900a7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 661
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900aa

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 662
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900ad

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 664
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const v3, 0x7f0900af

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 669
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900b2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 670
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900b5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #voipNumber:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 672
    .restart local v2       #voipNumber:Landroid/widget/TextView;
    const-string v3, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    const-string v3, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    const-string v3, "00:00:00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 43
    .parameter "savedInstanceState"

    .prologue
    .line 189
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const v3, 0x7f040018

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 193
    const v3, 0x7f0d033b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 195
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->configureActionBar()V

    .line 197
    const/16 v40, 0x0

    .line 198
    .local v40, voiceCallNumber:Landroid/widget/TextView;
    const/16 v39, 0x0

    .line 199
    .local v39, videoCallText:Landroid/widget/TextView;
    const/16 v38, 0x0

    .line 200
    .local v38, videoCallNumber:Landroid/widget/TextView;
    const/16 v37, 0x0

    .line 201
    .local v37, videoCall:Landroid/widget/RelativeLayout;
    const/16 v42, 0x0

    .line 202
    .local v42, voipText:Landroid/widget/TextView;
    const/16 v41, 0x0

    .line 204
    .local v41, voipNumber:Landroid/widget/TextView;
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 206
    .local v10, intent:Landroid/content/Intent;
    const-string v3, "CallDurationTab"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    .line 209
    .end local v10           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v9, 0x0

    .line 210
    .local v9, c:Landroid/database/Cursor;
    const-string v3, "feature_common_dsds_support "

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CallDurationTab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    .line 213
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->mSimId:I

    if-nez v3, :cond_1

    .line 214
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://logs/duration"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 228
    :goto_0
    if-nez v9, :cond_4

    .line 229
    const-string v3, "Duration"

    const-string v4, "cursor is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_1
    return-void

    .line 217
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://logs/duration_sim2"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 221
    :cond_2
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://logs/duration"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ_CTC_DUOS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 225
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://logs/duration"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 232
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    const-wide/16 v27, 0x0

    .line 234
    .local v27, sum_lastvoice:J
    const-wide/16 v25, 0x0

    .line 235
    .local v25, sum_lastvideo:J
    const-wide/16 v29, 0x0

    .line 236
    .local v29, sum_lastvoip:J
    const-wide/16 v21, 0x0

    .line 237
    .local v21, sum_dialvoice:J
    const-wide/16 v19, 0x0

    .line 238
    .local v19, sum_dialvideo:J
    const-wide/16 v23, 0x0

    .line 239
    .local v23, sum_dialvoip:J
    const-wide/16 v33, 0x0

    .line 240
    .local v33, sum_recevoice:J
    const-wide/16 v31, 0x0

    .line 241
    .local v31, sum_recevideo:J
    const-wide/16 v35, 0x0

    .line 242
    .local v35, sum_recevoip:J
    const-wide/16 v15, 0x0

    .line 243
    .local v15, sum_allvoice:J
    const-wide/16 v13, 0x0

    .line 244
    .local v13, sum_allvideo:J
    const-wide/16 v17, 0x0

    .line 245
    .local v17, sum_allvoip:J
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 247
    const-string v3, "last_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 251
    const-string v3, "dial_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 255
    const-string v3, "rece_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 259
    const-string v3, "all_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 278
    :cond_5
    :goto_2
    const-wide/16 v11, 0x0

    .line 283
    .local v11, sumDuration:J
    const v3, 0x7f090097

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .end local v40           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v40, Landroid/widget/TextView;

    .line 289
    .restart local v40       #voiceCallNumber:Landroid/widget/TextView;
    const-string v3, "last_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 292
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 293
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :goto_3
    const v3, 0x7f090099

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .end local v39           #videoCallText:Landroid/widget/TextView;
    check-cast v39, Landroid/widget/TextView;

    .line 303
    .restart local v39       #videoCallText:Landroid/widget/TextView;
    const v3, 0x7f09009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #videoCallNumber:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 305
    .restart local v38       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f090098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 306
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 310
    const v3, 0x7f090098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 311
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 320
    :cond_6
    :goto_4
    const-string v3, "last_video"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 321
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v3, 0x7f09009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .end local v42           #voipText:Landroid/widget/TextView;
    check-cast v42, Landroid/widget/TextView;

    .line 327
    .restart local v42       #voipText:Landroid/widget/TextView;
    const v3, 0x7f09009d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    .end local v41           #voipNumber:Landroid/widget/TextView;
    check-cast v41, Landroid/widget/TextView;

    .line 328
    .restart local v41       #voipNumber:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_10

    .line 329
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 330
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    const v3, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const v3, 0x7f0900a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v3, 0x7f0900ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 334
    const v3, 0x7f09009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :goto_5
    const-string v3, "last_voip"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 343
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v3, 0x7f09009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .end local v40           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v40, Landroid/widget/TextView;

    .line 354
    .restart local v40       #voiceCallNumber:Landroid/widget/TextView;
    const-string v3, "dial_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 357
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 358
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_6
    const v3, 0x7f0900a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .end local v39           #videoCallText:Landroid/widget/TextView;
    check-cast v39, Landroid/widget/TextView;

    .line 366
    .restart local v39       #videoCallText:Landroid/widget/TextView;
    const v3, 0x7f0900a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #videoCallNumber:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 368
    .restart local v38       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 369
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 374
    const v3, 0x7f0900a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 375
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :cond_7
    :goto_7
    const-string v3, "dial_video"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 385
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    const v3, 0x7f0900a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .end local v42           #voipText:Landroid/widget/TextView;
    check-cast v42, Landroid/widget/TextView;

    .line 391
    .restart local v42       #voipText:Landroid/widget/TextView;
    const v3, 0x7f0900a5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    .end local v41           #voipNumber:Landroid/widget/TextView;
    check-cast v41, Landroid/widget/TextView;

    .line 392
    .restart local v41       #voipNumber:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_8

    .line 393
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 394
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_8
    const-string v3, "dial_voip"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v3, 0x7f0900a7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .end local v40           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v40, Landroid/widget/TextView;

    .line 409
    .restart local v40       #voiceCallNumber:Landroid/widget/TextView;
    const-string v3, "rece_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 412
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 413
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :goto_8
    const v3, 0x7f0900a9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .end local v39           #videoCallText:Landroid/widget/TextView;
    check-cast v39, Landroid/widget/TextView;

    .line 422
    .restart local v39       #videoCallText:Landroid/widget/TextView;
    const v3, 0x7f0900aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #videoCallNumber:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 424
    .restart local v38       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 425
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 429
    const v3, 0x7f0900a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 430
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_9
    :goto_9
    const-string v3, "rece_video"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 440
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const v3, 0x7f0900ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .end local v42           #voipText:Landroid/widget/TextView;
    check-cast v42, Landroid/widget/TextView;

    .line 446
    .restart local v42       #voipText:Landroid/widget/TextView;
    const v3, 0x7f0900ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    .end local v41           #voipNumber:Landroid/widget/TextView;
    check-cast v41, Landroid/widget/TextView;

    .line 447
    .restart local v41       #voipNumber:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_a

    .line 448
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 449
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_a
    const-string v3, "rece_voip"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 453
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const v3, 0x7f0900af

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    .end local v40           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v40, Landroid/widget/TextView;

    .line 459
    .restart local v40       #voiceCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v39

    .end local v39           #videoCallText:Landroid/widget/TextView;
    check-cast v39, Landroid/widget/TextView;

    .line 460
    .restart local v39       #videoCallText:Landroid/widget/TextView;
    const v3, 0x7f0900b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .end local v38           #videoCallNumber:Landroid/widget/TextView;
    check-cast v38, Landroid/widget/TextView;

    .line 461
    .restart local v38       #videoCallNumber:Landroid/widget/TextView;
    const v3, 0x7f0900b4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v42

    .end local v42           #voipText:Landroid/widget/TextView;
    check-cast v42, Landroid/widget/TextView;

    .line 462
    .restart local v42       #voipText:Landroid/widget/TextView;
    const v3, 0x7f0900b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    .end local v41           #voipNumber:Landroid/widget/TextView;
    check-cast v41, Landroid/widget/TextView;

    .line 465
    .restart local v41       #voipNumber:Landroid/widget/TextView;
    const v3, 0x7f0900b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 466
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 470
    const v3, 0x7f0900b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 471
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->FMC_MODE:Z

    if-nez v3, :cond_c

    .line 481
    const/16 v3, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 482
    const/16 v3, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_c
    const-string v3, "all_voice"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 492
    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 493
    add-long v3, v21, v33

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :goto_b
    const-string v3, "all_video"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 499
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    const-string v3, "all_voip"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 502
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 262
    .end local v11           #sumDuration:J
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 263
    const-string v3, "last_voice_sim2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 266
    const-string v3, "dial_voice_sim2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 269
    const-string v3, "rece_voice_sim2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 272
    const-string v3, "all_voice_sim2"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto/16 :goto_2

    .line 295
    .restart local v11       #sumDuration:J
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 313
    :cond_f
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 314
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 315
    const v3, 0x7f090098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 316
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 336
    :cond_10
    const v3, 0x7f0900b3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 337
    const v3, 0x7f0900a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    const v3, 0x7f0900ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v3, 0x7f09009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 360
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 377
    :cond_12
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 378
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 379
    const v3, 0x7f0900a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 380
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 415
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 432
    :cond_14
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 434
    const v3, 0x7f0900a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 435
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 473
    :cond_15
    const-string v3, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v3}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 474
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->simNumber:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 475
    const v3, 0x7f0900b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v37

    .end local v37           #videoCall:Landroid/widget/RelativeLayout;
    check-cast v37, Landroid/widget/RelativeLayout;

    .line 476
    .restart local v37       #videoCall:Landroid/widget/RelativeLayout;
    const/16 v3, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 495
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 582
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 584
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 585
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 586
    const v1, 0x7f090395

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    .line 587
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 515
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 516
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 607
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 594
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->resetDurationTable()V

    .line 595
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setClearTime()V

    goto :goto_0

    .line 599
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->onHomeSelected()V

    goto :goto_0

    .line 592
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f090395 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 511
    return-void
.end method
