.class Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;
.super Landroid/database/ContentObserver;
.source "RcsContactListPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    .line 74
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mRcsStateObserver, onChange"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-boolean v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v4, :cond_1

    .line 77
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v5, "mRcsStateObserver, onChange, No need to query"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void

    .line 81
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget-object v4, v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 83
    .local v3, viewCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, v:Landroid/view/View;
    move-object v0, v2

    .line 84
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 85
    .local v0, cache:Lcom/android/contacts/list/ContactListItemView;
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;->this$0:Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    iget v5, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v6, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->queryRcs(ILandroid/net/Uri;Landroid/view/View;)V

    goto :goto_0
.end method
