.class Lcom/android/contacts/group/GroupBrowseListFragment$2;
.super Landroid/database/ContentObserver;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupBrowseListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter "selfChange"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 265
    const-string v0, "GroupBrowseListFragment"

    const-string v4, "onChange is called"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v0, "GroupBrowseListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selfChange is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 271
    const-string v0, "GroupBrowseListFragment"

    const-string v4, "resumed state. possible to query"

    invoke-static {v0, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "singlePhotoUpdateCheckValue"

    aput-object v0, v2, v8

    .line 275
    .local v2, PROJECTION:[Ljava/lang/String;
    const-string v0, "content://com.android.contacts/check_photo_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    .local v1, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 277
    .local v7, singlePhotoUpdateCheckValue:I
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #getter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 279
    .local v6, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_1

    .line 283
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 285
    if-nez v7, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment;->performGroupQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 289
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #singlePhotoUpdateCheckValue:I
    :cond_3
    const-string v0, "GroupBrowseListFragment"

    const-string v3, "Not resumed state. just set flag true"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$2;->this$0:Lcom/android/contacts/group/GroupBrowseListFragment;

    #setter for: Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z
    invoke-static {v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z

    goto :goto_0
.end method
