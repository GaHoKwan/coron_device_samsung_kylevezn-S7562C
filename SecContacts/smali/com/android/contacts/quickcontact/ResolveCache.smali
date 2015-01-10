.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$1;,
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    .line 98
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    return-void
.end method

.method public static declared-synchronized flush()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    const-class v1, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 341
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 265
    iget-object v9, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v10, 0x1

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 268
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 270
    iget v9, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v10, 0xfff

    and-int/2addr v9, v10

    if-nez v9, :cond_0

    move v1, v7

    .line 272
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    .line 292
    .end local v1           #foundDisambig:Z
    .end local v2           #foundResolve:Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .restart local v2       #foundResolve:Landroid/content/pm/ResolveInfo;
    :cond_0
    move v1, v8

    .line 270
    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    .line 280
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 281
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v6, v7

    .line 282
    .local v6, isSystem:Z
    :goto_3
    sget-object v9, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 285
    .local v5, isPrefer:Z
    if-eqz v5, :cond_4

    move-object v2, v4

    .line 286
    goto :goto_1

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v8

    .line 281
    goto :goto_3

    .line 287
    .restart local v5       #isPrefer:Z
    .restart local v6       #isSystem:Z
    :cond_4
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    .line 288
    move-object v0, v4

    goto :goto_2

    .line 292
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_5
    if-eqz v0, :cond_6

    .end local v0           #firstSystem:Landroid/content/pm/ResolveInfo;
    :goto_4
    move-object v2, v0

    goto :goto_1

    .restart local v0       #firstSystem:Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    move-object v0, v7

    goto :goto_4
.end method

.method public getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "action"

    .prologue
    .line 309
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 310
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, intentAction:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    const-string v5, "videocall"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 314
    .local v0, VTCallDialer:Z
    if-eqz v0, :cond_1

    .line 315
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    const v6, 0x7f0d033d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .end local v0           #VTCallDialer:Z
    :cond_0
    :goto_0
    return-object v1

    .line 320
    :cond_1
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 321
    .local v1, actionSubtitle:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v5

    iget-object v2, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 322
    .local v2, info:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_2

    .line 323
    iget-object v5, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 19
    .parameter "action"

    .prologue
    .line 107
    invoke-interface/range {p1 .. p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .line 109
    .local v5, entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    if-eqz v5, :cond_0

    iget-object v0, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v6, v5

    .line 252
    .end local v5           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .local v6, entry:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 111
    .end local v6           #entry:Ljava/lang/Object;
    .restart local v5       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    :cond_0
    new-instance v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .end local v5           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V

    .line 113
    .restart local v5       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    invoke-interface/range {p1 .. p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 114
    .local v9, intent:Landroid/content/Intent;
    const-string v17, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 116
    const/4 v9, 0x0

    .line 119
    :cond_1
    if-eqz v9, :cond_6

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/high16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 124
    .local v13, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v4, 0x0

    .line 125
    .local v4, bestResolve:Landroid/content/pm/ResolveInfo;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    .line 126
    .local v16, size:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 127
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 132
    .restart local v4       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 135
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    iput-object v4, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 136
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 139
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 140
    .local v10, intentAction:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 141
    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 142
    const-string v17, "videocall"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 143
    .local v12, mVTCallDialer:Z
    if-eqz v12, :cond_b

    .line 146
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 147
    const-string v17, "feature_kor"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 148
    const-string v17, "feature_skt"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020390

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 162
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    :goto_2
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 176
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v12           #mVTCallDialer:Z
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_EnableIPCall"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 179
    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 180
    const-string v17, "ipcall"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 181
    .local v11, mIPCallDialer:Z
    if-eqz v11, :cond_5

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020387

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 184
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 191
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #mIPCallDialer:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 192
    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 209
    const-string v17, "simnum"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 210
    .local v15, simNum:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v17

    const-string v18, "vnd.sec.contact.sim"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(Ljava/lang/String;)I

    move-result v8

    .line 213
    .local v8, iconRes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 214
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 251
    .end local v4           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #iconRes:I
    .end local v10           #intentAction:Ljava/lang/String;
    .end local v13           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v15           #simNum:I
    .end local v16           #size:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    .line 252
    .restart local v6       #entry:Ljava/lang/Object;
    goto/16 :goto_0

    .line 128
    .end local v6           #entry:Ljava/lang/Object;
    .restart local v4       #bestResolve:Landroid/content/pm/ResolveInfo;
    .restart local v13       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16       #size:I
    :cond_7
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    goto/16 :goto_1

    .line 151
    .restart local v10       #intentAction:Ljava/lang/String;
    .restart local v12       #mVTCallDialer:Z
    :cond_8
    const-string v17, "feature_kt"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02038e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 155
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02038f

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 159
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02038d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 166
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 167
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020386

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 215
    .end local v12           #mVTCallDialer:Z
    .restart local v15       #simNum:I
    :cond_c
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v17

    const-string v18, "vnd.sec.contact.sim2"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimPopupIcon(Ljava/lang/String;)I

    move-result v8

    .line 218
    .restart local v8       #iconRes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 219
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 225
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #iconRes:I
    .end local v15           #simNum:I
    :cond_d
    const-string v17, "vnd.android.cursor.item/gsmcall-address"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "vnd.android.cursor.item/gsmcall2-address"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_e
    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, SIM_ZERO:I
    const/4 v2, 0x1

    .line 232
    .local v2, SIM_ONE:I
    const-string v17, "simSlot"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 238
    .restart local v15       #simNum:I
    if-nez v15, :cond_f

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(I)I

    move-result v8

    .line 240
    .restart local v8       #iconRes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 241
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 242
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #iconRes:I
    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(I)I

    move-result v8

    .line 244
    .restart local v8       #iconRes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 245
    .restart local v7       #icon:Landroid/graphics/drawable/Drawable;
    iput-object v7, v5, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4
.end method

.method public getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "action"

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
