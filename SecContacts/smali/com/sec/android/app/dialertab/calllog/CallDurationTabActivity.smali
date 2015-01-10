.class public Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;
.super Landroid/app/TabActivity;
.source "CallDurationTabActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field public static final REGISTERINFO_URI:Landroid/net/Uri;

.field public static iconIndexCDMA:I

.field public static iconIndexGSM:I

.field private static mTabHost:Landroid/widget/TabHost;

.field public static simNameCDMA:Ljava/lang/String;

.field public static simNameGSM:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://com.sec.provider.simcardmanagement/registerinfo/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->REGISTERINFO_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "CDMA"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 41
    const-string v0, "GSM"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 30
    const-string v0, "CallDurationTabActivity"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 124
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 125
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 127
    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 129
    :cond_0
    return-void
.end method

.method private onHomeSelected()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 121
    return-void
.end method

.method private setSimCardIcon(I)I
    .locals 3
    .parameter "nIndex"

    .prologue
    .line 273
    const-string v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, buildcarrier:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 303
    const v0, 0x7f020629

    .line 306
    .local v0, Image:I
    :goto_0
    return v0

    .line 276
    .end local v0           #Image:I
    :pswitch_0
    const v0, 0x7f020629

    .line 277
    .restart local v0       #Image:I
    goto :goto_0

    .line 279
    .end local v0           #Image:I
    :pswitch_1
    const v0, 0x7f02062a

    .line 280
    .restart local v0       #Image:I
    goto :goto_0

    .line 282
    .end local v0           #Image:I
    :pswitch_2
    const-string v2, "hennessy3gduosctc"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    const v0, 0x7f020632

    .restart local v0       #Image:I
    goto :goto_0

    .line 285
    .end local v0           #Image:I
    :cond_0
    const v0, 0x7f02063a

    .line 286
    .restart local v0       #Image:I
    goto :goto_0

    .line 288
    .end local v0           #Image:I
    :pswitch_3
    const v0, 0x7f020646

    .line 289
    .restart local v0       #Image:I
    goto :goto_0

    .line 291
    .end local v0           #Image:I
    :pswitch_4
    const v0, 0x7f020631

    .line 292
    .restart local v0       #Image:I
    goto :goto_0

    .line 294
    .end local v0           #Image:I
    :pswitch_5
    const v0, 0x7f02064b

    .line 295
    .restart local v0       #Image:I
    goto :goto_0

    .line 297
    .end local v0           #Image:I
    :pswitch_6
    const v0, 0x7f020615

    .line 298
    .restart local v0       #Image:I
    goto :goto_0

    .line 300
    .end local v0           #Image:I
    :pswitch_7
    const v0, 0x7f020617

    .line 301
    .restart local v0       #Image:I
    goto :goto_0

    .line 274
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
    .end packed-switch
.end method

.method private setupSim1Tab()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim1"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 136
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    const-string v2, "CallDurationTab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 149
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 150
    return-void

    .line 143
    :cond_0
    invoke-static {p0, v4}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v4}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    const-string v2, "CallDurationTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method

.method private setupSim2Tab()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 154
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v1, "sim2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 155
    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setSimCardIcon(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    const-string v2, "CallDurationTab"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 168
    :goto_0
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 170
    return-void

    .line 162
    :cond_0
    invoke-static {p0, v4}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v4}, Lcom/sec/android/app/dialertab/DialerTabDualSIM;->getSimIcon(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v2, "CallDurationTab"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    goto :goto_0
.end method


# virtual methods
.method protected getSimCardInfo()V
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 181
    const-string v0, "ril.noti_sim_iccid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 182
    .local v10, cardIccIdSlot1:Ljava/lang/String;
    const-string v0, "ril.noti_sim_iccid2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, cardIccIdSlot2:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CARD_ICCID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, where1:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CARD_ICCID = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, where2:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_mode"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 187
    .local v13, dual_value:I
    const-string v0, "CallDurationTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dual_value: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-ne v13, v6, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND CARD_TYPE=\'CDMA\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND CARD_TYPE=\'GSM\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->REGISTERINFO_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 195
    .local v12, cdmaSimCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 196
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    :cond_1
    const-string v0, "card_name"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 199
    const-string v0, "icon_index"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 200
    const-string v0, "CallDurationTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq v13, v6, :cond_1

    .line 203
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 209
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->REGISTERINFO_URI:Landroid/net/Uri;

    move-object v6, v2

    move-object v8, v2

    move-object v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 210
    .local v14, gsmSimCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_6

    .line 211
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    :cond_3
    const-string v0, "card_name"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 214
    const-string v0, "icon_index"

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    .line 215
    const-string v0, "CallDurationTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "icon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    :cond_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 224
    :goto_1
    return-void

    .line 206
    .end local v14           #gsmSimCursor:Landroid/database/Cursor;
    :cond_5
    const-string v0, "CallDurationTabActivity"

    const-string v1, "cdma sim Registerinfo cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .restart local v14       #gsmSimCursor:Landroid/database/Cursor;
    :cond_6
    const-string v0, "CallDurationTabActivity"

    const-string v1, "gsm sim Registerinfo cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->mTabHost:Landroid/widget/TabHost;

    .line 50
    const-string v0, "feature_chn_duos"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "feature_chn_dual_mode_gsm_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "Home"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameCDMA:Ljava/lang/String;

    .line 53
    const-string v0, "Office"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->simNameGSM:Ljava/lang/String;

    .line 54
    const/4 v0, 0x4

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexCDMA:I

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->iconIndexGSM:I

    .line 57
    :cond_0
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->getSimCardInfo()V

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setupSim1Tab()V

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->setupSim2Tab()V

    .line 65
    const v0, 0x7f0d033b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->configureActionBar()V

    .line 68
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 95
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationTabActivity;->onHomeSelected()V

    .line 98
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/app/ActivityGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 175
    .local v0, mActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 178
    :cond_0
    return-void
.end method
