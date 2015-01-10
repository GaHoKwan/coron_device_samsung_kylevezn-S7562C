.class public Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;
.super Ljava/lang/Object;
.source "RcsContactListPinner.java"


# static fields
.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field private mIsRcs:Z

.field mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedQuery:Z

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mRcsStateObserver:Landroid/database/ContentObserver;

.field mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "RcsContactListPinner"

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcs:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 90
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 111
    return-void
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 149
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 150
    .local v0, rcsCache:Lcom/android/contacts/list/ContactListItemView;
    iget-object v4, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 152
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v5, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    invoke-virtual {v4, v5}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 153
    if-eqz v2, :cond_0

    .line 154
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 155
    .local v1, removed:Landroid/view/View;
    if-nez v1, :cond_0

    .line 156
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v5, "View not present in cache"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v1           #removed:Landroid/view/View;
    :cond_0
    iput-object v3, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    .line 160
    iput v6, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconPosition:I

    .line 161
    iput v6, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    .line 162
    iput-object v3, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 167
    return-void

    .line 150
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4
    .parameter "serviceLookupUri"

    .prologue
    const/4 v3, 0x0

    .line 221
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isRcsInCache"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-nez p1, :cond_1

    .line 223
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 229
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 226
    .local v0, isRcs:Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 227
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public pinBindViewEnd(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 175
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinBindViewEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v1, :cond_1

    .line 178
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, onChange, No need to query"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 183
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 184
    .local v0, rcsCache:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, rcsCache.mRcsServiceLookupUri != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->queryRcs(ILandroid/net/Uri;Landroid/view/View;)V

    .line 187
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->updateView(Landroid/view/View;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 190
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, rcsCache.mRcsIconView != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public pinGetViewBeforeBindView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/net/Uri;)V
    .locals 3
    .parameter "position"
    .parameter "v"
    .parameter "parent"
    .parameter "contactUri"

    .prologue
    .line 131
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinGetViewBeforeBindView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez p4, :cond_0

    .line 146
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinGetViewBeforeBindView, contactUri is not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->recycleView(Landroid/view/View;)V

    move-object v0, p2

    .line 137
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 138
    .local v0, rcsCache:Lcom/android/contacts/list/ContactListItemView;
    iput p1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    .line 140
    invoke-static {p4}, Lcom/sec/android/app/contacts/model/rcs/UriUtils;->rcsServiceUriFromContactLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 142
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 280
    return-void
.end method

.method public pinOnPause()V
    .locals 5

    .prologue
    .line 263
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v4, "pinOnPause"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 267
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, v:Landroid/view/View;
    move-object v0, v2

    .line 268
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 269
    .local v0, cache:Lcom/android/contacts/list/ContactListItemView;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v4, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    invoke-virtual {v3, v4}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 274
    .end local v0           #cache:Lcom/android/contacts/list/ContactListItemView;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public pinOnResume()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 241
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnResume, No need to query"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .local v10, v:Landroid/view/View;
    move-object v8, v10

    .line 248
    check-cast v8, Lcom/android/contacts/list/ContactListItemView;

    .line 250
    .local v8, cache:Lcom/android/contacts/list/ContactListItemView;
    iget-object v0, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v1, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v2, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    iget-object v3, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    .end local v8           #cache:Lcom/android/contacts/list/ContactListItemView;
    .end local v10           #v:Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->RCS_STACK_STATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method queryRcs(ILandroid/net/Uri;Landroid/view/View;)V
    .locals 8
    .parameter "itemPosition"
    .parameter "serviceLookupUri"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 233
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryRcs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method updateView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 200
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 201
    .local v1, rcsCache:Lcom/android/contacts/list/ContactListItemView;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView, lookupUri is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 206
    .local v0, isRcs:Z
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 207
    if-eqz v0, :cond_1

    .line 208
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, isRCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_1
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, is not RCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, rcsCache.mRcsIconView == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
